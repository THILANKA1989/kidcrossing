<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;
use kartik\widgets\FileInput;
use kartik\color\ColorInput;

/* @var $this yii\web\View */
/* @var $model app\models\Profile */
/* @var $form ActiveForm */
$this->title = Yii::t('app', 'My Profile');
//$this->params['breadcrumbs'][] = $this->title;
?>

<div class="box box-primary">
    <div class="box-body no-padding">

        <?php
        $form = ActiveForm::begin([
                    'id' => 'user-profile',
                    'options' => ['class' => '', 'enctype' => 'multipart/form-data',],
                    'fieldConfig' => [
                        'template' => "<div class=\"col-md-4\">{label}\n{input}\n{error}</div>",
                    //'labelOptions' => ['class' => 'control-label'],
                    ],
        ]);
        ?>

        <?php //$form->field($model, 'user_id') ?>
        <?= $form->field($model, 'label') ?>
        <?= $form->field($model, 'first_name') ?>
        <?= $form->field($model, 'last_name') ?>
        <?= $form->field($model, 'street') ?>
        <?= $form->field($model, 'area') ?>
        <?= $form->field($model, 'city') ?>
        <?= $form->field($model, 'zipcode') ?>
        <?=
        $form->field($model, 'dob')->widget(\yii\jui\DatePicker::classname(), [
            //'language' => 'ru',
            'dateFormat' => 'yyyy-MM-dd',
            'options' => ['class' => 'form-control'],
            'clientOptions' => [
                'changeYear' => true,
                'changeMonth' => true,
                'maxDate' => '+0d',
            ],
        ])
        ?>
        <?= $form->field($model, 'mobile') ?>
        <?=
        $form->field($model, 'color')->widget(ColorInput::classname(), [
            'options' => ['placeholder' => 'Select color ...'],
            'pluginOptions' => [
                'showUpload' => false,
                'previewFileType' => 'image'
            //'mainClass' => 'input-group-lg'
            ]
        ]);
        ?>
        <?=
        $form->field($model, 'image')->widget(FileInput::classname(), [
            'options' => ['accept' => 'image/*', 'multiple' => true],
            'pluginOptions' => ['allowedFileExtensions' => ['jpg', 'gif', 'png']]
        ]);
        ?>

        <div class="col-lg-12 form-group">
            <?= Html::submitButton($model->isNewRecord ? Yii::t('app', 'Create') : Yii::t('app', 'Update'), ['class' => 'btn btn-primary pull-right']) ?>
        </div>

        <?php ActiveForm::end(); ?>
        <!-- user-profile -->
    </div>
</div>