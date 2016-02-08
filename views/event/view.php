<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model app\models\Event */

$this->title = $model->title;
$this->params['breadcrumbs'][] = ['label' => Yii::t('app', 'Events'), 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="event-view">

    <!--<h1><?php //Html::encode($this->title)  ?></h1>-->

    <p class="text-right">
        <?php if (Yii::$app->user->id == $model->user_id): ?>
            <?= Html::a(Yii::t('app', 'Update'), ['update', 'id' => $model->id], ['class' => 'btn btn-primary']) ?>
            <?=
            Html::a(Yii::t('app', 'Delete'), ['delete', 'id' => $model->id], [
                'class' => 'btn btn-danger',
                'data' => [
                    'confirm' => Yii::t('app', 'Are you sure you want to delete this item?'),
                    'method' => 'post',
                ],
            ])
            ?>
        <?php endif; ?>
    </p>

    <?=
    DetailView::widget([
        'model' => $model,
        'attributes' => [
            //'id',
            ['attribute' => 'date',
                'value' => Yii::$app->formatter->asDate($model->date, 'd-M-Y'),
            ],
            'title',
            'description:ntext',
            'venue',
            ['attribute' => 'user.fullname',
                'label' => 'Created by',
            ],
             ['attribute' => 'sharedwith',
                            'label' => 'Shared With',
                            'format' => 'raw',
                        ],
        ],
    ])
    ?>

</div>
