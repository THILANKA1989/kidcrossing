<?php
/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
use \app\models\Rating;
use yii\widgets\ActiveForm;
use yii\helpers\Html;
use kartik\rating\StarRating;
$rating = new Rating();
$user =Yii::$app->user->id;
?>

 <div class="col-lg-3 bottom-alignment">
                  <div class="grey-card">
                    <div class="image-box-small">
                      <h3 class="text-center color-blue bold-fonts"><?= Html::a($model->title, ['activity/view', 'id' => $model->id], ['class' => 'profile-link']) ?></h3>
                      <p class="text-center"><?= date("F jS, Y",strtotime($model->date));  ?></p>
                    </div>
                    <div class="rating-box">
                        
                        <?php
                        $form = ActiveForm::begin([
                            'action' => '@web/rating/create',
                            'id' => 'rateform'.$model->id,
                        ]); ?>
                         <?= StarRating::widget([
                                'name' => 'Rating[rate]',
                                'value' => Rating::averageRating($model->id) == 0 ? 0 : Rating::averageRating($model->id),
                                'disabled' => Rating::countEntered(Yii::$app->user->id,$model->id),
                                'id' => 'rateinput'.$model->id
       
                            ]); ?>
                          <?php echo Html::hiddenInput('Rating[activity_id]', $model->id); ?>
                        <?php  //var_dump($model->id); die(); ?>
                        <?php ActiveForm::end(); ?>
                        <p class="text-center color-blue bordered-top-grey padset-top">Added by <?=$model->user->fullname?></p>
                    </div>
                  </div>
</div>
<?php $this->registerJsFile(Yii::$app->request->baseUrl.'/js/bootbox.min.js',['depends' => [\yii\web\JqueryAsset::className()]]); ?>
<?php
$this->registerJs(
   "$('#rateform".$model->id." input#rateinput".$model->id."').rating().on('rating.clear', function(event) {
        }).on('rating.change', function(event, value, caption) {
            alert(value);
             $('#rateform".$model->id." input#rateinput".$model->id."').val(value);
            $('form#rateform".$model->id."').submit();
            $(this).rating('refresh', {disabled:true, showClear:false});
        });

    
    $('form#rateform".$model->id."').on('beforeSubmit', function(e){
            var data = $(this).attr('action');
            $.ajax({
            url: data,
            type: 'post',
            data: $('form#rateform".$model->id."').serialize(),
            success: function(data) {     
            }
        });
     return false;
   });"
); ?>

