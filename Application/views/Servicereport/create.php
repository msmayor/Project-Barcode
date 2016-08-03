<?php

use yii\helpers\Html;


/* @var $this yii\web\View */
/* @var $model app\models\Servicereport */

$this->title = 'Create Servicereport';
$this->params['breadcrumbs'][] = ['label' => 'Servicereports', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="servicereport-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
