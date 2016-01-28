<?php

/* 
 * This is the comment section for single journals
 * action controller : actionView
 */
?>

<div class="box-comment">
                    <!-- User image -->
                    <img class="img-circle img-sm" src="<?= \yii\helpers\Url::to($model->user->avatar) ?>" alt="User Image">

                    <div class="comment-text">
                        <span class="username">
                            <?= $model->user->fullname ?>
                            <span class="text-muted pull-right"><?= $model->timeago ?></span>
                            
                        </span><!-- /.username -->

                        <?= $model->comment ?>
                    </div>
                    <!-- /.comment-text -->
                </div>
        
        
        
