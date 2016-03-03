<?php

use yii\helpers\Html;
use yii\helpers\Url;
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

        <?=
        ListView::widget([
            'dataProvider' => $dataProvider,
            'itemView' => '_listchild',
            'summary' => '',
            'emptyText' => ''
        ]);
        ?>

    </div>
</div>
<div class="box box-primary">
    <div class="box-body">
        <h3 class="color-blue fonts-bold heading-strip-white padding-top-sm padding-bottom-sm animated-box">News Feed</h3>
        <div class="row">
            <div class="col-md-6">
                <div class="card-grey">
                    <h4 class="heading-strip-orange color-white text-center">Recent Events</h4>
                    <div class="row">
                        <?php
                        $i = 0;
                        foreach ($events as $event) {
                            ?>
                            <?php
                            if (!Yii::$app->findShared->isShared($event->shared_with, $event->user_id)) {
                                continue;
                            }
                            ?>
                            <?php
                            //var_dump($event->sharedChecker()); die();
                            if ($event->sharedChecker($event->id) == true) {
                                ?>
                                <?php //var_dump($event->sharedChecker($event->user->id,$event->id)); die();  ?>
                                <?php //if($event->sharedChecker($event->user->id)){   ?>
                                <div class="col-md-12 margin-bottom-lg">
                                    <div class="panel-event-box animated-box">
                                        <div class="col-sm-3 col-xs-2">
                                            <img src="<?= Url::to($event->user->avatar) ?>" class="img-thumbnail"/>
                                        </div>
                                        <div class="col-sm-9 col-xs-10">
                                            <div class="title-texts">
                                                <p class="color-blue font-medium fonts-bold"><?= $event->user->fullname; ?></p>
                                                <p class="color-black"><?= $event->title . "  " . "<span class='color-white label label-info'>" . Html::a('View', ['event/view/' . $event->id], ['class' => 'color-white']) . "</span>"; ?></p>
                                                <span class="label label-success pull-right"><?= date("F jS, Y", strtotime($event->date)); ?></span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <?php
                                //} 
                                if (++$i > 2) {
                                    break;
                                }
                            }
                        }
                        ?>
                    </div>
                </div>
            </div>
            <!-- journals recent -->
            <div class="col-md-6">
                <div class="card-grey">
                    <h4 class="heading-strip-orange color-white text-center">Recent Journals</h4>
                    <div class="row">
                        <?php
                        $i = 0;
                        foreach ($journals as $journal) {
                            ?>
                            <?php
                            if (Yii::$app->findShared->isShared($journal->shared_with, $journal->user_id) == false) {
                                continue;
                            }
                            ?>
                            <?php //if(app\models\Journal::sharedChecker($journal->user->id, $journal->id) != null){   ?>
                            <div class="col-md-12 margin-bottom-lg">
                                <div class="panel-event-box animated-box">
                                    <div class="col-sm-3 col-xs-2">
                                        <img src="<?= $journal->user->profile->image ? '../uploads/avatar/' . $journal->user->profile->image : '../img/avatar.png' ?>" class="img-thumbnail"/>
                                    </div>
                                    <div class="col-sm-9 col-xs-10">
                                        <div class="title-texts">
                                            <p class="color-blue font-medium fonts-bold"><?= $journal->user->fullname; ?></p>
                                            <p class="color-black"><?= substr($journal->entry, 0, 50) . "  " . "<span class='color-white label label-info'>" . Html::a('Read more', ['journal/view/' . $journal->id], ['class' => 'color-white']) . "</span>"; ?></p>
                                            <span class="label label-success pull-right"><?= date("F jS, Y", strtotime($journal->date)); ?></span>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <?php
                            //} 
                            if (++$i > 2) {
                                break;
                            }
                        }
                        ?>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-6">
                <!-- photos semiwidget -->
                <div class="col-md-12 semiwidget-white bordered-grey top-fixed-margin">
                    <h4 class="color-white cancel-margin heading-strip-orange">latest Photos Shared With You</h4>
                    <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                        <!-- Indicators -->
                        <ol class="carousel-indicators">
                            <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                            <li data-target="#carousel-example-generic" data-slide-to="1" class=""></li>
                            <li data-target="#carousel-example-generic" data-slide-to="2" class=""></li>
                        </ol>

                        <!-- Wrapper for slides -->
                        <div class='carousel-inner'>
                            <?php
                            $i = 0;
                            $j = 0;
                            foreach (array_reverse($photos) as $photo) {
                                ?>
                                <?php
                                if (\app\models\Photos::isShared(Yii::$app->user->id, $photo->shared_with) == false && Yii::$app->user->id != $photo->user_id) {
                                    continue;
                                }
                                if (Yii::$app->user->id == $photo->user_id) {
                                    continue;
                                }
                                if ($j++ > 6)
                                    break;
                                $i++;
                                ?>
                                <div class="item <?= $i == 1 ? 'active' : '' ?>">
                                    <a href="<?= Url::to(['/photos/view', 'id' => $photo->user->id]) ?>"><img src="<?= $photo->url . $photo->filename ?>" alt='' /></a>
                                </div>
                            <?php } ?>
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
            </div>
            <div class="col-md-6">
                <div class="col-md-12 semiwidget-white bordered-grey top-fixed-margin">
                    <h4 class="color-white cancel-margin heading-strip-orange">Wishlist Items Assigned to you</h4>
                    <!-- items -->
                    <div class="panel-scroller-box">
                        <?=
                        ListView::widget([
                            'dataProvider' => $wishlists,
                            'itemView' => '_wishlist',
                            'summary' => '',
                            'emptyText' => 'No Wishlist Found'
                        ]);
                        ?>
                    </div>
                    <!-- items ends -->
                </div>
            </div>
        </div>
    </div>
</div>