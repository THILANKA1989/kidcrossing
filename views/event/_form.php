<?php

use yii\helpers\Html;
use yii\helpers\ArrayHelper;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\models\Event */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="">

    <?php
    $form = ActiveForm::begin([
                'id' => 'event-form',
                'options' => ['class' => 'form'],
    ]);
    ?>

    <?php //$form->field($model, 'user_id')->textInput() ?>

    <?= $form->field($model, 'title')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'description')->textarea(['rows' => 6]) ?>

    <?= $form->field($model, 'venue')->textInput(['maxlength' => true]) ?>

    <?php //echo $form->field($model, 'date')->textInput() ?>

    <?= $form->field($model, 'shared_with')->listBox( ArrayHelper::map(Yii::$app->user->identity->findFamily(true)->all(), 'id', 'fullname'), ['multiple' => true] ) ?>

    <div class="form-group text-right">
        <?= Html::submitButton($model->isNewRecord ? Yii::t('app', 'Create') : Yii::t('app', 'Update'), ['class' => $model->isNewRecord ? 'btn btn-success' : 'btn btn-primary']) ?>
        <?= Html::button(Yii::t('app', 'Cancel'), ['class' => 'btn btn-primary', 'data-dismiss' => "modal"]) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
