<?php

use yii\helpers\Html;
use yii\widgets\DetailView;
use yii\helpers\Url;
/* @var $this yii\web\View */
/* @var $model app\models\Photos */
//var_dump($model); die();
$this->title = 'Photos of'.' '.$model->fullname;
$this->params['breadcrumbs'][] = ['label' => 'Photos', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="box box-primary">
    <div class="box-body">
        <div class="photos-index">
            <?php //var_dump($photos); die();  ?>
        <?php $items =  app\models\Photos::getItems($model->id) ;?>
         
        <?= dosamigos\gallery\Gallery::widget(['items' => $items]);?>
        </div>
    </div>
</div>
