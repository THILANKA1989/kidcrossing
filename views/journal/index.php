<?php

use yii\helpers\Html;
use yii\grid\GridView;
use yii\helpers\Url;
use yii\bootstrap\Modal;

/* @var $this yii\web\View */
/* @var $searchModel app\models\JournalSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title =
        'Journals List';
$this->params['breadcrumbs'][] =
        $this->title;
?>
<div class="box box-primary">
    <div class="box-body no-padding">
        <div class="row">

            <div class="col-xs-12 top-fixed-margin">

                <div class="box-header">
                    <h3 class="box-title top-fixed-margin">Add more journal entries&nbsp;&nbsp;&nbsp;</h3>
                           
                        
                    <?php
                   if(Yii::$app->user->identity->level == 1) echo "";
                    //var_dump($this->user->level);
                   else echo
                    Html::button('Add Journal +',
                            [
                        'class' => 'btn btn-info btn-ajax-modal',
                        'value' => Url::to(['/journal/create']),
                        'data-target' => '#modal',
                    ]);
                    ?>

                    <div class="box-tools">
                        <div class="input-group input-group-sm" style="width: 150px;">
                            <input type="text" name="table_search" class="form-control pull-right" placeholder="Search">

                            <div class="input-group-btn">
                                <button type="submit" class="btn btn-default"><i class="fa fa-search"></i></button>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- /.box-header -->
                <?=
                GridView::widget([
                    'dataProvider' => $dataProvider,
                    //'filterModel' => $searchModel,
                    'columns' => [
                        ['class' => 'yii\grid\SerialColumn'],
                        //'id',
                        ['attribute' => 'user.fullname',
                            'label' => 'Posted By',
                        ],
                        'entry:ntext',
                        ['attribute' => 'date',
                            'format' => ['date',
                                'php:d-m-y'],
                            'label' => 'Posted Date',
                        ],
                        ['attribute' => 'sharedwith',
                            'label' => 'Shared With',
                            'format' => 'raw',
                        ],
                        [
                            'class' => 'yii\grid\ActionColumn',
                            'template' => '{view}',
                            'buttons' => [
                                'view' => function ($url, $model) {
                                    return Html::a(
                                                    ' View',
                                                    $url);
                                },
                                
                            ],
                        ],
                    ],
                ]);
                ?>
            </div>

        </div>
    </div>
</div>
<?php $this->registerJs("$('.btn-ajax-modal').click(function (){
    var elm = $(this),
        target = elm.attr('data-target'),
        url = elm.attr('value');

    $(target).modal('show')
        .find('#modalContent')
        .load(url);
});",
        yii\web\View::POS_END,
        'reg-modal');
?>


