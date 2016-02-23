<?php
use \app\models\Rating;
use yii\widgets\ActiveForm;
use yii\helpers\Html;
use kartik\rating\StarRating;
use yii\widgets\DetailView;
$rating = new Rating();
/* @var $this yii\web\View */
/* @var $model app\models\Activity */

$this->title = $model->title;
$this->params['breadcrumbs'][] = ['label' => 'Activities', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>

<div class="row">
    <div class="col-md-12"><h3 class="heading-strip-orange color-white text-center"><?= $model->title ?></h3></div>
    <div class="col-md-6">
        <div class="box box-primary">
            <div class="box-body">
                <h4 class="text-center">Description</h4>
                <p class="text-center"><?= $model->description ?></p>
            </div>
        </div>
        <div class="col-md-12 background-white"><p class="color-blue text-aqua">Rate this!</p></div>
         <div class="rating-box pull-right box box-primary padding-small">
                        
                        <?php $form = ActiveForm::begin([
                            'action' => '@web/rating/create',
                            'id' => 'rateform'.$model->id,
                        ]); ?>
                         <?= StarRating::widget([
                                'name' => 'rating'.$model->id,
                                'value' => \app\models\Rating::averageRating($model->id),
                                'disabled' => false
                            ]); ?>
                          <?php echo   $form->field($rating, 'user_id',['options' => ['value'=> Yii::$app->user->id] ])->hiddenInput()->label(false); ?>
                          <?php echo   $form->field($rating, 'activity_id',['options' => ['value'=> $model->id] ])->hiddenInput()->label(false); ?>
                        <?php ActiveForm::end(); ?>
                    </div>
    </div>
   <div class="col-md-6">
    <div class="box box-primary">
        <div class="box-body">
            <div class="activity-view">
                <?= DetailView::widget([
                    'model' => $model,
                    'attributes' => [
                        'user.fullname',
                        'title',
                        'date',
                    ],
                ]) ?>
            </div>
        </div>
    </div>
    </div>
</div>