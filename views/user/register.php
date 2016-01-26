<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;
use yii\captcha\Captcha;

/* @var $this yii\web\View */
/* @var $model app\models\Tempuser */
/* @var $form ActiveForm */
?>
<div class="register-box">
    <div class="register-logo">
        <a href="<?= Yii::$app->homeUrl ?>"><b>Kid</b>Crossing</a>
    </div>

    <div class="register-box-body">
        <p class="login-box-msg">Register a new Parent</p>

        <?php
        $form = ActiveForm::begin([
                    'id' => 'login-form',
                    'options' => ['class' => ''],
                    'fieldConfig' => [
                        'template' => "<div class=\"form-group has-feedback\">{label}\n{input}\n{error}</div>",
                        'labelOptions' => ['class' => 'control-label'],
                    ],
        ]);
        ?>
        <?= $form->field($model, 'email') ?>
        <div class="row">
            <div class="col-sm-6">
                <?= $form->field($model, 'password')->passwordInput() ?>

            </div>
            <div class="col-sm-6">
                <?= $form->field($model, 'confirm_password')->passwordInput() ?>
            </div>
        </div>
        <div class="row">
            <div class="col-sm-6">
                <?= $form->field($model, 'first_name') ?>
            </div>
            <div class="col-sm-6">
                <?= $form->field($model, 'last_name') ?>
            </div>
        </div>
        <div class="row">
            <div class="col-sm-6">
                <?= $form->field($model, 'spouse_email') ?>
            </div>
            <div class="col-sm-6">
                <?= $form->field($model, 'label')->dropDownList(['Father' => 'Father', 'Mother' => 'Mother'], ['prompt' => 'Your Role']) ?>
            </div>
        </div>
        <div class="row">
            <div class="col-sm-6">
                <?= $form->field($model, 'street') ?>
            </div>
            <div class="col-sm-6">
                <?= $form->field($model, 'area') ?>
            </div>
        </div>
        <div class="row">
            <div class="col-sm-6">
                <?= $form->field($model, 'city') ?>
            </div>
            <div class="col-sm-6">
                <?= $form->field($model, 'zipcode') ?>
            </div>
        </div>
        <?=
        $form->field($model, 'verify_code')->widget(Captcha::className(), [
            'template' => '<div class="row"><div class="col-sm-4 col-sm-offset-2">{image}</div><div class="col-sm-6">{input}</div></div>',
        ])
        ?>
        <div class="row">
            <div class="col-sm-8 checkbox">
                <?=
                $form->field($model, 'agree_to_terms')->checkbox([
                    'template' => "{input} <a href=\"#\">{label}</a>\n{error}",
                ])
                ?>
            </div>
            <div class="col-sm-4">
        <?= Html::submitButton('Submit', ['class' => 'btn btn-primary btn-block btn-flat']) ?>
            </div>
        </div>
<?php ActiveForm::end(); ?>
        <a href="<?= \yii\helpers\Url::toRoute('user/login') ?>" class="text-center">I already have a membership</a>
    </div><!-- user-register -->
</div>
