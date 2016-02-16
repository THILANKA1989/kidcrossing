<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;
use yii\helpers\ArrayHelper;
/* @var $this yii\web\View */
/* @var $model app\models\Wishlist */
/* @var $form yii\widgets\ActiveForm */
?>
<div class="box box-primary">
    <div class="box-body no-padding">
<div class="wishlist-form">

    <?php $form = ActiveForm::begin([
//    'beforeSubmit' => 'window.forms.candidate',
    'enableClientValidation' => true,
//    'enableAjaxValidation' => true,
    'id' => 'wishlist-form',
]); ?>
    
    <?= $form->field($model, 'emoji')->textInput(['rows' => 4]) ?>
    
    <?= $form->field($model, 'title')->textInput(['rows' => 4]) ?>
    
    <?= $form->field($model, 'event')->textInput(['rows' => 4]) ?>
    
    <?= $form->field($model, 'assigned_to')->listBox( ArrayHelper::map(Yii::$app->user->identity->findParents()->all(), 'id', 'fullname'), ['multiple' => false] ) ?>


    <div class="form-group">
        <?= Html::submitButton($model->isNewRecord ? 'Create' : 'Update', ['class' => $model->isNewRecord ? 'btn btn-success' : 'btn btn-primary']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
    </div>
</div>