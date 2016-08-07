<?php

use yii\helpers\Html;


/* @var $this yii\web\View */
/* @var $model backend\models\Weatherstation */

$this->title = 'Create Weatherstation';
$this->params['breadcrumbs'][] = ['label' => 'Weatherstations', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="weatherstation-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>