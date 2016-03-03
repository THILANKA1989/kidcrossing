<?php

use yii\helpers\Html;
use yii\widgets\DetailView;
use yii\grid\GridView;
use yii\helpers\Url;
/* @var $this yii\web\View */
/* @var $model app\models\Photos */
//var_dump($model); die();
$this->title = 'Photos of'.' '.$model->fullname;
$this->params['breadcrumbs'][] = ['label' => 'Photos', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>


<div class="box box-primary">
    <div class="box-body">
        <div class="photos-index">
            <?php //var_dump($photos); die();  ?>
        <?php $items =  app\models\Photos::getItems($model->id) ;?>
         
        <?= dosamigos\gallery\Gallery::widget(['items' => $items]);?>
        </div>
    </div>
</div>
<?php if(Yii::$app->user->id == $model->id){ ?>
<div class="panel-group" id="accordion">
<a data-toggle="collapse" data-parent="#accordion" href="#collapseOne" class="btn btn-danger color-white btn-large margin-bottom-sm">Delete Images</a>
<div class="box box-primary collapse" id="collapseOne" aria-expanded="false">
    <div class="box-body">
        <div class="box-header">
                    <h3 class="box-title top-fixed-margin">Delete Photos&nbsp;&nbsp;&nbsp;</h3>
                    <div class="box-tools">
                        <div class="input-group input-group-sm" style="width: 150px;">
                            <input type="text" name="table_search" class="form-control pull-right" placeholder="Search">

                            <div class="input-group-btn">
                                <button type="submit" class="btn btn-default"><i class="fa fa-search"></i></button>
                            </div>
                        </div>
                    </div>
                </div>
        <div class="box-body table-responsive no-padding">
              <?= GridView::widget([
                'dataProvider' => $dataProvider,
                'filterModel' => $searchModel,
                'columns' => [
                     ['class' => 'yii\grid\SerialColumn'],
                  
                    [
                        'attribute'=>'filename',
                        'label' => 'Filename',
                    ],
                    ['attribute' => 'sharedwith',
                            'label' => 'Shared With',
                            'format' => 'raw',
                    ],
                    [
                        'attribute' => 'filename',
                        'format' => 'html',
                        'label' => 'Image',
                        'value' => function ($data) {
                            return Html::img('@web/uploads/albums/' . $data['filename'],
                                ['width' => '160px']);
                        },
                    ],

                    ['class' => 'yii\grid\ActionColumn'],
                ],
            ]); ?>
         </div>
            <!-- /.box-body -->
     </div>
</div>
</div>
<?php } ?>