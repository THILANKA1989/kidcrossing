<?php
/* @var $this yii\web\View */
/* @var $form yii\bootstrap\ActiveForm */
/* @var $model app\models\LoginForm */

use yii\helpers\Html;
use yii\helpers\Url;
use yii\bootstrap\ActiveForm;

$this->title = 'Login to Kid Crossing';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="login-box">
    <div class="login-logo">
        <a href="<?= Yii::$app->homeUrl ?>"><b>Kid</b>Crossing</a>
    </div>
    <!-- /.login-logo -->
    <div class="login-box-body">
        <p class="login-box-msg">Sign in</p>
        <?php
        foreach (Yii::$app->session->getAllFlashes() as $key => $message) {
            echo '<div class="alert alert-' . $key . '">' . $message . "</div>\n";
        }
        ?>
        <?php
        $form = ActiveForm::begin([
                    'id' => 'login-form',
                    'options' => ['class' => ''],
                    'fieldConfig' => [
                        'template' => "<div class=\"form-group has-feedback\">{label}\n{input}\n<div class=\"col-lg-8\">{error}</div></div>",
                        'labelOptions' => ['class' => 'control-label'],
                    ],
        ]);
        ?>

        <?= $form->field($model, 'username')->textInput(['placeholder' => 'Email or Username']) ?>

        <?= $form->field($model, 'password')->passwordInput(['placeholder' => 'Password']) ?>

        <div class="row">
            <div class="col-xs-8">
                <?=
                $form->field($model, 'rememberMe')->checkbox([
                    'template' => "{input} {label}", //\n<div class=\"col-lg-8\">{error}</div>
                ])
                ?>
            </div>
            <div class="col-xs-4">
                <?= Html::submitButton('Login', ['class' => 'btn btn-primary btn-block btn-flat', 'name' => 'login-button']) ?>
            </div>
        </div>

        <?php ActiveForm::end(); ?>
        <!--<div class="social-auth-links text-center">
            <p>- OR -</p>
            <a href="#" class="btn btn-block btn-social btn-facebook btn-flat"><i class="fa fa-facebook"></i> Sign in using
                Facebook</a>
            <a href="#" class="btn btn-block btn-social btn-google btn-flat"><i class="fa fa-google-plus"></i> Sign in using
                Google+</a>
        </div>-->
        <!-- /.social-auth-links -->

        <a href="#">I forgot my password</a><br>
        <a href="<?= Url::toRoute('/user/signup') ?>" class="text-center">Register a new membership</a>

    </div>
    <!-- /.login-box-body -->
</div>