<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\models\Notification */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="notification-form hidden">

    <?php $form = ActiveForm::begin(['id'=> $model->formName().$model->id,
        
                                     'action' => 'notification/update/']); ?>

    <?= $form->field($model, 'id')->textInput(['type' => 'hidden']) ?>
    <?= $form->field($model, 'status')->textInput(['value' => 1]) ?>
    <div class="form-group">
        <?= Html::submitButton($model->isNewRecord ? 'Create' : 'Update', ['class' => 'hidden']) ?>
    </div>
    <?php ActiveForm::end(); ?>

</div>
