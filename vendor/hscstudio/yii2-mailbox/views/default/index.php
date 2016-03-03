<?php

use yii\helpers\Html;
use yii\helpers\Url;
use yii\grid\GridView;
use yii\bootstrap\Nav;
use hscstudio\helpers\assets\LiveStampJsAsset;
$LiveStampJsAsset = LiveStampJsAsset::register($this);

$userClass = \Yii::$app->getUser()->identityClass;

/**
 * @var yii\web\View $this
 * @var yii\data\ActiveDataProvider $dataProvider
 * @var hscstudio\startup\models\MailboxSearch $searchModel
 */

$this->title = 'Mailboxs';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="mailbox-index">
<div class="row">
	<div class="col-md-3">
		<div class="panel panel-default box box-default">
		<div class="panel-body box-body">
		<?php
		$menuItems = [
			['encode'=>false,'label' => '<i class="fa fa-inbox"></i> Inbox', 'url' => ['index'], 'active' => true],
			['encode'=>false,'label' => '<i class="fa fa-envelope-o"></i> Sent', 'url' => ['sent']],
			['encode'=>false,'label' => '<i class="fa fa-file-text-o"></i> Draft', 'url' => ['draft']],
		];
		echo Nav::widget([
			'options' => ['class' => 'nav nav-pills nav-stacked'],
			'items' => $menuItems,
		]);
		?>
		</div>
		</div>
	</div>
	<div class="col-md-9">
		<div class="panel panel-default box box-default">
		<div class="panel-heading box-header with-border">
			<h3 class="panel-title box-title">Inbox</h3>
		</div>
		<div class="panel-body box-body">

		<?php // echo $this->render('_search', ['model' => $searchModel]); ?>

		<p>
                    <!--<?= Html::a('Compose', ['create'], ['class' => 'btn btn-success']) ?>-->
                    <?php
                         echo
                         Html::button('Compose',
                                 [
                             'class' => 'btn btn-info btn-ajax-modal',
                             'value' => Url::to(['create']),
                             'data-target' => '#modal',
                         ]);
                    ?>
		</p>

		<?= GridView::widget([
			'dataProvider' => $dataProvider,
			'filterModel' => $searchModel,
			'columns' => [
				//['class' => 'yii\grid\SerialColumn'],

				//'id',
				//'sender',
                                ['attribute' => 'sharedwith',
                                    'label' => 'Shared With',
                                    'format' => 'raw',
                                ],
				[
					'header' => '#',
					'filter' => false,					
					'attribute' => 'readed',
					'format' => 'html',
					'value'=>function($data){
						if($data->readed==1){
							return Html::tag('i','',['class'=>'fa fa-angle-double-right']);
						} 
						else{
							return Html::tag('i','',['class'=>'fa fa-angle-down']);
						}
					}
				],
				['attribute' => 'fullname',
                                    'label' => 'Sent By',
                                ],
				[
					'attribute' => 'subject',
					'format' => 'html',
					'value' => function($data){
						return Html::a(
							'<strong>'.$data->subject.'</strong> '.
							substr($data->content,0,20).'...',
							['view','id'=>$data->id]
						);
					}
				],
				//'subject',
				//'content:ntext',
				//'readed',
				//'status',
				//'created_at',
				[
					'attribute' => 'updated_at',
					'format' => 'raw',
					'value' => function($data){
						return '<span data-livestamp="'.$data->updated_at.'"></span>';
					}
				],

				//['class' => 'yii\grid\ActionColumn'],
			],
		]); ?>
		</div>
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