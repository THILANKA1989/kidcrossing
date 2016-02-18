<?php
/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
use yii\widgets\ActiveForm;
use yii\helpers\Html;
?>

 <div class="col-lg-3 bottom-alignment">
                  <div class="grey-card">
                    <div class="image-box-small">
                      <h3 class="text-center color-blue bold-fonts"><?= $model->title ?></h3>
                      <p class="text-center"><?= date("F jS, Y",strtotime($model->date));  ?></p>
                    </div>
                    <div class="rating-box">
              
                        <?php $form = ActiveForm::begin(); ?>
                          <input id="input-2d" type="number" class="rating center-blocked top-alignment" min="0" max="5" step="0.5" data-size="md"
                          data-symbol="&#xe005;" data-default-caption="{rating} hearts" data-star-captions="{}">
                
                        <?php ActiveForm::end(); ?>
                        <p class="text-center color-blue bordered-top-grey padset-top">Added by <?=$model->user->fullname?></p>
                    </div>
                  </div>
</div>


