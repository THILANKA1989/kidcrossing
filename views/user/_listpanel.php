<?php
/* @var $this yii\web\View */
/* @var $form yii\bootstrap\ActiveForm */
/* @var $model app\models\Journal */

use yii\helpers\Html;
?>
<div class="col-md-12">
    <p class="fonts-bold padset-left color-blue">
    <p class="color-blue fonts-bold"><?= Html::a(" $model->entry", ['journal/'.$model->id]); ?>
        <span class="label label-success pull-right"><?= count($model->comments) ?> Comments</span>
    </p>
    </p>
</div>
