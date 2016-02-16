<?php


use yii\helpers\Html;
use yii\grid\GridView;
use yii\helpers\Url;
use yii\bootstrap\Modal;

/* @var $this yii\web\View */
/* @var $searchModel app\models\WishlistSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Wishlists';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="wishlist-index">

    <h1><?= Html::encode($this->title) ?></h1>
    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>
    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

            'id',
            'user_id',
            'emoji',
            'assigned_to:ntext',
            'date',

            ['class' => 'yii\grid\ActionColumn'],
        ],
    ]); ?>

</div>


<div class="row">
            <div class="background-white panel-white">
              <div class="col-md-3">
                <div class="grey-card fixed-margin-top">
                  <h3 class="text-center color-blue">Nikon Camera</h3>
                  <p class="text-center">by Mom</p>
                  <img class="center-blocked" src="http://briankjames.com/images/icons/icon-camera.png" width="120px"/>
                  <p class="text-center font-bold color-blue">For Christmas</p>
                  <p class="text-center">12th February 2015</p>
                </div>
              </div>
            </div>

            <div class="background-white panel-white">
              <div class="col-md-3">
                <div class="grey-card fixed-margin-top">
                  <h3 class="text-center color-blue">Nikon Camera</h3>
                  <p class="text-center">by Mom</p>
                  <img class="center-blocked" src="http://briankjames.com/images/icons/icon-camera.png" width="120px"/>
                  <p class="text-center font-bold color-blue">For Christmas</p>
                  <p class="text-center">12th February 2015</p>
                </div>
              </div>
            </div>

            <div class="background-white panel-white">
              <div class="col-md-3">
                <div class="grey-card fixed-margin-top">
                  <h3 class="text-center color-blue">Nikon Camera</h3>
                  <p class="text-center">by Mom</p>
                  <img class="center-blocked" src="http://briankjames.com/images/icons/icon-camera.png" width="120px"/>
                  <p class="text-center font-bold color-blue">For Christmas</p>
                  <p class="text-center">12th February 2015</p>
                </div>
              </div>
            </div>

            <div class="background-white panel-white">
              <div class="col-md-3">
                <div class="grey-card fixed-margin-top">
                  <h3 class="text-center color-blue">Nikon Camera</h3>
                  <p class="text-center">by Mom</p>
                  <img class="center-blocked" src="http://briankjames.com/images/icons/icon-camera.png" width="120px"/>
                  <p class="text-center font-bold color-blue">For Christmas</p>
                  <p class="text-center">12th February 2015</p>
                </div>
              </div>
            </div>

            <div class="background-white panel-white">
              <div class="col-md-3">
                <div class="grey-card fixed-margin-top">
                  <h3 class="text-center color-blue">Nikon Camera</h3>
                  <p class="text-center">by Mom</p>
                  <img class="center-blocked" src="http://briankjames.com/images/icons/icon-camera.png" width="120px"/>
                  <p class="text-center font-bold color-blue">For Christmas</p>
                  <p class="text-center">12th February 2015</p>
                </div>
              </div>
            </div>

            <div class="background-white panel-white">
              <div class="col-md-3">
                <div class="grey-card fixed-margin-top">
                  <h3 class="text-center color-blue">Nikon Camera</h3>
                  <p class="text-center">by Mom</p>
                  <img class="center-blocked" src="http://briankjames.com/images/icons/icon-camera.png" width="120px"/>
                  <p class="text-center font-bold color-blue">For Christmas</p>
                  <p class="text-center">12th February 2015</p>
                </div>
              </div>
            </div>

            <div class="background-white panel-white">
              <div class="col-md-3">
                <div class="grey-card fixed-margin-top">
                  <h3 class="text-center color-blue">Nikon Camera</h3>
                  <p class="text-center">by Mom</p>
                  <img class="center-blocked" src="http://briankjames.com/images/icons/icon-camera.png" width="120px"/>
                  <p class="text-center font-bold color-blue">For Christmas</p>
                  <p class="text-center">12th February 2015</p>
                </div>
              </div>
            </div>

            <div class="background-white panel-white">
              <div class="col-md-3">
                <div class="grey-card fixed-margin-top padset-large">
                  <h3 class="text-center">
                  </h3>
                  <p class="text-center color-blue">
                    Add a wisslist item by clicking inside this box and a popup will be prompted.
                  </p>
                 <?= Html::button('Add Item+',
                            [
                        'class' => 'btn btn-info btn-ajax-modal center-blocked special-btn',
                        'value' => Url::to(['/wishlist/create']),
                        'data-target' => '#modal',
                    ]);
                 ?>
                </div>
              </div>
            </div>
            <!-- pagination -->
              <ul class="pagination">
                <li class="paginate_button previous disabled" id="example1_previous"><a href="#" aria-controls="example1" data-dt-idx="0" tabindex="0">Previous</a></li>
                <li class="paginate_button active"><a href="#" aria-controls="example1" data-dt-idx="1" tabindex="0">1</a></li>
                <li class="paginate_button "><a href="#" aria-controls="example1" data-dt-idx="2" tabindex="0">2</a></li><li class="paginate_button "><a href="#" aria-controls="example1" data-dt-idx="3" tabindex="0">3</a></li>
                <li class="paginate_button "><a href="#" aria-controls="example1" data-dt-idx="4" tabindex="0">4</a></li><li class="paginate_button "><a href="#" aria-controls="example1" data-dt-idx="5" tabindex="0">5</a></li>
                <li class="paginate_button "><a href="#" aria-controls="example1" data-dt-idx="6" tabindex="0">6</a></li>
                <li class="paginate_button next" id="example1_next"><a href="#" aria-controls="example1" data-dt-idx="7" tabindex="0">Next</a></li>
              </ul>
            <!-- pagination -->
          </div>


<?php $this->registerJs("$('.btn-ajax-modal').click(function (){
    var elm = $(this),
        target = elm.attr('data-target'),
        url = elm.attr('value');

    $(target).modal('show')
        .find('#modalContent')
        .load(url);
});",
        yii\web\View::POS_END,
        'reg-modal');
?>