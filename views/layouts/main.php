<?php
/* @var $this \yii\web\View */
/* @var $content string */

use yii\helpers\Html;
use yii\helpers\Url;
use yii\widgets\Breadcrumbs;
use app\assets\AppAsset;

AppAsset::register($this);
?>
<?php $this->beginPage() ?>
<!DOCTYPE html>
<html lang="<?= Yii::$app->language ?>">
    <head>
        <meta charset="<?= Yii::$app->charset ?>">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <?= Html::csrfMetaTags() ?>
        <title><?= Html::encode($this->title) ?></title>
        <!-- Font Awesome -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
        <!-- Ionicons -->
        <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
        <?php $this->head() ?>
        <script type="text/javascript">var baseUrl = '<?= Url::base() ?>';</script>
    </head>
    <body class="<?= Yii::$app->user->isGuest ? 'login-page' : 'skin-blue sidebar-mini' ?>">
        <?php $this->beginBody() ?>
        <?php
        if (Yii::$app->user->isGuest):
            print $content;
        else:
            ?>
            <div class="wrapper">
                <?php
                require_once 'header.php';
                require_once 'nav.php';
                ?>

                <div class="content-wrapper"><!-- Content Header (Page header) -->
                    <section class="content">
                        <section class="content-header">
                            <h1><?= Html::encode($this->title) ?></h1>
                            <?=
                            Breadcrumbs::widget([
                                'links' => isset($this->params['breadcrumbs']) ? $this->params['breadcrumbs'] : [],
                            ])
                            ?>
                        </section>
                        <div class="fixed-margin-top">
                            <?php
                            foreach (Yii::$app->session->getAllFlashes() as $key => $message) {
                                echo '<div class="alert alert-' . $key . '">' . $message . "</div>\n";
                            }
                            ?>
                            <?= $content ?>
                        </div>
                    </section>
                </div>
                <?php
                require_once 'footer.php';
                ?>
            </div>
        <?php
        endif;

        yii\bootstrap\Modal::begin([
            'header' => '<h4 class="modal-title"></h4>',
            'headerOptions' => ['id' => 'modalHeader'],
            'id' => 'modal',
            'size' => 'modal-lg',
            //keeps from closing modal with esc key or by clicking out of the modal.
            // user must click cancel or X to close
            'clientOptions' => ['backdrop' => 'static', 'keyboard' => true]
        ]);
        echo "<div id='modalContent'></div>";
        yii\bootstrap\Modal::end();
        ?>
        <?php $this->endBody() ?>
    </body>
</html>
<?php $this->endPage() ?>
