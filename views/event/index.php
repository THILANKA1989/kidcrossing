<?php

use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel app\models\EventSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = Yii::t('app', 'Events');
$this->params['breadcrumbs'][] = $this->title;

$evnt[] = array('title' => 'My Event',
    'date' => '2016-01-01T14:30:00',
    'allDay' => true);

foreach ($events as $e) {

    $evnt[] = [
        'id' => $e->id,
        'title' => $e->title,
        'start' => $e->date,
        'color' => $e->user->profile->color,
        'allDay' => true
    ];
}
?>

<div class="box box-primary">
    <div class="box-body no-padding">

        <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

        <p>
            <?php Html::a(Yii::t('app', 'Create Event'), ['create'], ['id' => 'create', 'class' => 'btn btn-success']) ?>
        </p>

        <?php
        //yii\helpers\VarDumper::dump($events, 1000, true);
        echo yii2fullcalendar\yii2fullcalendar::widget(array(
            'options' => ['lang' => 'en-gb'],
            'events' => $evnt,
            'clientOptions' => ['selectable' => true, 'editable' => false, 'forceEventDuration' => true],
            'eventClick' => "
                    function(calEvent, jsEvent, view) {
                        console.log(calEvent);
                        $('#modal').modal('show')
                                    .find('#modalContent')
                                    .load(baseUrl+'/event/view/'+calEvent.id);
                        $('#modalHeader h4').html('' + calEvent.title + '');

                        // change the border color just for fun
                        $(this).css('border-color', 'red');
                    }",
            'select' => "
                        function(start, end, jsEvent) {

                    }",
            'dayClick' => "
                    function(date, jsEvent, view, resourceObj) {
                        //alert('Date: ' + date.format());
                        //alert('Resource ID: ' + resourceObj.id);
                        //to ensure we get the right button and content. 
                    if ($('#modal').data('bs.modal').isShown) {
                        $('#modal').find('#modalContent')
                                .load($(this).attr('value'));
                        //dynamiclly set the header for the modal via title tag
                        $('#modalHeader h4').html( $(this).attr('title') );
                    } else {
                        //if modal isn't open; open it and load content
                        $('#modal').modal('show')
                                .find('#modalContent')
                                .load(baseUrl+'/event/create?date='+date.format());
                                console.log($('#event-date'));
                         //dynamiclly set the header for the modal via title tag
                        $('#modalHeader h4').html('Create an Event on ' + date.format('dddd, MMMM Do YYYY') + '');
                    }
                }"
        ));
        ?>
    </div>
</div>