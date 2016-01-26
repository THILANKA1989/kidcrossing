<?php
/* @var $this yii\web\View */

use yii\helpers\Html;

$this->title = 'About';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="site-about">
    <h1><?= Html::encode($this->title) ?></h1>

    <?php echo Html::beginTag('p', array('class' => '')); ?>
    This is the About page. You may modify the following file to customize its content:
    <?php echo Html::endTag('p'); ?>

    <code><?= __FILE__ ?></code>
</div>
<?php
$events = array();
//Testing
$Event = new app\models\Event();
$Event->id = 1;
$Event->title = 'Testing';
$Event->date = date('Y-m-d\Th:m:s\Z');
$events[] = $Event;

$Event = new app\models\Event();
$Event->id = 2;
$Event->title = 'Testing second';
$Event->date = date('Y-m-d\Th:m:s\Z', strtotime('tomorrow 6am'));
$events[] = $Event;


?>
 
