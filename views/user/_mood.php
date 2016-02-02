<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\models\Mood */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="mood-form">

    <?php $form = ActiveForm::begin([
              'action' => ['mood/create'],
            ]); ?>

    <?= $form->field($model, 'mood')-> listBox(
            array('Sad'=>'Sad','Happy'=>'Happy','Excited'=>'Excited','Angry'=>'Angry','Bored'=>'Bored'),
            array('prompt'=>'Select','size'=>4)
            ); ?>
    <div class="form-group">
        <?= Html::submitButton($model->isNewRecord ? 'Set Mood' : 'Update', ['class' => $model->isNewRecord ? 'btn btn-success' : 'btn btn-primary']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
