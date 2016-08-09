<?php

use yii\helpers\Html;
use yii\grid\GridView;

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
        <?= Html::a('Create Servicereport', ['create'], ['class' => 'btn btn-success']) ?>
    </p>
    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

            'ID',
            'DateStarted',
            'DateEnd',
            'Author',
            'Manager',
            // 'AssetID',
            // 'WeatherStation_WeatherStation_ID',
            // 'user_ID',

            ['class' => 'yii\grid\ActionColumn'],
        ],
    ]); ?>
</div>
