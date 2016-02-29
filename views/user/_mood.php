<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;
use yii\helpers\ArrayHelper;
use yii\widgets\Pjax;

/* @var $this yii\web\View */
/* @var $model app\models\Mood */
/* @var $form yii\widgets\ActiveForm */
?>
<?php
$date = date("Y-m-d");
if(\app\models\Mood::find()->where(['user_id' => Yii::$app->user->getId(), 'date' => $date])->count() < 5 ){ ?>

       <div class="background-white top-fixed-margin bordered-grey padding-large">
            <div class="row moodbox" id="secondmood">
                <div class="mood-form">
                    <?php yii\widgets\Pjax::begin(['id' => 'new_mood']) ?>
                    <?php $form = ActiveForm::begin([
                              'action' => ['mood/create'],
                                  'id' => $model->formName(),
                            ]); ?>

                    <?= $form->field($model, 'mood')-> radioList(
                            Yii::$app->params['moods'],
                            array('prompt'=>'Select','size'=>5)
                            ); ?>
                    <div class="form-group">
                        <?= Html::submitButton($model->isNewRecord ? 'Set Mood' : 'Update', ['class' => $model->isNewRecord ? 'btn btn-success' : 'btn btn-primary','id' => 'submit_mood']) ?>
                    </div>

                    <?php ActiveForm::end(); ?>
                    <?php yii\widgets\Pjax::end() ?>
                </div>
            </div>
</div>
<?php } ?>

<?php
$this->registerJs("
        $('input[type=radio]').on('change', function() {
            $('form#{$model->formName()}').submit();
        });
        $('form#{$model->formName()}').on('beforeSubmit', function(e){
	var \$form = $(this);
	$.post(
		\$form.attr('action'),
		\$form.serialize()
	).done(function(result){
        console.log(result);
			if(result == 'success'){
              
				$(\$form).trigger('reset'); 
                                $.pjax.reload({container:'#moodbox'});
			}else{
				$('#moodbox').html(result);
			}
            }).fail(function(){
                    //console.log('server error');
                    $(\$form).trigger('reset');
                    $.pjax.reload({container:'#moodbox'});
            });                                
	return false;
}); ",
        yii\web\View::POS_END,
        'reg-moods');
?>
<?php
$this->registerJs(
   '$("document").ready(function(){ 
        $("#new_mood").on("pjax:end", function() {
            $.pjax.reload({container:"#moodbox"});  //Reload GridView
        });
    });'
);
?>