<?php

namespace app\controllers;

use Yii;
use yii\filters\AccessControl;
use yii\filters\VerbFilter;
use app\components\AccessRule;
use app\models\LoginForm;
use app\models\Tempuser;
use app\models\User;
use app\models\Mood;
use app\models\UserSearch;
use app\models\Profile;
use app\models\Journal;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\web\UploadedFile;
use yii\helpers\VarDumper;
use yii\data\ActiveDataProvider;

/**
 * UserController implements the CRUD actions for User model.
 */
class UserController extends Controller {

    /**
     *
     * @var type string
     */
    public $defaultAction = 'login';

    public function behaviors() {
        return [
            'access' => [
                'class' => AccessControl::className(),
                'ruleConfig' => [
                    'class' => AccessRule::className(),
                ],
                'only' => ['logout', 'index', 'view', 'create', 'update', 'delete', 'profile', 'settings', 'dashboard', 'child'],
                'rules' => [
                    [
                        'actions' => ['logout', 'profile', 'settings',],
                        'allow' => true,
                        'roles' => ['@'] //all
                    ],
                    [
                        'actions' => ['index', 'view', 'create', 'update', 'delete', 'dashboard', 'child'],
                        'allow' => true,
                        'roles' => [0] //admin
                    ],
                    [
                        'actions' => ['family', 'dashboard'],
                        'allow' => true,
                        'roles' => [1, 2] //parent
                    ],
                    [
                        'actions' => ['child'],
                        'allow' => true,
                        'roles' => [3] //child
                    ],
                ],
            ],
            'verbs' => [
                'class' => VerbFilter::className(),
                'actions' => [
                    'delete' => ['post'],
                ],
            ],
        ];
    }

    /**
     * 
     * @return type
     */
    public function actions() {
        return [
            'error' => [
                'class' => 'yii\web\ErrorAction',
            ],
            'captcha' => [
                'class' => 'yii\captcha\CaptchaAction',
                'fixedVerifyCode' => YII_ENV_TEST ? 'testme' : null,
            ],
        ];
    }

    /**
     * Lists all User models.
     * @return mixed
     */
    public function actionIndex() {
        $searchModel = new UserSearch();
        $dataProvider = $searchModel->search(Yii::$app->request->queryParams);
        $user = $this->findModel(Yii::$app->user->id);

        return $this->render('index', [
                    'searchModel' => $searchModel,
                    'dataProvider' => $dataProvider,
        ]);
    }

    /**
     * Displays a single User model.
     * @param integer $id
     * @return mixed
     */
    public function actionView($id = null) {
        $id = $id == null ? \Yii::$app->user->id : $id;
        return $this->render('view', [
                    'model' => $this->findModel($id),
        ]);
    }

    /**
     * Creates a new TempUser model.
     * If creation is successful, the browser will be redirected to the 'payment' page.
     * @return mixed
     */
    public function actionSignup() {
        $model = new Tempuser();
        $model->started = date('Y-m-d h:i');
        if ($model->load(Yii::$app->request->post()) && $model->save()) {
            //var_dump($model->id); die;
            return $this->redirect(['payment', 'id' => $model->id]);
        }
        return $this->render('register', [
                    'model' => $model,
        ]);
    }

    /**
     * Make a Payment to Subscribe
     */
    public function actionPayment($id) {
        $model = Tempuser::findOne($id);

        if (Yii::$app->request->post()) {
            //cus_7iDI8bUtU39kbL, sub_7iDICaGE4xV7Tp
            \Stripe\Stripe::setApiKey(Yii::$app->params['stripeApiKey']);

            try {
                $customer = \Stripe\Customer::create(array(
                            'email' => $_POST['stripeEmail'],
                            'source' => $_POST['stripeToken'],
                            'plan' => Yii::$app->params['stripePlan']
                ));
                $customer = $customer->jsonSerialize();

                $user_id = $model->user_id == null ? $this->actionCreateParent($model) : $model->user_id;

                $payment = new \app\models\Payment();
                $payment->user_id = $user_id;
                $payment->subcription_id = $customer['subscriptions']['data'][0]['id'];
                $payment->customer_id = $customer['id'];
                $payment->ip_address = Yii::$app->request->userIP;
                $payment->amount = $customer['subscriptions']['data'][0]['plan']['amount'];
                $payment->status = 1;
                $payment->date = date('Y-m-d H:i', $customer['created']);
                $payment->save();
                Yii::$app->session->setFlash('success', 'Your subscription is success & Please sign in to continue. ');
                return $this->redirect(['user/login']);
            } catch (Exception $e) {
                var_dump($e);
                Yii::$app->session->setFlash('danger', 'Your payment was not received. Please try again. ');
            }
        }
        //\Stripe\Stripe::setApiKey(Yii::$app->params['stripeApiKey']);
        //$customer = \Stripe\Customer::retrieve("cus_7iDI8bUtU39kbL");
        //$customer = $customer->jsonSerialize();
        //VarDumper::dump($customer, 1000, true);
        //$subscription = $customer->subscriptions->retrieve("sub_7iDICaGE4xV7Tp");
        //VarDumper::dump($subscription->jsonSerialize(), 1000, true);//$customer->subscriptions->all()
        return $this->render('payment', [
                    'model' => $model,
        ]);
    }

    /**
     * Create a new User & Profile model from Tempuser after the payment succeeded
     */
    public function actionCreateParent($model) {
        //$model = Tempuser::findOne($id);
        //Create a user
        $user = new User();
        $user->identity = $model->email;
        $user->password = $model->password;
        $user->started = $model->started;
        $user->status = $user->parent_id = 0;
        $user->level = 1;
        $user->auth_key = Yii::$app->security->generateRandomString();
        $user->access_token = Yii::$app->security->generateRandomString(64);
        $user->save();
        //create a profile
        $profile = new Profile();
        $profile->user_id = $model->user_id = $user->id;
        $profile->label = $model->label;
        $profile->first_name = $model->first_name;
        $profile->last_name = $model->last_name;
        $profile->street = $model->street;
        $profile->area = $model->area;
        $profile->city = $model->city;
        $profile->zipcode = $model->zipcode;
        $profile->save();
        $model->save(false);
        //VarDumper::dump($model, 1000, true);die('cp');        
        Yii::$app->mailer->compose('@app/mail/templates/signup_parent', ['model' => $model])
                ->setFrom(['noreply@kidcrossing.com' => 'Kid Crossing'])
                ->setTo($model->email)
                ->setSubject('Activate Your Account')
                ->send();

        return $user->id;
    }

    /**
     * Activate user by confirming email 
     * @param type $token
     */
    public function actionActivate($token) {
        if ($user = User::findIdentityByAccessToken($token)) {
            if ($user->status == 1) {
                $msg = "You have already activated your Account!";
            } else {
                $user->status = 1;
                $user->save();
                $msg = "You have successfully activated your Account. Thanky You!";
            }
        }else{
            $msg = "You are an un authorised person!";
        }
            return $this->render('activate', ['message'=>$msg]);
    }

    /**
     * Create a new User & Profile model from Tempuser after the payment succeeded
     */
    public function actionSettings($id = null) {
        $user = $this->findModel($id);
        $model = $user->profile;
        return $this->render('profile', [
                    'model' => $model,
                    'user' => $user,
        ]);
    }

    /**
     * Show & Update User profile
     * @return type mixed
     */
    public function actionProfile($id) {
        $user = $this->findModel($id);
        $model = $user->profile;
        $image = $model->image;
        if ($model->load(Yii::$app->request->post())) {
            $file = UploadedFile::getInstance($model, 'image');
            if ($file != null) {
                $model->image = time() . '.' . $file->extension; //$file->name;
                $path = Yii::getAlias('@uploads/avatar/' . $model->image);
            } else {
                $model->image = $image;
            }
            if ($model->save()) {
                if ($file != null) {
                    $file->saveAs($path);
                }
                // form inputs are valid, do something here
                //return;
            }
        }

        return $this->render('profile', [
                    'model' => $model,
                    'user' => $user,
        ]);
    }

    /**
     * Create a new User & Profile model from Tempuser after the payment succeeded
     */
    public function actionFamily($id = null) {
        $model = Yii::$app->user->identity->profile;
        //Create a user
        $user = $id == null ? new User() : $this->findModel($id);
        //create a profile
        $profile = $id == null ? new Profile() : $user->profile;
        $profile->street = $model->street;
        $profile->area = $model->area;
        $profile->city = $model->city;
        $profile->zipcode = $model->zipcode;

        if (isset($_POST['User'], $_POST['Profile'])) {
            $user->attributes = $_POST['User'];
            $user->parent_id = Yii::$app->user->id;
            $user->status = 1;
            $user->level = 3;
            $user->auth_key = Yii::$app->security->generateRandomString();
            $user->access_token = Yii::$app->security->generateRandomString(64);
            $user->started = date('Y-m-d h:i');
            if ($user->validate())
                $user->save();

            $profile->attributes = $_POST['Profile'];
            $profile->user_id = $user->id;
            if ($profile->validate())
                $profile->save();

            Yii::$app->session->setFlash('success', 'Your Child\'s account is created successfully. ');
        }

        $DataProvider = new ActiveDataProvider([
            'query' => Yii::$app->user->identity->findFamily(),
            'pagination' => [
                'pageSize' => 20,
            ],
        ]);

        return $this->render('settings', [
                    'user' => $user,
                    'profile' => $profile,
                    'dataProvider' => $DataProvider
        ]);
    }

    /**
     * Display user dashboard
     */
    public function actionDashboard() {

        $wishlists = new ActiveDataProvider([
            'query' => \app\models\Wishlist::find()->where(['assigned_to' => Yii::$app->user->id, 'status' => 0])->orderBy('id')->limit(5),
            'pagination' => false
        ]);
        $DataProvider = new ActiveDataProvider([
            'query' => Yii::$app->user->identity->findFamily(),
        ]);

        return $this->render('dashboard', [
                    'dataProvider' => $DataProvider,
                    'events' => \app\models\Event::find()->orderBy(['date' => SORT_DESC])->all(),
                    'journals' => Journal::find()->orderBy(['date' => SORT_DESC])->all(),
                    'photos' => \app\models\Photos::find()->all(),
                    'wishlists' => $wishlists,
        ]);
    }

    /**
     * Display child dashboard by DTR
     */
    public function actionChild() {
        $user = Yii::$app->user->id;
        $model = User::findOne($user);
        $moodsProvider = new ActiveDataProvider([
            'query' => Mood::find()->select('mood')->where(['user_id' => $user])->orderBy(['date' => SORT_DESC, 'time' => SORT_DESC])->limit(1),
            'pagination' => false,
        ]);
        $journalProvider = new ActiveDataProvider([
            'query' => Journal::latestJournal($user)
            , 'pagination' => false,
        ]);
        $DataProvider = new ActiveDataProvider([
            'query' => Yii::$app->user->identity->findParents(),
            'pagination' => [
                'pageSize' => 20,
            ],
        ]);
        //get number 
        //create mood
        $moods = new Mood();
        //VarDumper::dump($moodsProvider, 10000, true); die();
        if (Yii::$app->user->identity->level == 3) {
            return $this->render('childdashboard', [
                        'dataProvider' => $DataProvider,
                        'journalProvider' => $journalProvider,
                        'moodsProvider' => $moodsProvider,
                        'moods' => $moods,
                        'model' => $model,
            ]);
        } else {
            throw new NotFoundHttpException();
        }
    }

    /**
     * Creates a new User model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     * @return mixed
     */
    public function actionCreate() {
        $model = new User();
        $model->auth_key = Yii::$app->security->generateRandomKey();
        $model->access_token = Yii::$app->security->generateRandomKey(64);
        $model->started = date('Y-m-d h:i');
        $model->parent_id = 0;

        if ($model->load(Yii::$app->request->post()) && $model->save()) {
            //var_dump($model->save()); die;
            return $this->redirect(['view', 'id' => $model->id]);
        } else {
            return $this->render('create', [
                        'model' => $model,
            ]);
        }
    }

    /**
     * Updates an existing User model.
     * If update is successful, the browser will be redirected to the 'view' page.
     * @param integer $id
     * @return mixed
     */
    public function actionUpdate($id) {
        $model = $this->findModel($id);

        if ($model->load(Yii::$app->request->post()) && $model->save()) {
            return $this->redirect(['view', 'id' => $model->id]);
        } else {
            return $this->render('update', [
                        'model' => $model,
            ]);
        }
    }

    /**
     * Deletes an existing User model.
     * If deletion is successful, the browser will be redirected to the 'index' page.
     * @param integer $id
     * @return mixed
     */
    public function actionDelete($id) {
        $this->findModel($id)->delete();

        return $this->redirect(['index']);
    }

    /**
     * 
     * @return type
     */
    public function actionLogin() {
        if (!\Yii::$app->user->isGuest) {
            return $this->goHome();
        }

        $model = new LoginForm();
        if ($model->load(Yii::$app->request->post()) && $model->login()) {
            return $this->goHome();
        }
        return $this->render('login', [
                    'model' => $model,
        ]);
    }

    /**
     * 
     * @return type
     */
    public function actionLogout() {
        Yii::$app->user->logout();

        return $this->goHome();
    }

    /**
     * Finds the User model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param integer $id
     * @return User the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id) {
        if (($model = User::findOne($id)) !== null) {
            return $model;
        } else {
            throw new NotFoundHttpException('The requested page does not exist.');
        }
    }

}
