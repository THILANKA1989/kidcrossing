<?php

use yii\helpers\Html;
use yii\grid\GridView;
//use yii\helpers\Url;
//use yii\bootstrap\Modal;
//use yii\widgets\ActiveForm;
use yii\widgets\ListView;
use yii\widgets\Pjax;
use yii\widgets\ActiveForm;
/* @var $this yii\web\View */
/* @var $model app\models\User */
/* @var $model app\models\Profile */
/* @var $form ActiveForm */

/* @var $this yii\web\View */
/* @var $searchModel app\models\MoodSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Moods';
$this->params['breadcrumbs'][] = $this->title;

?>



 <div class="box box-primary">
     
    <div class="box-body">
        <div class="row">

    <div class="col-xs-12 top-fixed-margin">
           <?= $this->render('_search', ['model' => $searchModel]); ?>
  <?php  if (Yii::$app->request->get()) {?>
     <?php Pjax::begin(); ?>
     <?= GridView::widget([
           'dataProvider' => $searchProvider,
            'filterModel' => $searchModel,
       'columns' => [
                        ['class' => 'yii\grid\SerialColumn'],
                        //'id',
                        ['attribute' => 'fullname',
                            'label' => 'Posted By',
                        ],
                        ['attribute' => 'mood',
                                         'label' => 'Mood',
                        ],
                        ['attribute' => 'date',
                            'format' => ['date',
                                'php:d-m-y'],
                            'label' => 'Posted Date',
                        ],
                        ['attribute' => 'time',
                                        'format' => ['date',
                                            'php:h:i:s'],
                                        'label' => 'Posted Time',
                        ],
                        
                      
                    ],
         
        ]); ?>
  <?php Pjax::end(); }?>
            </div>
        </div>
    </div>
    </div>
            <div class="">
                <div class="row">
                    <?= ListView::widget([
                       'dataProvider' => $dataProvider,
                       'itemView' => '_listmoodpanel',
                       'summary'=>'',
                    ]); ?>

                </div>

            </div>

