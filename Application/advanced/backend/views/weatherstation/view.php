<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model backend\models\Weatherstation */

$this->title = $model->WeatherStation_ID;
$this->params['breadcrumbs'][] = ['label' => 'Weatherstations', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="weatherstation-view">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a('Update', ['update', 'id' => $model->WeatherStation_ID], ['class' => 'btn btn-primary']) ?>
        <?= Html::a('Delete', ['delete', 'id' => $model->WeatherStation_ID], [
            'class' => 'btn btn-danger',
            'data' => [
                'confirm' => 'Are you sure you want to delete this item?',
                'method' => 'post',
            ],
        ]) ?>
    </p>

    <?= DetailView::widget([
        'model' => $model,
        'attributes' => [
            'WeatherStation_ID',
            'WeatherStation_Model',
            'WeatherStation_Name',
            'WeatherStation_Location',
            'WeatherStation_Status',
            'WeatherStation_Gateway',
            'WeatherStation_Logger',
            'WeatherStation_Number',
        ],
    ]) ?>

</div>
