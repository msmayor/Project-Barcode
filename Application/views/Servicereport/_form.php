<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\models\Servicereport */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="servicereport-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'DateStarted')->textInput() ?>

    <?= $form->field($model, 'DateEnd')->textInput() ?>

    <?= $form->field($model, 'Author')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'Manager')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'AssetID')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'EmployeeID')->textInput(['maxlength' => true]) ?>

    <div class="form-group">
        <?= Html::submitButton($model->isNewRecord ? 'Create' : 'Update', ['class' => $model->isNewRecord ? 'btn btn-success' : 'btn btn-primary']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
