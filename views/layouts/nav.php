<?php

//use yii\bootstrap\Nav;
//use yii\bootstrap\NavBar;
use yii\widgets\Menu;
use yii\helpers\Url;
use yii\helpers\Html;

//yii\helpers\VarDumper::dump(Yii::$app->user, 1000, true);
//var_dump(Yii::$app->user->identity->findFamily()->all());
?>

<!-- Left side column. contains the logo and sidebar -->
<aside class="main-sidebar">

    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">

        <!-- Sidebar user panel (optional) -->
        <div class="user-panel">
            <div class="image user-image-thumbnail">
                <img src="<?= Url::to(Yii::$app->user->identity->avatar) ?>" class="img-middle image" alt="<?= Yii::$app->user->identity->fullname ?>">
            </div>

            <div class="user-buttons info">
                <p class="color-white text-center"><?= Yii::$app->user->identity->fullname ?></p>
                <a href="<?= Url::toRoute(['user/profile/', 'id' => Yii::$app->user->id]); ?>" class="btn btn-info fixed-button-width color-white">Edit Profile</a>
                <a href="<?= Url::toRoute(['user/settings/', 'id' => Yii::$app->user->id]); ?>" class="btn btn-info pull-right fixed-button-width color-white">Settings</a>
            </div>
        </div>
        <div class="family-members-div background-blue other-members" id="members-div">
            <div class="row">
                <?php
                $members = Yii::$app->user->identity->others;
                if ($members):
                    foreach ($members as $member):
                        $links[] = ['label' => '<i class="fa fa-home"></i> <span>' . $member->fullname . '</span>', 'url' => Yii::$app->user->identity->level == 3 ? ['/user/', 'id' => $member->id] : ['/user/family', 'id' => $member->id]]
                        ?>
                        <div class="col-xs-3 small-padded-div">
                            <a href="<?= Yii::$app->user->identity->level == 3 ? Url::toRoute(['user/view/', 'id' => $member->id]): Url::toRoute(['user/family', 'id' => $member->id]) ?>"><img src="<?= Url::to($member->avatar) ?>" class="img-middle user-square img-small-thumb image" alt="<?= $member->fullname ?>"></a>
                        </div>
                        <?php
                    endforeach;
                else:
                    $links[] = ['label' => '<i class="fa fa-users"></i> <span>Create Family</span>', 'url' => ['/user/family']]
                    ?>
                    <div class="col-xs-12 small-padded-div">
                        <?= Html::a(Yii::t('app', 'Create Family'), ['user/family'], ['class' => 'btn btn-info btn-large']) ?>
                    </div> 
                <?php endif; ?>
            </div>
        </div>

        <?php
        /* NavBar::begin([
          'brandLabel' => 'Kid Crossing',
          'brandUrl' => Yii::$app->homeUrl,
          'options' => [
          'class' => '',
          ],
          ]); */
        echo Menu::widget([
            'options' => ['class' => 'sidebar-menu'],
            'encodeLabels' => false,
            'items' => [
                ['label' => '<a href="#"><i class="fa fa-users"></i> <span>Family Members</span></a>', 'options' => ['class' => 'treeview family-members-btn', 'url' => '#'], 'items' => $links],
                ['label' => '<i class="fa fa-home"></i> <span>Dashboard</span>', 'url' => Yii::$app->user->identity->level != 3 ? ['/user/dashboard'] : ['/user/child']],
                ['label' => '<i class="fa fa-book"></i> <span>Journals</span>', 'url' => ['/journal']],
                ['label' => '<i class="fa fa-calendar"></i> <span>Events</span>', 'url' => ['/event/index']],
                Yii::$app->user->identity->level != 3 ? ['label' => '<i class="fa fa-smile-o"></i> <span>Moods</span>', 'url' => ['/mood/index']] : '' ,
                Yii::$app->user->identity->level == 3 ? ['label' => '<i class="fa fa-list"></i> <span>WishList</span>', 'url' => ['/wishlist/view/'.Yii::$app->user->id]] : ['label' => '<i class="fa fa-list"></i> <span>WishList</span>', 'url' => ['/wishlist/index']],
                ['label' => '<i class="fa fa-child"></i> <span>Activities</span>', 'url' => ['/activity/index']],
                //['label' => 'Contact', 'url' => ['/site/contact']],
                Yii::$app->user->identity->level == 0 ? ['label' => '<i class="fa fa-users"></i> <span>Users</span>', 'url' => ['/user/index']] : '',
                ['label' => '<i class="fa fa-camera"></i> <span>Photos</span>', 'url' => ['/photos/index']],
            ],
            'submenuTemplate' => "\n<ul class='treeview-menu'>\n{items}\n</ul>\n",
        ]);
        //NavBar::end();
        ?>

    </section>
</aside>