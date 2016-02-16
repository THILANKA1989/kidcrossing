<?php


use yii\helpers\Html;
use yii\grid\GridView;
use yii\helpers\Url;
use yii\bootstrap\Modal;
use yii\widgets\ListView;
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
             <?= ListView::widget([
                                'dataProvider' => $dataProvider,
                                'itemView' => '_listwishes',
                                'summary'=>'',
             ]); ?>
    
           
            

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