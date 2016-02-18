<?php

use yii\helpers\Html;
use yii\grid\GridView;
use yii\helpers\Url;
use yii\bootstrap\Modal;
use yii\widgets\ListView;

/* @var $this yii\web\View */
/* @var $searchModel app\models\ActivitySearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Activities';
$this->params['breadcrumbs'][] = $this->title;
?>

<div class="box box-primary">
    <div class="box-body">
     <?php if(Yii::$app->user->identity->level < 3){ ?>
        <div class="row">

            <div class="col-xs-12 top-fixed-margin">
            <div class="box-header">
                <h3 class="box-title top-fixed-margin">Add more Activities&nbsp;&nbsp;&nbsp;</h3>
                  <?php
                  if(Yii::$app->user->identity->level==1)
                      echo Html::button('Add Activity +',
                            [
                        'class' => 'btn btn-info btn-ajax-modal',
                        'value' => Url::to(['/activity/create']),
                        'data-target' => '#modal',
                    ]);
                   else  echo '';
                  
                  ?></h3>

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
            <div class="box-body table-responsive no-padding">
              <?= GridView::widget([
                'dataProvider' => $dataProvider,
                //'filterModel' => $searchModel,
                'columns' => [
                     ['class' => 'yii\grid\SerialColumn'],
                    [
                        'attribute'=>'created_at',
                        'label' => 'Added Date',
                    ],
                    [
                        'attribute'=>'date',
                        'label' => 'Activity Date',
                    ],
                    'title',
                    [
                        'attribute'=>'description',
                        'label' => 'Venue',
                    ],

                    ['class' => 'yii\grid\ActionColumn'],
                ],
            ]); ?>
            </div>
            <!-- /.box-body -->
            </div>
        </div>
        <?php }else{ ?>
            <div class="row">
            <?= ListView::widget([
                                'dataProvider' => $activityProvider,
                                'itemView' => '_listactivity',
                                'summary'=>'',
             ]); ?>
              </div>
        <?php } ?>
    </div>
</div>
<?php $this->registerCssFile("http://code.jquery.com/ui/1.10.1/themes/base/jquery-ui.css", [
    'media' => 'all',
], 'css-print-theme'); ?>
<?php $this->registerCssFile("@web/css/star-rating.min.css", [
    'media' => 'all',
], 'css-print-theme'); ?>
<?php $this->registerJsFile('http://code.jquery.com/ui/1.10.1/jquery-ui.js',['depends' => [\yii\web\JqueryAsset::className()]]); ?>
<?php $this->registerJsFile(Yii::$app->request->baseUrl.'/js/star-rating.min.js',['depends' => [\yii\web\JqueryAsset::className()]]); ?>
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

<?php $this->registerJs("jQuery(document).ready(function () {
        $('#input-21f').rating({
            starCaptions: function(val) {
                if (val < 3) {
                    return val;
                } else {
                    return 'high';
                }
            },
            starCaptionClasses: function(val) {
                if (val < 3) {
                    return 'label label-danger';
                } else {
                    return 'label label-success';
                }
            },
            hoverOnClear: false
        });
        
        $('#rating-input').rating({
              min: 0,
              max: 5,
              step: 1,
              size: 'lg',
              showClear: false
           });
           
        $('#btn-rating-input').on('click', function() {
            $('#rating-input').rating('refresh', {
                showClear:true, 
                disabled:true
            });
        });
        
        
        $('.btn-danger').on('click', function() {
            $('#kartik').rating('destroy');
        });
        
        $('.btn-success').on('click', function() {
            $('#kartik').rating('create');
        });
        
        $('#rating-input').on('rating.change', function() {
            alert($('#rating-input').val());
        });
        
        
        $('.rb-rating').rating({'showCaption':true, 'stars':'3', 'min':'0', 'max':'3', 'step':'1', 'size':'xs', 'starCaptions': {0:'status:nix', 1:'status:wackelt', 2:'status:geht', 3:'status:laeuft'}});
    });",
        yii\web\View::POS_END,
        'reg-rating');
?>


