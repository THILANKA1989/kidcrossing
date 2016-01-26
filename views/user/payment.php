<?php
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

use yii\bootstrap\ActiveForm;
//yii\helpers\VarDumper::dump($model, 1000, true);
?>
<div class="login-box">
    <div class="login-logo">
        <a href="#"><b>Kid</b>Crossing</a>
    </div>
    <!-- /.login-logo -->
    <div class="login-box-body">
        <p class="login-box-msg">Payment using Stripe</p>
        <?php
        foreach (Yii::$app->session->getAllFlashes() as $key => $message) {
            echo '<div class="alert alert-' . $key . '">' . $message . "</div>\n";
        }
        ?>
        <?php
        $form = ActiveForm::begin([
                    'id' => 'payment-form',
                    'options' => ['class' => 'text-center'],
        ]);
        ?>
        <script
            src="https://checkout.stripe.com/checkout.js" class="stripe-button"
            data-key="pk_test_6ZjvtIh4xQnf6RYwXo4aYxR1"
            data-image="/kidcrossing/web/img/credit/visa.png"
            data-name="Test Subscriber"
            data-description="Subscription for 1 weekly box"
            data-amount="1000"
            data-label="Pay now!" >
        </script>
        <?php ActiveForm::end(); ?>
    </div>
</div>