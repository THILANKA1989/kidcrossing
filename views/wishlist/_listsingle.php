<?php

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
use yii\helpers\Html;
?>

    <?php if(count($model->wishlists) != 0){ ?>
        <div class="col-md-4"><!-- single user -->
              <!-- Widget: user widget style 1 -->
              <div class="box box-widget widget-user">
                <!-- Emoji for widget -->
                <!-- Emoji for widget ends -->
                <!-- Add the bg color to the header using any of the bg-* classes -->
                <div class="widget-user-header"  style="background-color: <?= $model->profile->color ?>">
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
                        <h5 class="description-header">Wish List</h5>
                      </div>
                    </div>
                    <!-- /.col -->
                    <div class="col-sm-4">
                    </div>
                    <!-- /.col -->
                  </div>
                  <!-- /.row -->
                </div>
               <div class="panel-scroller-box">
                <?php 
                $i = 0;
                $count = 1; 
                foreach(array_reverse($model->wishlists) as $model){ 

                    if ($i++ > 4) break;
                                  $count++;
                 ?>
     
                 <div class="wishlist-panel semiwidget-grey <?= $count % 2 != 0 ? 'background-white' : 'background-grey' ?>"><!-- single item starts -->
                  <div class="col-xs-8">
                    <img src="<?= $model->getEmoticon($model->emoji); ?>" class="img-thumbnail pull-left img-fixed-small align-v-middle"/>
                     <div class="left-padset">
                        <h4 class="color-blue left-padset"><?=$model->title ?></h4>
                        <p class="font-small left-padset">for <?=$model->event ?></p>
                     </div>
                  </div>
                  <div class="col-xs-4">
                     <img src="<?= $model->getAssignedUser($model->assigned_to) ?>" class="img-thumbnail pull-left img-fixed-small align-v-middle"/>
                      <div class="left-padset"><h5 class="color-blue left-padset">
                        <?php
                          if($model->status == 0){ ?>
                              <i class="pull-right color-red fa fa-times fa-2x align-v-middle"></i>
                        <?php  }else{ ?>
                              <i class="pull-right color-green fa fa-check fa-2x align-v-middle"></i>
                        <?php  }
                          ?></h5></div>
                  </div>
                </div><!-- single item ends -->

                <?php } ?>
               </div>
                <div class="col-lg-12 list-title semiwidget-grey">
                  <h5 class="text-center"><a href="#">View More&nbsp;&nbsp;<i class="fa fa-arrow-circle-o-right"></i></a></h5>
                </div>
                </div>
              </div>
              <!-- /.widget-user1 -->
    <?php } ?>

