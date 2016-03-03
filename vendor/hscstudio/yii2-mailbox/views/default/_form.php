<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;
use kartik\select2\Select2;
use yii\helpers\ArrayHelper;

/**
 * @var yii\web\View $this
 * @var hscstudio\startup\models\Mailbox $model
 * @var yii\widgets\ActiveForm $form
 */
?>
<div class="mailbox-form">
	<?php $form = ActiveForm::begin(); ?>
	<?php
	$userClass = \Yii::$app->getUser()->identityClass;
	$users = ArrayHelper::map(
		Yii::$app->user->identity->getOthers(), 'id', 'fullname'
	);
	echo '<div class="form-group">';
	echo $form->field($model, 'receiver')->listBox( ArrayHelper::map(Yii::$app->user->identity->getOthers(), 'id', 'fullname'), ['multiple' => true] ); 
	echo '</div>';
	?>
	<?= $form->field($model, 'subject')->textInput(['maxlength' => 255]) ?>
	<?= $form->field($model, 'content')->textarea(['rows' => 6]) ?>		
	<?= $form->field($model, 'status')->widget(\kartik\widgets\SwitchInput::classname(), [
		'pluginOptions' => [
			'onText' => 'Send',
			'offText' => 'Draft',
		]
	]) ?>
	<div class="form-group">
		<?= Html::submitButton($model->isNewRecord ? 'Create' : 'Update', ['class' => $model->isNewRecord ? 'btn btn-success' : 'btn btn-primary']) ?>
	</div>
	<?php ActiveForm::end(); ?>
</div>
