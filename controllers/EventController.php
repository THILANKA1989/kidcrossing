<?php

namespace app\controllers;

use Yii;
use yii\filters\AccessControl;
use yii\filters\VerbFilter;
use app\models\Event;
use app\models\EventSearch;
use app\models\Notification;
use yii\web\Controller;
use yii\web\NotFoundHttpException;

/**
 * EventController implements the CRUD actions for Event model.
 */
class EventController extends Controller {

    public function behaviors() {
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
     * Lists all Event models.
     * @return mixed
     */
    public function actionIndex($id = null) {
        $id = $id == null ? Yii::$app->user->id : $id;
        //$searchModel = new EventSearch();
        //$dataProvider = $searchModel->search(Yii::$app->request->queryParams);

        return $this->render('index', [
                    'events' => Event::find()->where('FIND_IN_SET('.$id. ',"shared_with")>=0')->orWhere('user_id='.$id)->all(),
                    //'searchModel' => $searchModel,
                    //'dataProvider' => $dataProvider,
        ]);
    }

    /**
     * Displays a single Event model.
     * @param integer $id
     * @return mixed
     */
    public function actionView($id) {
        if(Yii::$app->request->get('notify')){
            $getid = Yii::$app->request->get('notify');
            $notify = Notification::findOne(['type_id' => $id,'id' => $getid,'shared_id' => Yii::$app->user->id]);
            $notify->status = 1;
            $notify->save();
        }   
        if (Yii::$app->request->isAjax) {
            return $this->renderAjax('view', [
                        'model' => $this->findModel($id)
            ]);
        } else {
            return $this->render('view', [
                        'model' => $this->findModel($id),
            ]);
        }
    }

    /**
     * Creates a new Event model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     * @return mixed
     */
    public function actionCreate($date) {
        $model = new Event();

        $model->user_id = Yii::$app->user->id;
        $model->date = $date;
        if ($model->load(Yii::$app->request->post())) {
            //var_dump($model);
            $model->shared_with = implode(',',$model->shared_with);
            if ($model->save()){
                Yii::$app->NotificationSaver->notify($model->title,$model->id,$model->user->id,$model->user->id,Yii::$app->controller->id,$model->shared_with);
            }
                return $this->redirect(['view', 'id' => $model->id]);
        } elseif (Yii::$app->request->isAjax) {
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
     * Updates an existing Event model.
     * If update is successful, the browser will be redirected to the 'view' page.
     * @param integer $id
     * @return mixed
     */
    public function actionUpdate($id) {
        $model = $this->findModel($id);

        if ($model->load(Yii::$app->request->post()) ) {     
            $model->shared_with = implode(',',$model->shared_with);
            if($model->save())
            return $this->redirect(['view', 'id' => $model->id]);
        } else {
            return $this->render('update', [
                        'model' => $model,
            ]);
        }
    }

    /**
     * Deletes an existing Event model.
     * If deletion is successful, the browser will be redirected to the 'index' page.
     * @param integer $id
     * @return mixed
     */
    public function actionDelete($id) {
        $this->findModel($id)->delete();

        return $this->redirect(['index']);
    }

    /**
     * Finds the Event model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param integer $id
     * @return Event the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id) {
        if (($model = Event::findOne($id)) !== null) {
            return $model;
        } else {
            throw new NotFoundHttpException('The requested page does not exist.');
        }
    }

}
