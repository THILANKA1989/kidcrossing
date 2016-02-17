<?php

namespace app\controllers;

use Yii;
use app\models\Wishlist;
use app\models\WishlistSearch;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;
use yii\data\ActiveDataProvider;
/**
 * WishlistController implements the CRUD actions for Wishlist model.
 */
class WishlistController extends Controller
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
     * Lists all Wishlist models.
     * @return mixed
     */
    public function actionIndex()
    {   $model = Wishlist::find()->orderBy(['id'=> SORT_DESC])->all();
        $searchModel = new WishlistSearch();
        $dataProvider =  new ActiveDataProvider([
           'query' => Yii::$app->user->identity->findFamily(false),
           'pagination' => [
                'pageSize' => 8,
    ],
        ]);
        
        
        return $this->render('index', [
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
        ]);
    }

    /**
     * Displays a single Wishlist model.
     * @param integer $id
     * @return mixed
     */
    public function actionView($id)
    {
        
        $model = new Wishlist();
        $searchModel = new WishlistSearch();
        $searchProvider = $searchModel->search(Yii::$app->request->queryParams);
         $dataProvider = new ActiveDataProvider([
           'query' => \app\models\Wishlist::find()->where(['user_id' => $id])->orderBy(['id'=> SORT_DESC]),
           'pagination' => [
                'pageSize' => 8,
    ],
        ]);
        Yii::$app->NotificationSaver->viewer($id); 
        return $this->render('view', [
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
        ]);
    }

    /**
     * Creates a new Wishlist model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     * @return mixed
     */
    public function actionCreate()
    {
        $model = new Wishlist();
        $model->user_id = Yii::$app->user->id;
        $model->status = 0;
        $model->date = date('Y-m-d h:i:s');
        if ($model->load(Yii::$app->request->post()) ){   
            $model->assigned_to =  implode(',',$model->assigned_to); 
            //var_dump($model); die();
            if($model->save()){
                Yii::$app->NotificationSaver->notify($model->title,$model->id,$model->user->id,Yii::$app->user->id,Yii::$app->controller->id,$model->assigned_to);
                Yii::$app->session->setFlash('success', 'Item successfully posted.');
            } 
        return $this->redirect(['wishlist/view/'.Yii::$app->user->id]);
        }else if(Yii::$app->request->isAjax){
            return $this->renderAjax('_form',[
                    'model' => $model
            ]);
        }else {
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
    public function actionUpdate($id)
    {
        //var_dump($id); die();
        $model = $this->findModel($id);
        $model->status = 1;
        if ( $model->save()) {
            echo "<i class='pull-right color-green fa fa-check fa-2x align-v-middle'></i>";
        } else {
            echo "error";
        }
        return $this->renderAjax('update', [
                'model' => $model,
            ]);
    }

    /**
     * Deletes an existing Wishlist model.
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
     * Finds the Wishlist model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param integer $id
     * @return Wishlist the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id)
    {
        if (($model = Wishlist::findOne($id)) !== null) {
            return $model;
        } else {
            throw new NotFoundHttpException('The requested page does not exist.');
        }
    }
}
