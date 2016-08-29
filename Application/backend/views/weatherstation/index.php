<?php

use yii\helpers\Html;
use yii\grid\GridView;
use barcode\barcode\BarcodeGenerator;
/* @var $this yii\web\View */
/* @var $searchModel common\models\WeatherstationSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Weatherstations';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="weatherstation-index">

    <h1><?= Html::encode($this->title) ?></h1>
    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <p>
        <?= Html::a('Create Weatherstation', ['create'], ['class' => 'btn btn-success']) ?>
    </p>
    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'rowOptions' =>function($model){
                    if($model->WeatherStation_Status == 'On')
                    {
                        return ['class'=>'success'];
                    }else if ($model->WeatherStation_Status == 'Off')
                    {
                        return ['class'=>'danger'];
                    }

        },
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

            // 'id',
            'WeatherStation_Model',
            'WeatherStation_Name',
            'WeatherStation_Location',
            
            
            //'WeatherStation_Status',
             
            // 'WeatherStation_Gateway',
            // 'WeatherStation_Logger',
            // 'WeatherStation_Number',

            ['class' => 'yii\grid\ActionColumn'],
        ],
    ]); ?>
</div>
