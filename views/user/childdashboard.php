<?php

use yii\helpers\Html;
use yii\grid\GridView;
//use yii\helpers\Url;
//use yii\bootstrap\Modal;
use yii\widgets\ActiveForm;
use yii\widgets\ListView;
use yii\widgets\Pjax;
use app\models\Mood;
/* @var $this yii\web\View */
/* @var $model app\models\User */
/* @var $model app\models\Profile */
/* @var $form ActiveForm */


$this->title = 'Child Dashboard';
$this->params['breadcrumbs'][] = $this->title;
//echo Html::encode($this->journal);
?>
       <!-- Content Header (Page header) -->


                
                        <!--<div class="col-xs-1"></div>
                        <div class="col-xs-2">
                             <a href="#" data-mood="Sad" class="mood"><img src="<?= Yii::$app->request->baseUrl ?>/img/moods/sad.png" width="70px" class="center-blocked"></a>
                        </div>
                        <div class="col-xs-2">
                            <a href="#" data-mood="Excited" class="mood"><img src="<?= Yii::$app->request->baseUrl ?>/img/moods/excited.png" width="70px" class="center-blocked"></a>
                        </div>
                        <div class="col-xs-2">
                            <a href="#" data-mood="Bored" class="mood"><img src="<?= Yii::$app->request->baseUrl ?>/img/moods/bored.png" width="70px" class="center-blocked"></a>
                        </div>
                        <div class="col-xs-2">
                            <a href="#" data-mood="Happy" class="mood"><img src="<?= Yii::$app->request->baseUrl ?>/img/moods/happy.png" width="70px" class="center-blocked"></a>
                        </div>
                        <div class="col-xs-2">
                            <a href="#" data-mood="Angry" class="mood"><img src="<?= Yii::$app->request->baseUrl ?>/img/moods/angry.png" width="70px" class="center-blocked"></a>
                        </div>
                        <div class="col-xs-1"></div>-->
                               <?= $this->render('_mood', [
									'model' => $moods,
								]) ?>        
   
       <div class="background-white top-fixed-margin bordered-grey padding-large">
            
            <?php 
            $count = (5-Mood::find()->where(['user_id' => Yii::$app->user->getId(), 'date' => date("Y-m-d")])->count());
            $count == 1 ? $entry_label = "Entry" : $entry_label = "Entries";
            
            Pjax::begin(['id'=>'moodbox','class' => 'moodbox'])?>
              <?php if($count != 5){  ?>
            	<?= GridView::widget([
                    'dataProvider' => $moodsProvider,
                    'columns' => [
                        'mood',
                    ],
                     'caption'=> "<span class='label label-danger font-small'>".$count."</span>"." "."<span class='font-small color-bule'>".$entry_label." remaining"."</span>",
                     'options' => ['class'=>'moodbox-table'],
                     'emptyText' => '',
                ]); ?>
                     <?php } ?>
            <?php Pjax::end() ?>	
  
       </div>


          <div class="row">
            <!-- column moods and parent profiles -->
            <div class="col-md-12">
              <div class="row">
                
                    <!--<ul class="custom-list-one pull-right moodlist">
                      <li class="pull-right"><a href="#" data-mood="Sad"><img src="dist/img/sad.png" height="70px"/></a></li>
                      <li class="pull-right"><a href="#" data-mood="Excited"><img src="dist/img/excited.png" height="70px"/></a></li>
                      <li class="pull-right"><a href="#" data-mood="Bored"><img src="dist/img/bored.png" height="70px"/></a></li>
                      <li class="pull-right"><a href="#" data-mood="Happy"><img src="dist/img/happy.png" height="70px"/></a></li>
                      <li class="pull-right"><a href="#" data-mood="Angry"><img src="dist/img/angry.png" height="70px"/></a></li>
                    </ul>-->
                    
                    <!-- display mode names -->
                    <div class="fundInfoContainer" data-fundId="1" style="display: none">
                        <p class="fonts-bold">You are Sad Today&nbsp;&nbsp;<a href="#" class="btn btn-success">Change now</a></p>
                    </div>
                    <div class="fundInfoContainer" data-fundId="2" style="display: none">
                        <p class="fonts-bold">You are Excited Today&nbsp;&nbsp;<a href="#" class="btn btn-success">Change now</a></p>
                    </div>
                    <div class="fundInfoContainer" data-fundId="3" style="display: none">
                        <p class="fonts-bold">You are Bored Today&nbsp;&nbsp;<a href="#" class="btn btn-success">Change now</a></p>
                    </div>
                    <div class="fundInfoContainer" data-fundId="4" style="display: none">
                        <p class="fonts-bold">You are Happy Today&nbsp;&nbsp;<a href="#" class="btn btn-success">Change now</a></p>
                    </div>
                    <div class="fundInfoContainer" data-fundId="5" style="display: none">
                        <p class="fonts-bold">You are Angry Today&nbsp;&nbsp;<a href="#" class="btn btn-success">Change now</a></p>
                    </div>
                    <!-- display mode names ends -->
               
                <!--parent account panels -->
                 <!-- single user -->
                              <?= ListView::widget([
                                'dataProvider' => $dataProvider,
                                'itemView' => '_listparent',
                                'summary'=>'',
                            ]); ?>
                <!--single user ends -->

                <!--parent account panels -->
              </div>
            </div>
            <div class="col-md-6">
                
                <!-- wishlist -->
                  <div class="col-md-12 semiwidget-white bordered-white bordered-grey">
                      <h4 class="color-white cancel-margin heading-strip-orange">Your Latest Wish</h4>
                      <div class="row">
                        <div class="col-xs-4">
                          <img class="thumbnail center-blocked top-fixed-margin" src="http://www.pricenfees.com/wp-content/uploads/2015/07/Turtle-Beach-Ear-Force-Stealth-500P-Premium-Fully-Wireless-Gaming-Headset-with-DTS-HeadphoneX-7.1-Surround-Sound-for-PlayStation-4-PlayStation-3-90x90.jpg">
                        </div>
                        <div class="col-xs-8 card-grey">
                        <h4 class="color-blue fonts-bold">Gaming Headphone Apple.</h4>
                        <p class="color-black">From Dad</p>
                        <a href="#" class="btn btn-danger">Add New +</a>
                      </div>
                    </div>
                  </div><!-- wishlist semiwidget ends -->
                    <!-- photobox -->
                 <!-- photos semiwidget -->
                    <div class="col-md-12 semiwidget-white bordered-grey top-fixed-margin">
                      <h4 class="color-white cancel-margin heading-strip-orange">My Photos</h4>
                      <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                          <!-- Indicators -->
                          <ol class="carousel-indicators">
                              <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                              <li data-target="#carousel-example-generic" data-slide-to="1" class=""></li>
                              <li data-target="#carousel-example-generic" data-slide-to="2" class=""></li>
                          </ol>
                          
                          <!-- Wrapper for slides -->
                          <div class="carousel-inner">
                              <div class="item active">
                                  <img src="http://placehold.it/400x200&amp;text=slide1" alt="">
                              </div>
                              <div class="item">
                                  <img src="http://placehold.it/400x200&amp;text=slide2" alt="">
                              </div>
                              <div class="item">
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

                <!-- photobox ends -->
            </div>
            <div class="col-md-6">
                 <div class="col-md-12 semiwidget-white bordered-white bordered-grey">
                      <h4 class="color-white cancel-margin heading-strip-orange">Your Latest Journal Entry</h4>
                       
                              <?= ListView::widget([
                                'dataProvider' => $journalProvider,
                                'itemView' => '_listpanel',
                                'summary'=>'',
                            ]); ?>
                  </div>
            </div>
            <!-- column moods and parent profiles -->
          </div>
              <!-- /.widget-user1 -->
        <!-- Main content -->

