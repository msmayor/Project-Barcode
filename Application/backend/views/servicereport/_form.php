<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;
use yii\helpers\ArrayHelper;
use backend\models\Weatherstation;
/* @var $this yii\web\View */
/* @var $model backend\models\Servicereport */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="servicereport-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'WeatherStation_WeatherStation_ID')->dropDownList(
            ArrayHelper::map(Weatherstation::find()->all(),'WeatherStation_ID','WeatherStation_ID'),
            ['prompt'=>'Select Weatherstation'] )?>
    <?= $form->field($model, 'DateStarted')->textInput() ?>

    <?= $form->field($model, 'DateEnd')->textInput() ?>

    <?= $form->field($model, 'user_ID')->textInput() ?>

    <?= $form->field($model, 'Author')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'Manager')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'AssetID')->textInput(['maxlength' => true]) ?>

    

    

    <div class="form-group">
        <?= Html::submitButton($model->isNewRecord ? 'Create' : 'Update', ['class' => $model->isNewRecord ? 'btn btn-success' : 'btn btn-primary']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
