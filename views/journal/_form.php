<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;
use yii\helpers\ArrayHelper;

/* @var $this yii\web\View */
/* @var $model app\models\Journal */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="box box-primary">
    <div class="box-body no-padding">
        
        <?php
       
        
        
        $form = ActiveForm::begin([
                    'id' => 'user-profile',                   
                                        
        ]);
        $model->shared_with =  explode(",",$model->shared_with);
        
        ?>

       
         <?=
            "<div class='col-md-6'>".
            $form->field($model, 'date')->widget(\yii\jui\DatePicker::classname(), [
            //'language' => 'ru',
            'dateFormat' => 'yyyy-MM-dd',
            'options' => ['class' => 'form-control'],
            'clientOptions' => [
                'changeYear' => true,
                'changeMonth' => true,
                'maxDate' => '+0d',
            ],
        ]). "</div>"
        ?>
        <?=     "<div class='col-md-6'>".
                $form->field($model, 'shared_with')->listBox( ArrayHelper::map(Yii::$app->user->identity->findFamily(true)->all(), 'id', 'fullname'), ['multiple' => true] ) 
                . "</div>"
                ?>
                
        <?=     "<div class='col-md-12'>".
                $form->field($model, 'entry')->textarea(['rows' => 6]) 
                . "</div>"
                ?>
              

        <div class="col-lg-12 form-group">
            <?= Html::submitButton($model->isNewRecord ? Yii::t('app', 'Create') : Yii::t('app', 'Update'), ['class' => 'btn btn-primary pull-right']) ?>
        </div>

        <?php ActiveForm::end(); ?>
        <!-- user-profile -->
    </div>
</div>
