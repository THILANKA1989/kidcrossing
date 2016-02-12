<?php
use yii\helpers\Html;
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

            <!--<h1><?= Html::encode($this->title) ?></h1>-->

          <?= ListView::widget([
            'dataProvider' => $dataProvider,
            'itemView' => '_listchild',
            'summary'=>'',
        ]); ?>

    </div>
</div>
    <div class="box box-primary">
        <div class="box-body">
            <h3 class="color-blue fonts-bold heading-strip-white padding-top-sm padding-bottom-sm">News Feed</h3>
            <div class="card-grey">
                <h4 class="heading-strip-orange color-white text-center">Recent Events</h4>
                <div class="row">
                <?php
                    $events = app\models\User::newsFeed('events');
                     $i = 0;    
                    foreach($events as $event){ ?>
                    
                 <?php
                    //var_dump($event->sharedChecker()); die();
                 if($event->sharedChecker($event->id) == true){ ?>
                    <?php //var_dump($event->sharedChecker($event->user->id,$event->id)); die(); ?>
                         <?php  //if($event->sharedChecker($event->user->id)){  ?>
                            <div class="col-md-6 margin-bottom-lg">
                                <div class="panel-event-box">
                                    <div class="col-xs-2">
                                        <img src="<?= $event->user->profile->image ? '../uploads/avatar/' . $event->user->profile->image : '../img/avatar.png' ?>" class="img-thumbnail"/>
                                    </div>
                                    <div class="col-xs-10">
                                        <div class="title-texts">
                                            <p class="color-blue font-medium fonts-bold"><?= $event->user->fullname; ?></p>
                                            <p class="color-black"><?= $event->title; ?></p>
                                            <span class="label label-success pull-right"><?= Yii::$app->formatter->asDate($event->date,'php:d-m-y') ?></span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                    <?php //} 
                        if(++$i >5){ break;}
                 }
            }?>
            </div>
            </div>
            <!-- journals recent -->
              <div class="card-grey">
                <h4 class="heading-strip-orange color-white text-center">Recent Journals</h4>
                <div class="row">
                <?php
                    $journals = app\models\User::newsFeed('journals');
                     $i = 0;    
                    foreach($journals as $journal){ ?>
             
                         <?php   //if(app\models\Journal::sharedChecker($journal->user->id, $journal->id) != null){  ?>
                            <div class="col-md-6 margin-bottom-lg">
                                <div class="panel-event-box">
                                    <div class="col-xs-2">
                                        <img src="<?= $journal->user->profile->image ? '../uploads/avatar/' . $journal->user->profile->image : '../img/avatar.png' ?>" class="img-thumbnail"/>
                                    </div>
                                    <div class="col-xs-10">
                                        <div class="title-texts">
                                            <p class="color-blue font-medium fonts-bold"><?= $journal->user->fullname; ?></p>
                                            <p class="color-black"><?= $journal->entry; ?></p>
                                            <span class="label label-success pull-right"><?= Yii::$app->formatter->asDate($journal->date,'php:d-m-y') ?></span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        
                    <?php  //} 
                        if(++$i >5){ break;}
                       }?>
            </div>
            </div>
            
        </div>
    </div>