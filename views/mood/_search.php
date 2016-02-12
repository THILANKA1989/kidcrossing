<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\models\MoodSearch */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="mood-search row">

    <?php $form = ActiveForm::begin([
        'action' => ['index'],
        'method' => 'get',
    ]); ?>

    <?php // $form->field($model, 'id') ?>
    <div class="form-group col-md-4">
        <?= $form->field($model, 'user_id') ?>
    </div>    
    <?php // $form->field($model, 'mood') ?>
     <div class='col-md-3'><?=
            $form->field($model, 'start_date')->widget(\yii\jui\DatePicker::classname(), [
            'dateFormat' => 'yyyy-MM-dd',
            'options' => ['class' => 'form-control'],
            'clientOptions' => [
                'changeYear' => true,
                'changeMonth' => true,
                'maxDate' => '+0d',
            ],
        ]) ?></div>
    <?php // $form->field($model, 'mood') ?>
     <div class='col-md-3'><?=
            $form->field($model, 'end_date')->widget(\yii\jui\DatePicker::classname(), [
            'dateFormat' => 'yyyy-MM-dd',
            'options' => ['class' => 'form-control'],
            'clientOptions' => [
                'changeYear' => true,
                'changeMonth' => true,
                'maxDate' => '+0d',
            ],
        ]) ?></div>
    <?php // $form->field($model, 'time') ?>

    <div class="form-group col-md-2 search-submit-mood">
        <p>&nbsp;</p>
        <?= Html::submitButton('Search', ['class' => 'btn btn-primary']) ?>
        <?= Html::resetButton('Reset', ['class' => 'btn btn-default']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
