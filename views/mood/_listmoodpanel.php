<?php
/* @var $this yii\web\View */
/* @var $form yii\bootstrap\ActiveForm */
/* @var $model app\models\Journal */

use yii\helpers\Html;
use app\models\Mood;

$mood = Mood::percentageMonthly($model->id);
?>
<?php
$date = date("Y-m-d");
if(Mood::find()->where(['user_id' => Yii::$app->user->getId(), 'date' => $date])->count() < 5 ){ ?>

        <div class="col-md-4"><!-- single user -->
              <!-- Widget: user widget style 1 -->
              <div class="box box-widget widget-user">
                <!-- Emoji for widget -->
                <div class="widget-emoji">
                  <i class="fa fa-smile-o fa-4x"></i>
                </div>
                <!-- Emoji for widget ends -->
                <!-- Add the bg color to the header using any of the bg-* classes -->
                <div class="widget-user-header" style="background-color:<?= $model->profile->color ?>">
                  <h3 class="widget-user-username"><?= $model->fullname ?></h3>
                  <h5 class="widget-user-desc">is&nbsp;&nbsp;<i class="fa fa-smile-o fa-3x"></i>&nbsp;&nbsp;Today</h5>
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
                        <h5 class="description-header"><?= Html::a(" $model->fullname", ['mood/view/'.$model->id]); ?></h5>
                        <span class="description-text">Child</span>
                      </div>
                    </div>
                    <!-- /.col -->
                    <div class="col-sm-4">
                      <!-- /.description-block -->
                    </div>
                    <!-- /.col -->
                  </div>
                  <!-- /.row -->
                </div>
                <div class="semiwidget-grey">
                    <h4 class="heading-strip-orange color-white">Summary of the last month</h4>
                    <!-- graph -->
                  <div class="row">
                   <div class="col-md-12 padding-large style-box">
                     <ul class="custom-list-two color-blue">
                        <li class="color-grey">Happy<span class="pull-right color-blue"><?= $mood['happy']; ?>%</span></li>
                        <li>Sad<span class="pull-right color-blue"><?= $mood['sad']; ?>%</span></li>
                        <li class="color-grey">Excited<span class="pull-right color-blue"><?= $mood['excited']; ?>%</span></li>
                        <li>Angry<span class="pull-right color-blue"><?= $mood['angry']; ?>%</span></li>
                        <li class="color-grey">Bored<span class="pull-right color-blue"><?= $mood['bored']; ?>%</span></li>
                     </ul>
              <!-- graph -->
                   </div>
                </div>
            </div><!-- /.widget-user1 -->
        </div><!-- single user ends -->
<?php } ?>            
                
<?php $this->registerJs("var pieData".$model->id." = [
                   {
                      value: ".$mood['happy'].",
                      label: 'Happy',
                      color: '#811BD6'
                   },
                   {
                      value: ".$mood['sad'].",
                      label: 'Sad',
                      color: '#9CBABA'
                   },
                   {
                      value: ".$mood['angry'].",
                      label: 'Angry',
                      color: '#D18177'
                   },
                   {
                      value : ".$mood['excited'].",
                      label: 'Excited',
                      color: '#6AE128'
                   },
                   {
                      value : ".$mood['bored'].",
                      label: 'bored',
                      color: '#fAE340'
                   }
                ];

                var context = document.getElementById('skills".$model->id."').getContext('2d');
                var skillsChart".$model->id." = new Chart(context).Pie(pieData".$model->id.");",
        yii\web\View::POS_END,
        'reg-moods');
?>
    
<?php $this->registerJsFile(Yii::$app->request->baseUrl.'/js/Chart.min.js',['depends' => [\yii\web\JqueryAsset::className()]]); ?>