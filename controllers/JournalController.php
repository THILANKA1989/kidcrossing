<?php

namespace app\controllers;

use Yii;
use app\models\Journal;
use app\models\Notification;
use app\models\JournalSearch;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;
use yii\helpers\ArrayHelper;
use app\models\Comment;
use yii\data\ActiveDataProvider;
use yii\filters\AccessControl;

/**
 * JournalController implements the CRUD actions for Journal model.
 */
class JournalController extends Controller
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
     * Lists all Journal models.
     * @return mixed
     */
    public function actionIndex()
    {
        $searchModel = new JournalSearch();
        $dataProvider = $searchModel->search(Yii::$app->request->queryParams);
        
        
        return $this->render('index', [
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
        ]);
    }
    
    /**
     * Displays a single Journal model.
     * @param integer $id
     * @return mixed
     */
    public function actionView($id)
    {
        //var_dump($notify); die(); 
        $searchModel = new JournalSearch();
        $dataProvider = $searchModel->search(Yii::$app->request->queryParams);
        $model = $this->findModel($id);
        $comment = new \app\models\Comment();
        $comment->user_id = \Yii::$app->user->id;
        $comment->journal_id = $id;
        $query =  Comment::find()
                ->where(['journal_id' => $id]);
        $commentProvider = new ActiveDataProvider([            	
            'query' => $query,
        ]);
        
        if(Yii::$app->request->get('notify')){
            $getid = Yii::$app->request->get('notify');
            //$notification = new Notification();
            $notify = Notification::findOne(['type_id' => $id,'id' => $getid,'shared_id' => Yii::$app->user->id]);
            $notify->status = 1;
            $notify->save();
        }
        
        if(Yii::$app->request->get('global')){
            $getid = Yii::$app->request->get('global');
            //$notification = new Notification();
            $notify = Notification::find()->where(['type_id' => $id,'type' => $getid,'shared_id' => Yii::$app->user->id, 'status' => 0])->all();
            for($i=0;$i<sizeof($notify);$i++){
                $notify[$i]->status = 1;
                $notify[$i]->save();
            }
        }
            
        
        if ($comment->load(Yii::$app->request->post()) ){
                $comment->time = date('Y-m-d H:i:s');
                
            if($comment->save()){   
                Yii::$app->NotificationSaver->notify($model->entry,$model->id,$model->user->id,Yii::$app->user->id,'comment',$model->shared_with);
                Yii::$app->session->setFlash('success', 'Comment posted successfully.');
                return $this->render('view', [
                    'model' => $model,
                    'comment' => $comment,
                    'dataProvider' => $dataProvider,
                    'searchModel' => $searchModel,
                    'commentProvider'=> $commentProvider,
                ]);
            }else{
                exit();
            }
        }
        
        else if(Yii::$app->request->isAjax){
            return $this->renderAjax('view',[
            'model' => $model,
            'comment' => $comment,
            'dataProvider' => $dataProvider,
            'searchModel' => $searchModel,
            'commentProvider'=> $commentProvider,
        ]);}
        else{
            return $this->render('view', [
            'model' => $model,
            'comment' => $comment,
            'dataProvider' => $dataProvider,
            'searchModel' => $searchModel,
            'commentProvider'=> $commentProvider,
            
        ]);
        
        }
    }

    /**
     * Creates a new Journal model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     * @return mixed
     */
    public function actionCreate()
    {
        
        $model = new Journal();
        $model->date = Yii::$app->formatter->asDate('today', 'long');
        $model->user_id = Yii::$app->user->id;
        
        
        if ($model->load(Yii::$app->request->post()) ){            
            $model->shared_with =  implode(',',$model->shared_with);            
            if($model->save()){
                Yii::$app->NotificationSaver->notify($model->entry,$model->id,$model->user->id,Yii::$app->user->id,Yii::$app->controller->id,$model->shared_with);
            } 
                Yii::$app->session->setFlash('success', 'Journal successfully posted.');
                return $this->redirect(['index']);
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
     * Updates an existing Journal model.
     * If update is successful, the browser will be redirected to the 'view' page.
     * @param integer $id
     * @return mixed
     */
    public function actionUpdate($id)
    {
        $model = $this->findModel($id);
        $model->user_id = Yii::$app->user->id;
       
        if ($model->load(Yii::$app->request->post())){
             $model->shared_with = json_encode($model->shared_with);    
                
            if($model->save()) 
            return $this->redirect(['view', 'id' => $model->id]);
            
        } else {
            return $this->render('update', [
                'model' => $model,
            ]);
        }
    }

    /**
     * Deletes an existing Journal model.
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
     * Finds the Journal model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param integer $id
     * @return Journal the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id)
    {
        if (($model = Journal::findOne($id)) !== null) {
            return $model;
        } else {
            throw new NotFoundHttpException('The requested page does not exist.');
        }
    }
}
