<?php

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
use yii\helpers\Html;
?>
 <div class="background-white panel-white">
              <div class="col-md-3">
                <div class="grey-card fixed-margin-top">
                  <h3 class="text-center color-blue"><?= $model->title ?></h3>
                  <p class="text-center">by <?= $model->user->fullname ?></p>
                  <img class="center-blocked" src="http://briankjames.com/images/icons/icon-camera.png" width="120px"/>
                  <p class="text-center font-bold color-blue">For <?= $model->event ?></p>
                  <p class="text-center"><?= $model->date?></p>
                </div>
              </div>
</div>
