<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\models\Activity */
/* @var $form yii\widgets\ActiveForm */
?>
<div class="box box-primary">
    <div class="box-body">
<div class="activity-form">

    <?php $form = ActiveForm::begin([
//    'beforeSubmit' => 'window.forms.candidate',
    'enableClientValidation' => true,
//    'enableAjaxValidation' => true,
    'id' => 'activity-form',
]); ?>

    <?= $form->field($model, 'date')->widget(\yii\jui\DatePicker::classname(), [
            //'language' => 'ru',
            'dateFormat' => 'yyyy-MM-dd',
            'options' => ['class' => 'form-control'],
            'clientOptions' => [
                'changeYear' => true,
                'changeMonth' => true,
                //'maxDate' => '+0d',
            ],
        ]) ?>
    

    <?= $form->field($model, 'title')->textInput(['rows' => 4]) ?>

    <?= $form->field($model, 'description')->textarea(['rows' => 6])?>

     
    

    <div class="col-md-12 form-group">
        <?= Html::submitButton($model->isNewRecord ? Yii::t('app', 'Create') : Yii::t('app', 'Update'), ['class' => 'btn btn-primary pull-right']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
</div>
    </div>