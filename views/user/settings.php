<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;
use yii\widgets\ListView;

/* @var $this yii\web\View */
/* @var $model app\models\User */
/* @var $model app\models\Profile */
/* @var $form ActiveForm */

$this->title = 'Family Settings';
$this->params['breadcrumbs'][] = $this->title;
?>

<div class="">
    <div class="row">

        <?=
        $this->render('_formchild', [
            'model' => $user,
            'profile' => $profile,
        ])
        ?>
        <?=
        ListView::widget([
            'dataProvider' => $dataProvider,
            'itemView' => '_child',
            'summary' => '',
            'emptyText' => ''
        ]);
        ?>
    </div>
</div>