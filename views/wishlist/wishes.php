<?php

use yii\helpers\Html;
use yii\grid\GridView;
use yii\helpers\Url;
use yii\bootstrap\Modal;
use yii\widgets\ListView;

/* @var $this yii\web\View */
/* @var $searchModel app\models\WishlistSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Wishlists';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="row"> 
     <?= ListView::widget([
                                'dataProvider' => $dataProvider,
                                'itemView' => '_listsingle',
                                'summary'=>'',
             ]); ?>
</div>