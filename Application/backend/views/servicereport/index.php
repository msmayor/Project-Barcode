<?php

use yii\helpers\Html;
use yii\grid\GridView;
use dosamigos\datepicker\DatePicker;
use yii\widgets\Pjax;
use yii\bootstrap\Modal;
use yii\helpers\Url;

/* @var $this yii\web\View */
/* @var $searchModel common\models\ServicereportSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Servicereports';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="servicereport-index">

    <h1><?= Html::encode($this->title) ?></h1>
    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <p>
        <?= Html::button('Create Servicereport', ['value'=>Url::to('index.php?r=servicereport/create'),'class' => 'btn btn-success','id'=>'modalButton']) ?>
    </p>

    <?php
        Modal::begin([
                'header'=>'<h4>Service Report</h4>',
                'id' => 'modal',
                'size' =>'modal-lg',

                ]);

        echo "<div id='modalContent'></div>";

        Modal::end();

            
    ?>
    <?php Pjax::begin(); ?>
    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

            //'weatherStation.id',
            [
                'attribute'=>'WeatherStation_id',
                'value'=>'weatherStation.WeatherStation_Location',
            ],
            //'id',
            [
                'attribute'=> 'DateStarted',
                'value'=> 'DateStarted',
                'format'=> 'raw',
                'filter'=>DatePicker::widget([
                            'model'=>$searchModel,
                            'attribute'=> 'DateStarted',
                            'clientOptions' => [
                                'autoclose' => true,
                                'format' => 'yyyy-mm-dd',
                                ]
                        ]),
            ],
            [
                'attribute'=> 'DateEnd',
                'value'=> 'DateEnd',
                'format'=> 'raw',
                'filter'=>DatePicker::widget([
                            'model'=>$searchModel,
                            'attribute'=> 'DateEnd',
                            'clientOptions' => [
                                'autoclose' => true,
                                'format' => 'yyyy-mm-dd',
                                ]
                        ]),
            ],
            'Author',
            'Manager',
            // 'user_id',

            ['class' => 'yii\grid\ActionColumn'],
        ],
    ]); ?>
    <?php Pjax::end(); ?>
</div>
