<?php
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
use yii\helpers\Url;
?>
<div class="wishlist-panel semiwidget-grey <?php// $count % 2 != 0 ? 'background-white' : 'background-grey' ?>"><!-- single item starts -->
    <div class="col-xs-8">
        <img src="<?= Url::to($model->emoticon); ?>" class="img-thumbnail pull-left img-fixed-small align-v-middle"/>
        <div class="left-padset">
            <h4 class="color-blue left-padset"><?= $model->title ?></h4>
            <p class="font-small left-padset">for <?= $model->event ?></p>
        </div>
    </div>
    <div class="col-xs-4">
        <a href="<?= Url::to(['/wishlist/view', 'id' => $model->user->id]) ?>"><img src="<?= Url::to($model->user->avatar) ?>" class="img-thumbnail pull-left img-fixed-small align-v-middle"/></a>
        <div class="left-padset">
            <h5 class="color-blue left-padset">
                <i class="pull-right fa <?= ($model->status == 0) ? 'fa-times color-red' : 'fa-check color-green' ?> fa-2x align-v-middle"></i>
            </h5>
        </div>
    </div>
</div><!-- single item ends -->