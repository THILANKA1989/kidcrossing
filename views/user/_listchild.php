<?php
/* @var $this yii\web\View */
/* @var $form yii\bootstrap\ActiveForm */
/* @var $model app\models\LoginForm */

use yii\helpers\Html;
?>

<div class="col-md-4"><!-- single user -->
    <!-- Widget: user widget style 1 -->
    <div class="box box-widget widget-user">
        <!-- Emoji for widget -->
        <div class="widget-emoji">
            <i class="fa fa-smile-o fa-4x"></i>
        </div>
        <!-- Emoji for widget ends -->
        <!-- Add the bg color to the header using any of the bg-* classes -->
        <div class="widget-user-header" style="background-color:<?= $model->profile->color ?>">
            <h3 class="widget-user-username"><?= $model->fullname ?></h3>
            <h5 class="widget-user-desc">is&nbsp;&nbsp;<i class="fa fa-smile-o fa-3x"></i>&nbsp;&nbsp;Today</h5>

        </div>
        <div class="widget-user-image">
            <img class="img-circle" src="<?= yii\helpers\Url::to($model->avatar) ?>" alt="<?= $model->fullname ?>">
        </div>

        <div class="box-footer">
            <div class="row">
                <div class="col-sm-1 border-right">
                    <!-- /.description-block -->
                </div>
                <!-- /.col -->
                <div class="col-sm-10 border-right">
                    <div class="description-block">
                        <h5 class="description-header"><?= Html::a($model->fullname, ['user/view', 'id' => $model->id], ['class' => 'text-center']); ?></h5>
                        <span class="description-text"><?= $model->profile->label ?></span>
                    </div>
                    <!-- /.description-block -->
                    
                </div>
                <!-- /.col -->
                <div class="col-sm-1">
                    <!-- /.description-block -->
                </div>
                <!-- /.col -->
            </div>
            <!-- /.row -->
        </div>
        
    </div>
    <!-- /.widget-user1 -->
</div>