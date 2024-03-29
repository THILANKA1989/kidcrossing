<?php

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
use yii\helpers\Html;
use yii\helpers\Url;
?>
  <!-- single user -->
   <?php if(count($model->photos) != 0){ ?>
            <div class="col-md-4"><!-- single user -->
              <!-- Widget: user widget style 1 -->
              <div class="box box-widget widget-user">
                <!-- Emoji for widget -->
                <!-- Emoji for widget ends -->
                <!-- Add the bg color to the header using any of the bg-* classes -->
                <div class="widget-user-header" style="background-color: <?= $model->profile->color; ?>">
                    <h3><?= $model->fullname ?></h3>
                </div>
                <div class="widget-user-image">
                  <img class="img-circle" src="<?= $model->profile->image ? '../uploads/avatar/' . $model->profile->image : '../img/avatar.png' ?>" alt="User Avatar">
                </div>
                
                <div class="box-footer">
                  <div class="row">
                    <div class="col-sm-4 border-right">
                      <!-- /.description-block -->
                    </div>
                    <!-- /.col -->
                    <div class="col-sm-4 border-right">
                      <div class="description-block">
                        <h5 class="description-header">Photos</h5>
                      </div>
                    </div>
                    <!-- /.col -->
                    <div class="col-sm-4">
                    </div>
                    <!-- /.col -->
                  </div>
                  <!-- /.row -->
                </div>
                 <!-- photos semiwidget -->
                <div class="col-md-12 semiwidget-white setted-height">
                  <h4 class="color-blue cancel-margin heading-strip-grey">Latest Photos</h4>
                  <div id='carousel-example-generic' class='carousel slide' data-ride='carousel'>
                      <!-- Indicators -->
                      <ol class='carousel-indicators hidden'>
                          <li data-target='#carousel-example-generic<?=$model->id?>' data-slide-to='0' class='active'></li>
                          <li data-target='#carousel-example-generic<?=$model->id?>' data-slide-to='1'></li>
                          <li data-target='#carousel-example-generic<?=$model->id?>' data-slide-to='2'></li>
                      </ol>
                      
                      <!-- Wrapper for slides -->
                      <div class='carousel-inner'>
                          <?php 
                          $i=0;
                          $j = 0;
                          foreach(array_reverse($model->photos) as $photo){ ?>
                          <?php 
                          
                          if(\app\models\Photos::isShared(Yii::$app->user->id,$photo->shared_with) == false && Yii::$app->user->id != $photo->user_id){
                                continue;
                          }
                          if ($j++ > 6) break;
                          $i++; 
                            ?>
                          <div class="item <?= $i == 1 ? 'active' : '' ?>">
                              <img src="<?= $photo->url.$photo->filename ?>" alt='' />
                          </div>
                          <?php } ?>
                      </div>
                          
                      <!-- Controls -->
                      <a class='left carousel-control' href='#carousel-example-generic<?=$model->id?>' data-slide='prev'>
                          <span class='glyphicon glyphicon-chevron-left hidden'></span>
                      </a>
                      <a class='right carousel-control' href='#carousel-example-generic<?=$model->id?>' data-slide='next'>
                          <span class='glyphicon glyphicon-chevron-right hidden'></span>
                      </a>
                  </div>
                </div><!-- photos semiwidget ends -->
                
                <div class="col-lg-12 list-title semiwidget-grey">
                  <h5 class="text-center"><a href="<?=Url::to(['/photos/view','id'=> $model->id])?>">View More&nbsp;&nbsp;<i class="fa fa-arrow-circle-o-right"></i></a></h5>
                </div>

              </div>
              
              <!-- /.widget-user1 -->
            </div><!-- single user ends -->
   <?php } ?>