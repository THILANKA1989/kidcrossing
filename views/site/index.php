<?php
/* @var $this yii\web\View */

//\yii\helpers\VarDumper::dump(Yii::$app->user->identityCookie, 1000, true);
if (Yii::$app->user->isGuest):
    $this->title = 'Kid Crossing';
    ?>
    <div class="login-box">

        <div class="jumbotron">

            <div class="login-logo">
                <a href="<?= Yii::$app->homeUrl ?>"><b>Kid</b>Crossing</a>
            </div>
            <h2>Welcome!</h2>
            <p class="lead">Please </p>

            <p><a class="btn btn-lg btn-success" href="user/login">Login</a></p>
            <p class="lead">if your a member already.</p>

            <p>Or</p>

            <p><a class="btn btn-lg btn-success" href="user/signup">Register </a> </p>
            <p class="lead">a new membership.</p>
        </div>

        <div class="body-content">


        </div>
    </div>
    <?php
else :
    $this->title = 'Dashboard';
    ?>

<?php
endif;