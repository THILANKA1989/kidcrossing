<?php

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
use yii\helpers\Html;
?>
<?php
count(Yii::$app->user->identity->findParents()) == 2 ? $column = "col-md-6" :  $column = "col-md-12"; 
?>
<div class="<?= $column?>"><!-- single user -->
                  <!-- Widget: user widget style 1 -->
                  <div class="box box-widget widget-user">
                    <!-- Emoji for widget -->
                    <!-- Emoji for widget ends -->
                    <!-- Add the bg color to the header using any of the bg-* classes -->
                    <div class="widget-user-header" style="background-color:<?= $model->profile->color ?>">
                        <h3></h3>
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
                            <p class="text-center"> <?= $model->profile->label ?> </p>
                          </div>
                        </div>
                        <!-- /.col -->
                        <div class="col-sm-4">
                        </div>
                        <!-- /.col -->
                      </div>
                      <!-- /.row -->
                    </div>
                    <!-- messages semiwidget -->
                    <div class="col-md-12 semiwidget-grey">
                      <h4 class="color-blue cancel-margin heading-strip-white">Messages (3)</h4>
                      <div class="panel-white">
                        <p class="color-grey padset-left listed-fonts animated-box"><a href="#">Keep It Simple Son, I was just Kidding!</a></p>
                        <p class="color-grey padset-left listed-fonts animated-box"><a href="#">Your present is ready!</a></p>
                        <p class="color-grey padset-left listed-fonts animated-box"><a href="#">Come home early!</a></p>
                      </div>
                    </div><!-- photos semiwidget ends -->
                     <!-- Events semiwidget -->
                    <div class="col-md-12 semiwidget-white">
                        <h4 class="color-blue cancel-margin heading-strip-grey">New Events (3)</h4>
                          <?php  
                            $i = 0;    
                            foreach (array_reverse($model->events) as $models) {
                                echo "<p class='color-blue fonts-bold listed-fonts'>".Html::a(" $models->title", ['event/'])."</p>";
                                if(++$i >2){ break;}
                            }?>
                    </div><!-- events semiwidget ends -->
                    <!-- messages semiwidget ends -->
                     <!-- photos semiwidget -->
                    <div class="col-md-12 semiwidget-grey">
                      <h4 class="color-blue cancel-margin heading-strip-white">Latest Photos</h4>
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
                          <a class="left carousel-control" href="#carousel-example-generic" data-slide="prev">
                              <span class="glyphicon glyphicon-chevron-left"></span>
                          </a>
                          <a class="right carousel-control" href="#carousel-example-generic" data-slide="next">
                              <span class="glyphicon glyphicon-chevron-right"></span>
                          </a>
                      </div>
                    </div><!-- photos semiwidget ends -->
                    
                    <div class="col-lg-12 list-title semiwidget-grey">
                      <h5 class="text-center"><a href="#">View More&nbsp;&nbsp;<i class="fa fa-arrow-circle-o-right"></i></a></h5>
                    </div>

                  </div>
                  
                  <!-- /.widget-user1 -->
                </div>
                <!--single user ends -->