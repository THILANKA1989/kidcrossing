<?php

namespace app\controllers;

use Yii;
use app\models\Photos;
use app\models\User;
use app\models\PhotosSearch;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;
use yii\web\UploadedFile;
use yii\data\ActiveDataProvider;
use yii\imagine\Image;

/**
 * PhotosController implements the CRUD actions for Photos model.
 */
class PhotosController extends Controller {

    public function behaviors() {
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
     * Lists all Photos models.
     * @return mixed
     */
    public function actionIndex() {
        $photos = Photos::find()->all();
        $model = new Photos();

        $searchModel = new PhotosSearch();
        $dataProvider = new ActiveDataProvider([
            'query' => Yii::$app->user->identity->findFamily(true),
            'pagination' => [
                'pageSize' => 20,
            ],
        ]);

        return $this->render('index', [
                    'searchModel' => $searchModel,
                    'dataProvider' => $dataProvider,
                    'photos' => $photos,
        ]);
    }

    /**
     * Displays a single Photos model.
     * @param integer $id
     * @return mixed
     */
    public function actionView($id) {

        $user = User::findOne(['id' => $id]);
        Yii::$app->Notification->viewer($id);
        return $this->render('view', [
                    'model' => $user,
        ]);
    }

    /**
     * Creates a new Photos model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     * @return mixed
     */
    public function actionCreate() {
        $model = new Photos();
        $models = array();
        if ($model->load(Yii::$app->request->post())) {
            $model->shared_with = implode(',', $model->shared_with);
            $file = UploadedFile::getInstances($model, 'filename');
            foreach ($file as $filename) {

                $model1 = new Photos();
                $model1->user_id = Yii::$app->user->id;
                $model1->shared_with = $model->shared_with;
                $model1->filename = $filename->name;
                $path = Yii::getAlias('@uploads/albums/' . $model1->filename);

                if ($model1->save()) {
                    $filename->saveAs($path);
                    Image::thumbnail($path, 120, 120)
                            ->save(Yii::getAlias('@uploads/albums/thumbs/' . $model1->filename), ['quality' => 50]);
                }
            }
            Yii::$app->session->setFlash('success', 'Photos successfully posted.');
            Yii::$app->Notification->notify($model1->filename, $model1, $model1->user, Yii::$app->controller->id, $model1->shared_with);

            $this->redirect('index');
        }
        return $this->renderAjax('create', [
                    'model' => $model,
        ]);
    }

    /**
     * Updates an existing Photos model.
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
     * Deletes an existing Photos model.
     * If deletion is successful, the browser will be redirected to the 'index' page.
     * @param integer $id
     * @return mixed
     */
    public function actionDelete($id) {
        $this->findModel($id)->delete();

        return $this->redirect(['index']);
    }

    /**
     * Finds the Photos model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param integer $id
     * @return Photos the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id) {
        if (($model = Photos::findOne($id)) !== null) {
            return $model;
        } else {
            throw new NotFoundHttpException('The requested page does not exist.');
        }
    }

}
