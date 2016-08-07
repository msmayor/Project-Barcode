<?php

use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel backend\models\WeatherstationSearch */
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
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

            'WeatherStation_ID',
            'WeatherStation_Model',
            'WeatherStation_Name',
            'WeatherStation_Location',
            'WeatherStation_Status',
            // 'WeatherStation_Gateway',
            // 'WeatherStation_Logger',
            // 'WeatherStation_Number',

            ['class' => 'yii\grid\ActionColumn'],
        ],
    ]); ?>
</div>
