<?php

use yii\helpers\Html;
use yii\grid\GridView;
use yii\helpers\Url;
use yii\widgets\ListView;
/* @var $this yii\web\View */
/* @var $searchModel app\models\PhotosSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Photos';
?>
<div class="box-body">
    <?php
        if(Yii::$app->user->identity->level == 1) echo "";
            //var_dump($this->user->level);
        else echo Html::button('Add Item+',
                            [
            'class' => 'btn btn-info btn-ajax-modal pull-right font-lg special-btn',
            'value' => Url::to(['/photos/create']),
            'data-target' => '#modal',
        ]);
    ?>


</div>
<div class="box box-primary">
    <div class="box-body">
        <div class="photos-index">

        <?php $items = [
            [
                'url' => 'http://farm4.static.flickr.com/3789/9476654149_b4545d2f25_b.jpg',
                'src' => 'http://farm4.static.flickr.com/3789/9476654149_b4545d2f25_s.jpg',
                'options' => array('title' => 'Camposanto monumentale (inside)')
            ],
            [
                'url' => 'http://farm3.static.flickr.com/2863/9479121747_0b37c63fe7_b.jpg',
                'src' => 'http://farm3.static.flickr.com/2863/9479121747_0b37c63fe7_s.jpg',
                'options' => array('title' => 'Hafsten - Sunset')
            ],
            [
                'url' => 'http://farm4.static.flickr.com/3712/9478186779_81c2e5f7ef_b.jpg',
                'src' => 'http://farm4.static.flickr.com/3712/9478186779_81c2e5f7ef_s.jpg',
                'options' => array('title' => 'Sail us to the Moon')
            ],
            [
                'url' => 'http://farm4.static.flickr.com/3789/9476654149_b4545d2f25_b.jpg',
                'src' => 'http://farm4.static.flickr.com/3789/9476654149_b4545d2f25_s.jpg',
                'options' => array('title' => 'Sail us to the Moon')
            ],
            [
                'url' => 'http://farm8.static.flickr.com/7429/9478868728_e9109aff37_b.jpg',
                'src' => 'http://farm8.static.flickr.com/7429/9478868728_e9109aff37_s.jpg',
                'options' => array('title' => 'Sail us to the Moon')
            ],
            [
                'url' => 'http://farm4.static.flickr.com/3825/9476606873_42ed88704d_b.jpg',
                'src' => 'http://farm4.static.flickr.com/3825/9476606873_42ed88704d_s.jpg',
                'options' => array('title' => 'Sail us to the Moon')
            ],
            [
                'url' => 'http://farm4.static.flickr.com/3749/9480072539_e3a1d70d39_b.jpg',
                'src' => 'http://farm4.static.flickr.com/3749/9480072539_e3a1d70d39_s.jpg',
                'options' => array('title' => 'Sail us to the Moon')
            ],
            [
                'url' => 'http://farm8.static.flickr.com/7352/9477439317_901d75114a_b.jpg',
                'src' => 'http://farm8.static.flickr.com/7352/9477439317_901d75114a_s.jpg',
                'options' => array('title' => 'Sail us to the Moon')
            ],
            [
                'url' => 'http://farm4.static.flickr.com/3802/9478895708_ccb710cfd1_b.jpg',
                'src' => 'http://farm4.static.flickr.com/3802/9478895708_ccb710cfd1_s.jpg',
                'options' => array('title' => 'Sail us to the Moon')
            ],
        ];?>
        <?= dosamigos\gallery\Gallery::widget(['items' => $items]);?>
        </div>
    </div>
</div>
<div class="row"> 
     <?= ListView::widget([
                                'dataProvider' => $dataProvider,
                                'itemView' => '_listsingle',
                                'summary'=>'',
             ]); ?>
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