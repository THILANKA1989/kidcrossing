<?php

namespace app\controllers;

use Yii;
use app\models\Activity;
use app\models\ActivitySearch;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;
use yii\data\ActiveDataProvider;
/**
 * ActivityController implements the CRUD actions for Activity model.
 */
class ActivityController extends Controller
{
    public function behaviors()
    {
        return [
            'verbs' => [
                'class' => VerbFilter::className(),
                'actions' => [
                    'delete' => ['post'],
                ],
            ],
        ];
    }

    /**
     * Lists all Activity models.
     * @return mixed
     */
    public function actionIndex()
    {
        $searchModel = new ActivitySearch();
        $dataProvider = $searchModel->search(Yii::$app->request->queryParams);
        $rating = new \app\models\Rating();
         $activityProvider = new ActiveDataProvider([
            'query' => Activity::find()->orderBy(['id' => SORT_DESC]),
             'pagination' => [
                'pageSize' => 8,
             ],
        ]);    
        
        return $this->render('index', [
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
            'activityProvider' => $activityProvider,
            'rating' => $rating,
        ]);
    }

    /**
     * Displays a single Activity model.
     * @param integer $id
     * @return mixed
     */
    public function actionView($id)
    {
        Yii::$app->NotificationSaver->viewer($id);
        return $this->render('view', [
            'model' => $this->findModel($id),
        ]);
    }

    /**
     * Creates a new Activity model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     * @return mixed
     */
    public function actionCreate()
    {
        $model = new Activity();
        $model->date = Yii::$app->formatter->asDate('today', 'long');
        $model->user_id = Yii::$app->user->id;
        $model->created_at =  date('Y-m-d h:i:s');        
        
        if ($model->load(Yii::$app->request->post())){ 
            if($model->save()){
                Yii::$app->NotificationSaver->notify($model->title,$model->id,$model->user->id,Yii::$app->user->id,Yii::$app->controller->id,'all');
                Yii::$app->session->setFlash('success', 'Activity posted successfully.');
                return $this->redirect(['index']);
            }
        }else if(Yii::$app->request->isAjax){
            return $this->renderAjax('_form',[
                    'model' => $model
            ]);
        }
        else {
            return $this->render('create', [
                'model' => $model,
            ]);
        }
    }

    /**
     * Updates an existing Activity model.
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
     * Deletes an existing Activity model.
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
     * Finds the Activity model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param integer $id
     * @return Activity the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id)
    {
        if (($model = Activity::findOne($id)) !== null) {
            return $model;
        } else {
            throw new NotFoundHttpException('The requested page does not exist.');
        }
    }
}
