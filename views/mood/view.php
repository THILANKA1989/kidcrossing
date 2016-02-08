<?php
//use app\models\Mood;
//use app\models\User;
use yii\helpers\Html;
use yii\widgets\DetailView;
use yii\helpers\ArrayHelper;
/* @var $this yii\web\View */
/* @var $model app\models\Mood */
use app\models\Mood;
$this->title = "Mood Summary";
$this->params['breadcrumbs'][] = $this->title;
//$moods = new Mood();
$mood = Mood::percentageMonthly($model->id);
$year = Mood::happyPercentage($model->id);
$today = Mood::percentageToday($model->id);
//var_dump($year); die();
?>

<div class="row">
          
         <div class="col-lg-4">
           <div class="box box-primary top-fixed-margin grey-card-large">
            <div class="box-header with-border">
              <i class="fa fa-bar-chart-o"></i>
               
              <h3 class="box-title">Moods Summary of the Month</h3>
            </div>
            <div class="box-body">
              <canvas class="center-blocked" id="skills" height="300"></canvas>
            </div>
            <!-- /.box-body-->
          </div>
         </div>

         <div class="col-lg-4">
           <div class="box box-primary top-fixed-margin grey-card-large">
            <div class="box-header with-border">
              <i class="fa fa-bar-chart-o"></i>

              <h3 class="box-title">Descriptive Summary</h3>
              <div class="box-body">
                <ul class="custom-list-two color-blue">
                  <li class="color-grey">Happy<span class="pull-right color-blue"><?= $mood['happy']; ?>%</span></li>
                  <li>Sad<span class="pull-right color-blue"><?= $mood['sad']; ?>%</span></li>
                  <li class="color-grey">Excited<span class="pull-right color-blue"><?= $mood['excited']; ?>%</span></li>
                  <li>Angry<span class="pull-right color-blue"><?= $mood['angry']; ?>%</span></li>
                  <li class="color-grey">Bored<span class="pull-right color-blue"><?= $mood['bored']; ?>%</span></li>
                </ul>
                  <div class="card-grey">
                      <h4 class="fonts-bold color-white heading-strip-orange">
                          <?= yii\grid\GridView::widget([
                            'dataProvider' => $moodProvider,
                            'columns' => [
                                'mood',
                            ],
                            'caption' => $model->fullname."'s "." "."Current Mood",
                        ]); ?>
                         
                      </h4>
                 </div>
                <div class="card-grey">
                  <h4 class="heading-strip-grey">Happy Percentage Today<span class="pull-right color-blue"><?php echo $today;  ?>%</span></h4>
                </div>
              </div>
            <!-- /.box-body-->
          </div>
         </div>
         </div>

         <div class="col-lg-4">
           <div class="box box-primary top-fixed-margin grey-card-large">
            <div class="box-header with-border">
              <i class="fa fa-bar-chart-o"></i>

              <h3 class="box-title">Description & Indexes</h3>
            </div>
            <div class="box-body">
                <h4 class="top-fixed-margin">Tip!</h4>
                <p class="color-blue">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec gravida finibus felis, eget fermentum neque pulvinar a. Mauris et elementum sapien. Aliquam eget aliquam nibh. Aliquam pretium id enim ut maximus. Nulla est libero, consectetur non tellus ac, condimentum rhoncus tellus. Nulla quis sagittis mi,</p>
            </div>
            <!-- /.box-body-->
          </div>
         </div>
         <!-- bar chart -->
         <div class="col-md-12">
           
           <div class="box box-primary top-fixed-margin">
            <div class="box-header with-border">
              <i class="fa fa-bar-chart-o"></i>

              <h3 class="box-title">Summary of the year - Happiness Percentage</h3>
            </div>
            <div class="box-body full-width">
              <canvas id="clients" class="full-width barchart"></canvas></div>
            </div>
            <!-- /.box-body-->
          </div>
          <!-- bar chart ends -->

          <!-- area chart ends -->
         </div>


<?php $this->registerJs("var pieData = [
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

                var context = document.getElementById('skills').getContext('2d');
                var skillsChart = new Chart(context).Pie(pieData);


var barData = {
    labels: ['January', 'February', 'March', 'April', 'May', 'June','July', 'August', 'September', 'October', 'November', 'December'],
    datasets: [
        {
            label: 'Tom',
            fillColor: '#382765', //color scheme of the child
            data: [".$year[0].",".$year[1].",".$year[2].",".$year[3].", ".$year[4].", ".$year[5].",".$year[6].",".$year[7].",".$year[8].",".$year[9].",".$year[10].",".$year[11]."]
        },
    ]
};



var context = document.getElementById('clients').getContext('2d');
var clientsChart = new Chart(context).Bar(barData,{
});",
        yii\web\View::POS_END,
        'reg-moods');
?>
<?php $this->registerJsFile(Yii::$app->request->baseUrl.'/js/Chart.min.js',['depends' => [\yii\web\JqueryAsset::className()]]); ?>