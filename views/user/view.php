<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model app\models\User */

$this->title = $model->fullname;
$this->params['breadcrumbs'][] = ['label' => Yii::t('app', 'Users'), 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>

<div class="box box-primary">
    <div class="box-body">

    <!--<h1><?= Html::encode($this->title) ?></h1>-->

        <p>
            <?php Html::a(Yii::t('app', 'Update'), ['update', 'id' => $model->id], ['class' => 'btn btn-primary']) ?>
            <?php
            Html::a(Yii::t('app', 'Delete'), ['delete', 'id' => $model->id], [
                'class' => 'btn btn-danger',
                'data' => [
                    'confirm' => Yii::t('app', 'Are you sure you want to delete this item?'),
                    'method' => 'post',
                ],
            ])
            ?>
        </p>

        


<div class="row">
    <div class="col-md-5">
        <div class="user-thumbnail-large">
            <img src="<?= $model->profile->image ? '../uploads/avatar/' . $model->profile->image : '../img/avatar.png' ?>" class="img-responsive"/>
        </div>
    </div>
    <div class="col-md-7">
        <div class="user-info-large">
            <?php /*
        DetailView::widget([
            'model' => $model,
            'attributes' => [
                //'id',
                'fullname',
                'identity:email',
                'role',
                //'password',
                //'auth_key',
                //'access_token',
                'profile.label',
                'profile.mobile',
                'profile.street',
                'profile.area',
                'profile.city',
                'profile.zipcode',
            ],
        ])
        */?>
            <h4 class="heading-strip-orange color-white font-large fonts-bold text-center"><?= $model->fullname;  ?></h4>
            <div class="user-block padding-large">
                <p class="color-blue fonts-bold font-medium margin-left-large background-grey">Role:&nbsp;&nbsp;<?= $model->role ?></p>
                <p class="color-blue fonts-bold font-medium margin-left-large">Mobile:&nbsp;&nbsp;<?= $model->profile->mobile ? $model->profile->mobile : 'Not Entered yet'; ?></p>
                <p class="color-blue fonts-bold font-medium margin-left-large background-grey">Street:&nbsp;&nbsp;<?= $model->profile->street; ?></p>
                 <p class="color-blue fonts-bold font-medium margin-left-large">Area:&nbsp;&nbsp;<?= $model->profile->area; ?></p>
                 <p class="color-blue fonts-bold font-medium margin-left-large background-grey">City:&nbsp;&nbsp;<?= $model->profile->city; ?></p>
                 <p class="color-blue fonts-bold font-medium margin-left-large">Family:&nbsp;&nbsp;</p><?php 
                        foreach ($model->others as $others){ ?>
                            <span class="label label-success"><?= $others->fullname ?></span>
                      <?php  } 
              ?>
            </div>
        </div>
        <?php if(count($model->journals)> 0){ ?>
        <div class="user-info-large margin-top-large">
            <h4 class="font-medium fonts-bold">Latest Journal Entries Shared with you (<?=count($model->journals)?>)</h4>
             <?php  
                            $i = 0;    
                            foreach ($model->journals as $model) {
                                echo "<p class='color-blue fonts-bold'>".Html::a(" $model->entry", ['journal/'.$model->id])."</p>";
                                if(++$i >2){ break;}
                            }?>
        </div>
        <?php } ?>
    </div>
</div>

    </div>
</div>