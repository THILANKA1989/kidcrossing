<?php
/* @var $this yii\web\_formchild */
/* @var $form yii\bootstrap\ActiveForm */
/* @var $model app\models\User */
/* @var $model app\models\Profile */

use yii\helpers\Html;
use yii\bootstrap\ActiveForm;
?>
<div class="gallery-area">
    <div class="panel panel-default">
        <div class="panel-heading">
            <h3 class="panel-title heading-strip-white font-large color-blue"><img src="<?= yii\helpers\Url::to('@web/img/logo-kc-lg.png') ?>" height="80px">&nbsp;&nbsp;&nbsp;&nbsp;Add new Child</h3>
        </div>

        <div class="panel-body">
            <h4 class="color-blue">Please fill out the following fields to create an account for your child <?= !$model->isNewRecord ? Html::a(Yii::t('app', 'Add new'), ['user/family'], ['class' => 'btn btn-info btn-large pull-right']): ''  ?> </h4>
            
            <?php
            $form = ActiveForm::begin([
                        'id' => 'child-form',
                        'options' => ['role' => 'form'],
                        'fieldConfig' => [
                            'template' => "<div class=\"form-group has-feedback\">{label}\n{input}\n{error}</div>",
                        ],
            ]);
            ?>

            <?php //echo $form->field($model, 'status')->textInput(['maxlength' => true])  ?>
            <div class="row">
                <div class="col-sm-6">
                    <?= $form->field($model, 'identity')->textInput() ?>
                </div>
                <div class="col-sm-6">
                    <?= $form->field($model, 'password')->passwordInput(['readonly' => !$model->isNewRecord]) ?>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-6">
                    <?= $form->field($profile, 'first_name') ?>
                </div>
                <div class="col-sm-6">
                    <?= $form->field($profile, 'last_name') ?>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-6">
                    <?=
                    $form->field($profile, 'dob')->widget(\yii\jui\DatePicker::classname(), [
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
                </div>
                <div class="col-sm-6">
                    <?= $form->field($profile, 'label')->dropDownList(['Son' => 'Son', 'Doughter' => 'Doughter'], ['prompt' => 'Child Role']) ?>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-6">
                    <?= $form->field($profile, 'street') ?>
                </div>
                <div class="col-sm-6">
                    <?= $form->field($profile, 'area') ?>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-6">
                    <?= $form->field($profile, 'city') ?>
                </div>
                <div class="col-sm-6">
                    <?= $form->field($profile, 'zipcode') ?>
                </div>
            </div>

            <div class="form-group text-right">
                <?= Html::submitButton($model->isNewRecord ? Yii::t('app', 'Add Child') : Yii::t('app', 'Update'), ['class' => $model->isNewRecord ? 'btn btn-info' : 'btn btn-primary']) ?>
            </div>

            <?php ActiveForm::end(); ?>
        </div>
    </div>
</div>
