<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;
use dosamigos\datepicker\DatePicker;

/* @var $this yii\web\View */
/* @var $model common\models\Servicereport */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="servicereport-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'DateStarted')->widget(
                            DatePicker::className(), [
                                // inline too, not bad
                                 'inline' => true, 
                                 // modify template for custom rendering
                                'template' => '<div class="well well-sm" style="background-color: #fff; width:250px">{input}</div>',
                                'clientOptions' => [
                                    'autoclose' => true,
                                    'format' => 'yyyy-mm-dd',
                                    ]
                        ]);

                 ?>

    <?= $form->field($model, 'DateEnd')->widget(
                            DatePicker::className(), [
                                // inline too, not bad
                                 'inline' => true, 
                                 // modify template for custom rendering
                                'template' => '<div class="well well-sm" style="background-color: #fff; width:250px">{input}</div>',
                                'clientOptions' => [
                                    'autoclose' => true,
                                    'format' => 'yyyy-mm-dd',
                                    ]
                        ]);

                 ?>

    <?= $form->field($model, 'Author')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'Manager')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'AssetID')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'WeatherStation_WeatherStation_ID')->textInput() ?>

    <?= $form->field($model, 'user_ID')->textInput() ?>

    <div class="form-group">
        <?= Html::submitButton($model->isNewRecord ? 'Create' : 'Update', ['class' => $model->isNewRecord ? 'btn btn-success' : 'btn btn-primary']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
