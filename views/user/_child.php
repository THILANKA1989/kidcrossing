<?php
/* @var $this yii\web\View */
/* @var $form yii\bootstrap\ActiveForm */
/* @var $model app\models\LoginForm */

use yii\helpers\Html;
?>
<div class="col-md-4">

    <div class="box box-widget widget-user">

        <!-- Add the bg color to the header using any of the bg-* classes -->
        <div class="widget-user-header bg-aqua-active">

        </div>
        
        <div class="widget-user-image">
            <img class="img-circle" src="<?= yii\helpers\Url::to($model->avatar) ?>" alt="<?= $model->fullname ?>">
        </div>

        <div class="box-footer">
            <div class="row">
                <div class="col-sm-4 border-right">
                    <!-- /.description-block -->
                </div>
                <!-- /.col -->
                <div class="col-sm-4 border-right">
                    <div class="description-block">
                        <h5 class="description-header"><?= $model->fullname ?></h5>
                    </div>
                </div>
                <!-- /.col -->
                <div class="col-sm-4"></div>
                <!-- /.col -->
            </div>
            <!-- /.row -->
        </div>
        
        <div class="box-small-container center-blocked padset-bottom-large">
            <?= Html::a(Yii::t('app', 'Edit Profile'), ['family', 'id'=>$model->id], ['class' => 'btn btn-info btn-large pull-left']) ?>
            <a href="#" class="btn btn-info btn-danger pull-right">Edit Color</a>
        </div>

    </div>
    
</div>