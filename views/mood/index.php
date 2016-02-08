<?php

use yii\helpers\Html;
//use yii\grid\GridView;
//use yii\helpers\Url;
//use yii\bootstrap\Modal;
//use yii\widgets\ActiveForm;
use yii\widgets\ListView;
//use yii\widgets\Pjax;
use yii\widgets\ActiveForm;
/* @var $this yii\web\View */
/* @var $model app\models\User */
/* @var $model app\models\Profile */
/* @var $form ActiveForm */

/* @var $this yii\web\View */
/* @var $searchModel app\models\MoodSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Moods';
$this->params['breadcrumbs'][] = $this->title;

?>
<div class="">
    <div class="row">
        <?= ListView::widget([
           'dataProvider' => $dataProvider,
           'itemView' => '_listmoodpanel',
           'summary'=>'',
        ]); ?>
    </div>
</div>
