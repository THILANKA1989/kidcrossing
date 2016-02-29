<?php

use yii\helpers\Html;
use yii\widgets\DetailView;
use yii\helpers\ArrayHelper;
use app\models\Comment;
use yii\widgets\ListView;

/* @var $this yii\web\View */
/* @var $model app\models\Journal */

//$this->title = $model->id;
//$this->params['breadcrumbs'][] = ['label' => 'Journals', 'url' => ['index']];
//$this->params['breadcrumbs'][] = $this->title;
?>
<p>
    <?php //not needed for now ?>
    <?php
    Html::a('Update',
            ['update',
        'id' => $model->id],
            ['class' => 'btn btn-primary'])
    ?>
    <?php
    Html::a('Delete',
            ['delete',
        'id' => $model->id],
            [
        'class' => 'btn btn-danger',
        'data' => [
            'confirm' => 'Are you sure you want to delete this item?',
            'method' => 'post',
        ],
    ])
    ?>


</p>

<div class="row">
    <div class="col-md-2"></div>
    <!-- single user -->
    <div class="col-md-8 top-fixed-margin">
        <div>
            <?= \yii\helpers\Html::a( 'Back', \yii\helpers\Url::to('./'), ['class' => 'btn pull-right', 'style'=>'text-decoration:underline;']); ?>
        </div>
        <!-- Box Comment -->
        <div class="box box-widget">
            <div class="box-header with-border">
                <div class="user-block">
                    <img class="img-circle" src="<?= \yii\helpers\Url::to($model->user->avatar) ?>" alt="User Image">
                    <span class="username"><a href="#"><?= $model->user->fullname; ?></a></span>
                    <span class="description">Shared with <?= $model->getSharedWith(true) ?> - <?=
                        Yii::$app->formatter->asDate($model->date,
                                'php:d-m-y')
                        ?></span>
                </div>
                <!-- /.user-block -->
                
            </div>
            <!-- /.box-header -->
            <div class="box-body">
                <!-- post text -->
                <p><?= $model->entry ?></p>

                <!-- Social sharing buttons -->
                <span class="pull-right text-muted">
                    <?= $commentProvider->getCount(); ?> comments</span>
            </div>
            <!-- /.box-body -->

            <div class="box-footer box-comments">
                <?=
                ListView::widget([
                    'dataProvider' => $commentProvider,
                    'itemView' => '_comment',
                    'emptyText' => 'No comments found.'
                ]);
                ?>


            </div>
            <!-- /.box-footer -->
            <div class="box-footer">
                <?=
                $this->render('commentForm',
                        ['journal' => $model,
                    'comment' => $comment]);
                ?>
            </div>
            <!-- /.box-footer -->
        </div>
        <!-- /.box -->
    </div>  <!-- single user ends -->
    <div class="col-md-2"></div>

</div>


