<?php
use yii\widgets\ActiveForm;
use \kartik\switchinput\SwitchInput;
use yii\helpers\Url;
/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
use yii\helpers\Html;
$id = (string)$model->id;
?>
 <div class="background-white panel-white">
              <div class="col-md-3">
               <?php if(Yii::$app->user->identity->level == 3){ ?>
                <div class="widget-button-status" id="statusBtn<?= $model->status == 0 ? $model->id :''?>">
                    
                     <?php $form = ActiveForm::begin([
                              'action' => ['wishlist/update/'.$model->id],
                                  'id' => $model->formName().$model->id,
                            ]); ?>
                     <?= $model->status == 0 ? "<i class='pull-right color-red fa fa-times fa-2x align-v-middle'></i>" : "<i class='pull-right color-green fa fa-check fa-2x align-v-middle'></i>" ; ?>
                     <i class='pull-right color-green fa fa-check fa-2x align-v-middle' style="display: none"></i>  
                     <?php echo   $form->field($model, 'status',['options' => ['value'=> 1] ])->hiddenInput()->label(false); ?>
                     <?php ActiveForm::end(); ?>
                  
                </div>
               <?php } ?>
                <div class="grey-card fixed-margin-top">
                  <h3 class="text-center color-blue"><?= $model->title ?></h3>
                  <p class="text-center">from <?= $model->getAssignedFullname($model->assigned_to)?></p>
                  <img class="center-blocked" src="<?= $model->getEmoticon($model->emoji) ?>" width="120px"/>
                  <p class="text-center font-bold color-blue">For <?= $model->event ?></p>
                  <p class="text-center"><?= $model->date?></p>
                </div>
              </div>
</div>
<?php $this->registerJsFile(Yii::$app->request->baseUrl.'/js/bootbox.min.js',['depends' => [\yii\web\JqueryAsset::className()]]); ?>
<?php
$this->registerJs(
   "$('#statusBtn".$model->id."').on('click',function(){
       $('#statusBtn".$model->id."').addClass('inverter".$model->id."');
       bootbox.confirm('Are you sure? This action cannot be reverted!', function(result) {
            if(result == true){
                $('form#".$model->formName().$model->id."').submit();
                $('#statusBtn".$model->id." .fa-times').fadeOut(function(){
                    $('#statusBtn".$model->id." .fa-check').fadeIn('slow');
                });
            }
          });     
    });
    $('form#".$model->formName().$model->id."').on('beforeSubmit', function(e){
            var data = $(this).attr('action');
            $.ajax({
            url: data,
            type: 'post',
            data: $('form#".$model->formName().$model->id."').serialize(),
            success: function(data) {     
            }
        });
     return false;
   });"
); ?>