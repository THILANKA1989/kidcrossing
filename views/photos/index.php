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
       
            //var_dump($this->user->level);
        echo Html::button('Add Item+',
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
            <?php //var_dump($photos); die();  ?>
        <?php $items =  app\models\Photos::getItems() ;?>
         
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