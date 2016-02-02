<?php

use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel app\models\MoodSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Moods';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="mood-index">

    <h1><?= Html::encode($this->title) ?></h1>
    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <p>
        <?= Html::a('Create Mood', ['create'], ['class' => 'btn btn-success']) ?>
    </p>

    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

            'id',
            'user_id',
            'mood',
            'date',
            'time',

            ['class' => 'yii\grid\ActionColumn'],
        ],
    ]); ?>

</div>
