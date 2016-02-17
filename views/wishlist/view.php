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
<div class="box box-primary">
    <div class="box-body">
        <div class="wishlist-index">
            <span class="color-blue font-medium">Enter items to your wishlist</span>
                 <?php
                   if(Yii::$app->user->identity->level == 1) echo "";
                    //var_dump($this->user->level);
                   else echo Html::button('Add Item+',
                            [
                        'class' => 'btn btn-info btn-ajax-modal pull-right font-lg special-btn',
                        'value' => Url::to(['/wishlist/create']),
                        'data-target' => '#modal',
                    ]);
                 ?>
        </div>
    </div>
</div>


<div class="row">
             <?= ListView::widget([
                                'dataProvider' => $dataProvider,
                                'itemView' => '_listwishes',
                                'summary'=>'',
             ]); ?>
    
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