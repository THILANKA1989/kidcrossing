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
        <div class="col-md-12 background-white"><h3 class="color-blue text-aqua text-center">Current Rating</h3></div>
         <div class="rating-box pull-right box box-primary padding-small">
             <h1 class="font-large color-green text-center"><?= $rate->averageRating($model->id); ?>/5</h1>         
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