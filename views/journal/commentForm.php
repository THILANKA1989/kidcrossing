<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\models\Comment */
/* @var $form ActiveForm */
?>


 <?php $form = ActiveForm::begin(); ?>
                <img class="img-responsive img-circle img-sm" src="<?= \yii\helpers\Url::to($journal->user->avatar) ?>" alt="Alt Text">
                <!-- .img-push is used to add margin to elements next to floating images -->
                <div class="img-push">
                   <?= $form->field($comment, 'comment')->textInput(['class'=>'form-control input-sm', 'placeholder'=>'Press enter to post comment.', 'value'=>'']) ?>
                    <?= Html::submitButton($comment->isNewRecord ? Yii::t('app', 'Create') : Yii::t('app', 'Update'), ['class' => 'btn btn-success pull-right']) ?>
                </div>

<?php ActiveForm::end(); ?>