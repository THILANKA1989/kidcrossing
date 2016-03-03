<?php
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
//\yii\helpers\VarDumper::dump($model, 1000, true); die;
?>
Hi <?= $model->first_name ?>,
<p>You have successfully registered at kid crossing.
Click on <a href="<?= yii\helpers\Url::to(['user/activate/', 'token' => $model->user->access_token]) ?>"> Activation URL</a> to activate your account</p>
<p> Thank you.</p>