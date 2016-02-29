<?php
use kartik\widgets\FileInput;
use dosamigos\widgets\gallery;
use yii\helpers\Html;
use yii\widgets\ActiveForm;
use yii\helpers\ArrayHelper;
/* @var $this yii\web\View */
/* @var $model app\models\Photos */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="box box-primary">
    <div class="box-body">
        <div class="photos-form">
          <?php $form = ActiveForm::begin(['options' => ['enctype' => 'multipart/form-data']]) ?>
            <?=
              $form->field($model, 'filename[]')->widget(FileInput::classname(), [
                'options' => ['accept' => 'image/*', 'multiple' => true],
                'pluginOptions' => ['allowedFileExtensions' => ['jpg', 'gif', 'png']]
              ]);
            ?>
          <?= $form->field($model, 'shared_with')->listBox( ArrayHelper::map(Yii::$app->user->identity->others, 'id', 'fullname'), ['multiple' => true] ) ?>
            <div class="form-group">
              <?= Html::submitButton($model->isNewRecord ? 'Create' : 'Update', ['class' => $model->isNewRecord ? 'btn btn-success' : 'btn btn-primary']) ?>
            </div>
          <?php ActiveForm::end(); ?>
        </div>
    </div>
</div>
