<?php
use yii\helpers\Html;
use yii\widgets\ActiveForm;
use yii\widgets\ListView;


/* @var $this yii\web\View */
/* @var $model app\models\User */
/* @var $model app\models\Profile */
/* @var $form ActiveForm */

$this->title = 'Dashboard';
$this->params['breadcrumbs'][] = $this->title;
?>

<div class="">
    <div class="row">

            <!--<h1><?= Html::encode($this->title) ?></h1>-->

          <?= ListView::widget([
            'dataProvider' => $dataProvider,
            'itemView' => '_listchild',
            'summary'=>'',
        ]); ?>
    </div>
</div>