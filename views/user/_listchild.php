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
                <div class="col-sm-4 border-right">
                    <!-- /.description-block -->
                </div>
                <!-- /.col -->
                <div class="col-sm-4 border-right">
                    <div class="description-block">
                        <h5 class="description-header"><?= $model->fullname ?></h5>
                        <span class="description-text"><?= $model->profile->label ?></span>
                    </div>
                    <!-- /.description-block -->
                    <a href="#" class="content-arrow-btn text-center collapsed" data-toggle="collapse" data-target="#user<?= $model->id ?>" aria-expanded="false">View summary&nbsp;&nbsp;<i class="fa fa-arrow-circle-o-right"></i></a>
                </div>
                <!-- /.col -->
                <div class="col-sm-4">
                    <!-- /.description-block -->
                </div>
                <!-- /.col -->
            </div>
            <!-- /.row -->
        </div>
        <div id="user<?= $model->id ?>" class="collapse" aria-expanded="false" style="height: 0px;">
            <!-- Journal semiwidget -->
            <div class="col-md-12 semiwidget-grey">
                <h4 class="color-blue cancel-margin heading-strip-white">Journal Entries<span class="font-small">  (3) New entries</span></h4>
                <ul class="custom-list-one">
                    <li class="color-blue bold-fonts">Entry one, The child entered a journal note and no-one comments on it<span class="font-small">  |  4 <i class="fa fa-comment"></i></span> </li>
                    <li class="color-blue bold-fonts">Entry Two<span class="font-small">  |  3 <i class="fa fa-comment"></i></span> </li>
                    <li class="color-blue bold-fonts">Entry Three<span class="font-small">  |  3 <i class="fa fa-comment"></i></span> </li>
                </ul>
            </div><!-- Journal semiwidget ends -->
            <!-- activity semiwidget -->
            <div class="col-md-12 semiwidget-white">
                <h4 class="color-blue cancel-margin heading-strip-grey">Activites<span class="font-small">  (3) New entries</span></h4>
                <ul class="custom-list-one">
                    <li class="color-blue bold-fonts">Entry one, The child entered a journal note and no-one comments on it</li>
                    <li class="color-blue bold-fonts">Entry Two</li>
                    <li class="color-blue bold-fonts">Entry Three</li>
                </ul>
            </div><!-- activity semiwidget ends -->
            <!-- Events semiwidget -->
            <div class="col-md-12 semiwidget-grey">
                <h4 class="color-blue cancel-margin heading-strip-white">Events<span class="font-small">  (3) New entries</span></h4>
                <ul class="custom-list-one">
                    <li class="color-blue bold-fonts">Entry one, The child entered a journal note and no-one comments on it<span class="font-small">  |  4 <i class="fa fa-comment"></i></span> </li>
                    <li class="color-blue bold-fonts">Entry Two<span class="font-small">  |  3 <i class="fa fa-comment"></i></span> </li>
                    <li class="color-blue bold-fonts">Entry Three<span class="font-small">  |  3 <i class="fa fa-comment"></i></span> </li>
                </ul>
            </div><!-- Events semiwidget ends -->
            <!-- photos semiwidget -->
            <div class="col-md-12 semiwidget-white">
                <h4 class="color-blue cancel-margin heading-strip-grey">Latest Photos</h4>
                <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                    <!-- Indicators -->
                    <ol class="carousel-indicators">
                        <li data-target="#carousel-example-generic" data-slide-to="0" class=""></li>
                        <li data-target="#carousel-example-generic" data-slide-to="1" class=""></li>
                        <li data-target="#carousel-example-generic" data-slide-to="2" class="active"></li>
                    </ol>

                    <!-- Wrapper for slides -->
                    <div class="carousel-inner">
                        <div class="item">
                            <img src="http://placehold.it/400x200&amp;text=slide1" alt="">
                        </div>
                        <div class="item">
                            <img src="http://placehold.it/400x200&amp;text=slide2" alt="">
                        </div>
                        <div class="item active">
                            <img src="http://placehold.it/400x200&amp;text=slide3" alt="">
                        </div>
                    </div>

                    <!-- Controls -->
                    <a class="left carousel-control" href="#carousel-example-generic" data-slide="prev">
                        <span class="glyphicon glyphicon-chevron-left"></span>
                    </a>
                    <a class="right carousel-control" href="#carousel-example-generic" data-slide="next">
                        <span class="glyphicon glyphicon-chevron-right"></span>
                    </a>
                </div>
            </div><!-- photos semiwidget ends -->
            <!-- Wishlist semiwidget -->
            <div class="col-md-12 semiwidget-grey">
                <h4 class="color-blue cancel-margin heading-strip-white">Wish List<span class="font-small">  (3) New entries</span></h4>
                <ul class="custom-list-one">
                    <li class="color-blue bold-fonts">Entry one, The child entered a journal note and no-one comments on it<span class="font-small">  |  4 <i class="fa fa-comment"></i></span> </li>
                    <li class="color-blue bold-fonts">Entry Two<span class="font-small">  |  3 <i class="fa fa-comment"></i></span> </li>
                    <li class="color-blue bold-fonts">Entry Three<span class="font-small">  |  3 <i class="fa fa-comment"></i></span> </li>
                </ul>
            </div><!-- Wishlist semiwidget ends -->
        </div>
    </div>
    <!-- /.widget-user1 -->
</div>