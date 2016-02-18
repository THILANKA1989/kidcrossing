<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;
use yii\helpers\ArrayHelper;
/* @var $this yii\web\View */
/* @var $model app\models\Wishlist */
/* @var $form yii\widgets\ActiveForm */
?>
<div class="box box-primary">
    <div class="box-body">
<div class="wishlist-form">

    <?php $form = ActiveForm::begin([
//    'beforeSubmit' => 'window.forms.candidate',
    'enableClientValidation' => true,
//    'enableAjaxValidation' => true,
    'id' => 'wishlist-form',
]); ?>
    
    <?= $form->field($model, 'emoji')->textInput(['data-emojiable'=> 'true','id' => 'description','max-length'=> 5]) ?>
    <div id="emoticons" style="display: none">
        <a href="#" title="money"><img alt="money" border="0" src="/kidcrossing/img/emoji/money.png" /></a>
        <a href="#" title="gym"><img alt="gym" border="0" src="/kidcrossing/img/emoji/gym.png" /></a>
        <a href="#" title="dollar"><img alt="dollar" border="0" src="/kidcrossing/img/emoji/dollar.png" /></a>
        <a href="#" title="camera"><img alt="camera" border="0" src="/kidcrossing/img/emoji/camera.png" /></a>
        <a href="#" title="golf"><img alt="golf" border="0" src="/kidcrossing/img/emoji/golf.png" /></a>
        <a href="#" title="cricket"><img alt="cricket" border="0" src="/kidcrossing/img/emoji/cricket.png" /></a>
        <a href="#" title="country"><img alt="country" border="0" src="/kidcrossing/img/emoji/country.png" /></a>
        <a href="#" title="roller"><img alt="roller" border="0" src="/kidcrossing/img/emoji/roller.png" /></a>
        <a href="#" title="coaster"><img alt="coaster" border="0" src="/kidcrossing/img/emoji/coaster.png" /></a>
        <a href="#" title="school"><img alt="school" border="0" src="/kidcrossing/img/emoji/school.png" /></a>
        <a href="#" title="bowling"><img alt="bowling" border="0" src="/kidcrossing/img/emoji/bowling.png" /></a>
        <a href="#" title="pingpong"><img alt="money" border="0" src="/kidcrossing/img/emoji/pingpong.png" /></a>
        <a href="#" title="mac"><img alt="mac" border="0" src="/kidcrossing/img/emoji/mac.png" /></a>
        <a href="#" title="movie"><img alt="movie" border="0" src="/kidcrossing/img/emoji/movie.png" /></a>
        <a href="#" title="music"><img alt="music" border="0" src="/kidcrossing/img/emoji/music.png" /></a>
        <a href="#" title="cart"><img alt="cart" border="0" src="/kidcrossing/img/emoji/cart.png" /></a>
        <a href="#" title="bicycle"><img alt="bicycle" border="0" src="/kidcrossing/img/emoji/bicycle.png" /></a>
        <a href="#" title="tennis"><img alt="tennis" border="0" src="/kidcrossing/img/emoji/tennis.png" /></a>
        <a href="#" title="beach"><img alt="beach" border="0" src="/kidcrossing/img/emoji/beach.png" /></a>
        <a href="#" title="mountain"><img alt="mountain" border="0" src="/kidcrossing/img/emoji/mountain.png" /></a>
    </div>
    <?= $form->field($model, 'title')->textInput(['rows' => 4]) ?>
    
    <?= $form->field($model, 'event')->textInput(['rows' => 4]) ?>
    
    <?= $form->field($model, 'assigned_to')->listBox( ArrayHelper::map(Yii::$app->user->identity->findParents()->all(), 'id', 'fullname'), ['multiple' => true] ) ?>


    <div class="form-group">
        <?= Html::submitButton($model->isNewRecord ? 'Create' : 'Update', ['class' => $model->isNewRecord ? 'btn btn-success' : 'btn btn-primary']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
    </div>
</div>

<?php
$this->registerJs(
   "$('#emoticons a').click(function() {
    var smiley = $(this).attr('title');
    ins2pos(smiley, 'description');
});

function ins2pos(str, id) {
   var TextArea = document.getElementById(id);
   var val = TextArea.value;
   var before = val.substring(0, TextArea.selectionStart);
   var after = val.substring(TextArea.selectionEnd, val.length);
   TextArea.value =  str;
}
$('#description').on('click', function(){
    $('#emoticons').show('slow');
});
$('#description img').on('click',function() {

   $(this).prop('disabled', true);

});
"
); ?>
