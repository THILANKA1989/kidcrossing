<?php

namespace app\controllers;

use app\models\User;
use Yii;
use app\models\Mood;
use app\models\MoodSearch;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;
use yii\filters\AccessControl;

use yii\data\ActiveDataProvider;
/**
 * MoodController implements the CRUD actions for Mood model.
 */
class MoodController extends Controller
{
    public function behaviors()
    {
        return [
            'access' => [
                'class' => AccessControl::className(),
                'only' => ['create', 'index', 'view', 'update', 'delete'],
                'rules' => [
                    [
                        'actions' => ['create', 'index', 'view', 'update', 'delete'],
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
     * Lists all Mood models.
     * @return mixed
     */
    public function actionIndex()
    {
        $dataProvider = new ActiveDataProvider([
            'query' => Yii::$app->user->identity->findFamily(false),
            'pagination' => false,
        ]);
        return $this->render('index', [
            'dataProvider' => $dataProvider,
        ]);
    }

    /**
     * Displays a single Mood model.
     * @param integer $id
     * @return mixed
     */
    public function actionView($id)
    {
        $model= User::findOne($id); 
        $date = date("Y-m-d");
        //var_dump($model->percentageMonthly); die();
        $moodProvider = new ActiveDataProvider([
            'query' => Mood::find()->select('mood')->where(['user_id' => $id])->orderBy(['date'=> SORT_DESC,'time' => SORT_DESC])->limit(1),
            'pagination' => false,
        ]);    
      return $this->render('view', [
            'model' => $model,
            'moodProvider' => $moodProvider,
        ]);
    }

    /**
     * Creates a new Mood model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     * @return mixed
     */
    public function actionCreate()
    {
        $model = new Mood();
        $date = date("Y-m-d");
        if ($model->load(Yii::$app->request->post()) && Mood::find()->where(['user_id' => Yii::$app->user->getId(), 'date' => $date])->count() < 5) {
          $model->user_id = Yii::$app->user->getId();
          $model->date = date('Y-m-d');
          $model->time = date('Y-m-d h:i:s');
          
           if ($model->save()) {
             //Yii::$app->session->setFlash('success', 'Mood successfully Set.');
             //return $this->redirect(['user/child']); 
            
             echo "<div class='mood-title'>"."You are ".$model->mood." Now"."<span class='font-small pull-right label label-danger'>".(5-Mood::find()->where(['user_id' => Yii::$app->user->getId(), 'date' => date("Y-m-d")])->count())."</span>"."</div>";
           }else{
               Yii::$app->session->setFlash('danger', 'Something Error');
           }
        }else{
              echo "You are out of entries";
        } 
        return $this->renderAjax('create', [
            'model' => $model,
        	
        ]);
    }

    /**
     * Updates an existing Mood model.
     * If update is successful, the browser will be redirected to the 'view' page.
     * @param integer $id
     * @return mixed
     */
    public function actionUpdate($id)
    {
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
     * Deletes an existing Mood model.
     * If deletion is successful, the browser will be redirected to the 'index' page.
     * @param integer $id
     * @return mixed
     */
    public function actionDelete($id)
    {
        $this->findModel($id)->delete();

        return $this->redirect(['index']);
    }

    /**
     * Finds the Mood model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param integer $id
     * @return Mood the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id)
    {
        if (($model = Mood::findOne($id)) !== null) {
            return $model;
        } else {
            throw new NotFoundHttpException('The requested page does not exist.');
        }
    }


}
