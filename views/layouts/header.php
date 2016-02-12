<?php

use yii\bootstrap\Nav;
use yii\bootstrap\NavBar;
use yii\helpers\Url;
use app\models\Notification;
use yii\helpers\Html;
use yii\widgets\ActiveForm;

$notification = new Notification();
$events = Notification::find()->where(['type'=> 'event','status'=> 0,'shared_id'=> Yii::$app->user->id])->orderBy(['date'=> SORT_DESC])->all();
$journals = Notification::find()->where(['type'=> 'journal','status'=> 0,'shared_id'=> Yii::$app->user->id])->orderBy(['date'=> SORT_DESC])->all();
$number_new_events = count($events);
$number_new_journals = count($journals);
?>
<!-- Main Header -->
<header class="main-header">

    <!-- Logo -->
    <a href="<?= Yii::$app->homeUrl ?>" class="logo">
        <!-- mini logo for sidebar mini 50x50 pixels -->
        <span class="logo-mini"><b>K</b>C</span>
        <!-- logo for regular state and mobile devices -->
        <span class="logo-lg"><b>Kids</b>Crossing</span>
    </a>

    <!-- Header Navbar -->
    <nav class="navbar navbar-static-top" role="navigation">
        <!-- Sidebar toggle button-->
        <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button" id='hideshow'>
            <span class="sr-only">Toggle navigation</span>
        </a>
        <!-- Navbar Right Menu -->
        <div class="navbar-custom-menu">
            <ul class="nav navbar-nav">
                <!-- home buttonm -->
                <li>
                    <a href="#" data-toggle="control-sidebar"><i class="fa fa-home"></i></a>
                </li>
                <!-- Messages: style can be found in dropdown.less-->
                <li class="dropdown messages-menu">
                    <!-- Menu toggle button -->
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                        <i class="fa fa-envelope-o"></i>
                        <span class="label label-success">4</span>
                    </a>
                    <ul class="dropdown-menu">
                        <li class="header">You have 4 messages</li>
                        <li>
                            <!-- inner menu: contains the messages -->
                            <ul class="menu">
                                <li><!-- start message -->
                                    <a href="#">
                                        <div class="pull-left">
                                            <!-- User Image -->
                                            <img src="<?= Url::to('@web/img/user2-160x160.jpg') ?>" class="img-middle" alt="User Image">
                                        </div>
                                        <!-- Message title and timestamp -->
                                        <h4>
                                            Support Team
                                            <small><i class="fa fa-clock-o"></i> 5 mins</small>
                                        </h4>
                                        <!-- The message -->
                                        <p>Why not buy a new awesome theme?</p>
                                    </a>
                                </li><!-- end message -->
                            </ul><!-- /.menu -->
                        </li>
                        <li class="footer"><a href="#">See All Messages</a></li>
                    </ul>
                </li><!-- /.messages-menu -->
                <!-- journals Menu -->
                <!-- Notifications Menu -->
                <li class="dropdown notifications-menu">
                    <!-- Menu toggle button -->
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" id="calendar_notify">
                        <i class="fa fa-list-ol"></i>
                        <span class="label label-warning"><?=$number_new_journals ?></span>
                    </a>
                    <ul class="dropdown-menu">
                        <li class="header">You have <?=$number_new_journals ?> Events</li>
                        <li>
                            <!-- Inner Menu: contains the notifications -->
                           
                            <ul class="menu">
                                 <?php foreach($journals as $journal){ ?>
                                    <li>
                                    <div class="row panel-footer padding-top-sm">
                                    <a href="<?= Url::toRoute([$journal->type.'/view/','id' => $journal->type_id,'notify' => $journal->id ]) ?>" class="alerted">
                                      <div class="col-xs-3">
                                             <img src="<?= $journal->user->profile->image ? '../uploads/avatar/' . $journal->user->profile->image : '../img/avatar.png' ?>" class="img-circle" width="50px" height="50px"/>
                                          </div>
                                        <div class="col-xs-9">
                                            <p class="fonts-bold color-blue cancel-margin"><?= $journal->description ?></p><span class="font-small"><?= $journal->date ?></span>
                                            <p class="font-small"><?= "By ".$journal->user->fullname;?></p>
                                        </div>
                                    </div></a>
                                    
                                    </li><!-- end notification -->
                                <?php }?>
                            </ul>
                        </li>
                        <li class="footer"><a href="<?=Url::toRoute(['/notification/index'])  ?>">View all</a></li>
                    </ul>
                </li>
                <!-- journals menu -->
                <!-- Events Menu -->
                <li class="dropdown notifications-menu">
                    <!-- Menu toggle button -->
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" id="calendar_notify">
                        <i class="fa fa-calendar"></i>
                        <span class="label label-warning"><?=$number_new_events ?></span>
                    </a>
                    <ul class="dropdown-menu">
                        <li class="header">You have <?=$number_new_events ?> Events</li>
                        <li>
                            <!-- Inner Menu: contains the notifications -->
                           
                            <ul class="menu">
                                 <?php foreach($events as $event){ ?>
                                    <li>
                                    <div class="row panel-footer padding-top-sm">
                                    <a href="<?= Url::toRoute([$event->type.'/view/','id' => $event->type_id,'notify' => $event->id ])?>" class="alerted">
                                      <div class="col-xs-3">
                                             <img src="<?= $event->user->profile->image ? '../uploads/avatar/' . $event->user->profile->image : '../img/avatar.png' ?>" class="img-circle" width="50px" height="50px"/>
                                          </div>
                                        <div class="col-xs-9">
                                            <p class="fonts-bold color-blue cancel-margin"><?= $event->description ?></p><span class="font-small"><?= $event->date ?></span>
                                            <p class="font-small"><?= "By ".$event->user->fullname;?></p>
                                        </div>
                                    </div></a>
                                    
                                    </li><!-- end notification -->
                                <?php }?>
                            </ul>
                        </li>
                        <li class="footer"><a href="<?=Url::toRoute(['/notification/index'])  ?>">View all</a></li>
                    </ul>
                </li>

                <!-- Control Sidebar Toggle Button -->
                <li>
                    <a href="#" data-toggle="control-sidebar"><i class="fa fa-users"></i></a>
                </li>
                <?php if(!Yii::$app->user->isGuest) ?>
                <li>
                    <a href="<?= Url::toRoute('/user/logout')?>" data-method="post" title="Sign Out"><i class="fa fa-sign-out"></i></a>
                </li>
                <?php ?>
            </ul>
        </div>
    </nav>
</header>

