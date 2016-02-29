<?php

namespace app\controllers;

use Yii;
use app\models\Wishlist;
use app\models\WishlistSearch;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;
use yii\data\ActiveDataProvider;
use yii\filters\AccessControl;

/**
 * WishlistController implements the CRUD actions for Wishlist model.
 */
class WishlistController extends Controller {

    public function behaviors() {
        return [
            'access' => [
                'class' => AccessControl::className(),
                'only' => ['create', 'index', 'view', 'update', 'delete', 'Wishes'],
                'rules' => [
                    [
                        'actions' => ['create', 'index', 'view', 'update', 'delete', 'Wishes'],
                        'allow' => true,
                        'roles' => ['@'],
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
     * Lists all Wishlist models.
     * @return mixed
     */
    public function actionWishes() {

        $model = Wishlist::find()->orderBy(['id' => SORT_DESC])->all();
        $searchModel = new WishlistSearch();
        $dataProvider = new ActiveDataProvider([
            'query' => Yii::$app->user->identity->findFamily(false),
            'pagination' => [
                'pageSize' => 8,
            ],
        ]);


        return $this->render('wishes', [
                    'searchModel' => $searchModel,
                    'dataProvider' => $dataProvider,
        ]);
    }

    /**
     * Displays a single Wishlist model.
     * @param integer $id
     * @return mixed
     */
    public function actionView($id) {
        $user = Wishlist::findOne(['user_id' => $id]);
        $model = new Wishlist();
        $searchModel = new WishlistSearch();
        $searchProvider = $searchModel->search(Yii::$app->request->queryParams);
        $dataProvider = new ActiveDataProvider([
            'query' => \app\models\Wishlist::find()->where(['user_id' => $id])->orderBy(['id' => SORT_DESC]),
            'pagination' => [
                'pageSize' => 8,
            ],
        ]);
        Yii::$app->Notification->viewer($id);
        return $this->render('view', [
                    'searchModel' => $searchModel,
                    'dataProvider' => $dataProvider,
                    'model' => $model,
                    'user' => $user,
        ]);
    }

    /**
     * Creates a new Wishlist model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     * @return mixed
     */
    public function actionCreate() {
        $model = new Wishlist();
        $model->user_id = Yii::$app->user->id;
        $model->status = 0;
        $model->date = date('Y-m-d h:i:s');
        if ($model->load(Yii::$app->request->post())) {
            $model->assigned_to = implode(',', $model->assigned_to);
            //var_dump($model); die();
            if ($model->save()) {
                Yii::$app->Notification->notify($model->title, $model, $model->user, Yii::$app->controller->id, $model->assigned_to);
                Yii::$app->session->setFlash('success', 'Item successfully posted.');
            }
            return $this->redirect(['wishlist/view/' . Yii::$app->user->id]);
        } else if (Yii::$app->request->isAjax) {
            return $this->renderAjax('_form', [
                        'model' => $model
            ]);
        } else {
            return $this->render('create', [
                        'model' => $model,
            ]);
        }
    }

    /**
     * Updates an existing Wishlist model.
     * If update is successful, the browser will be redirected to the 'view' page.
     * @param integer $id
     * @return mixed
     */
    public function actionUpdate($id) {
        //var_dump($id); die();
        $model = $this->findModel($id);
        if (Yii::$app->request->isAjax) {

            $model->status = 1;
            if ($model->save()) {
                echo "<i class='pull-right color-green fa fa-check fa-2x align-v-middle'></i>";
            } else {
                echo "error";
            }
            return $this->renderAjax('update', [
                        'model' => $model,
            ]);
        } else {

            if ($model->load(Yii::$app->request->post())) {
                $model->date = date('Y-m-d h:i:s');
                $model->user_id = Yii::$app->user->id;
                $model->assigned_to = implode(',', $model->assigned_to);
                if ($model->save()) {
                    Yii::$app->session->setFlash('success', 'Item successfully updated.');
                }
            }
            return $this->render('update', [
                        'model' => $model,
            ]);
        }
    }

    /**
     * Edit an existing Wishlist models.
     */
    public function actionIndex() {
        $searchModel = new WishlistSearch();
        $dataProvider = $searchModel->search(Yii::$app->request->queryParams);


        return $this->render('index', [
                    'searchModel' => $searchModel,
                    'dataProvider' => $dataProvider,
        ]);
    }

    /**
     * Deletes an existing Wishlist model.
     * If deletion is successful, the browser will be redirected to the 'index' page.
     * @param integer $id
     * @return mixed
     */
    public function actionDelete($id) {
        $this->findModel($id)->delete();

        return $this->redirect(['index']);
    }

    /**
     * Finds the Wishlist model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param integer $id
     * @return Wishlist the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id) {
        if (($model = Wishlist::findOne($id)) !== null) {
            return $model;
        } else {
            throw new NotFoundHttpException('The requested page does not exist.');
        }
    }

}
