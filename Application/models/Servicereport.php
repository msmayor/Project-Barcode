<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "servicereport".
 *
 * @property integer $ID
 * @property string $DateStarted
 * @property string $DateEnd
 * @property string $Author
 * @property string $Manager
 * @property string $AssetID
 * @property string $EmployeeID
 */
class Servicereport extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'servicereport';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['DateStarted', 'DateEnd', 'Author', 'Manager', 'AssetID', 'EmployeeID'], 'required'],
            [['DateStarted', 'DateEnd'], 'safe'],
            [['Author', 'Manager', 'AssetID', 'EmployeeID'], 'string', 'max' => 200],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'ID' => 'ID',
            'DateStarted' => 'Date Started',
            'DateEnd' => 'Date End',
            'Author' => 'Author',
            'Manager' => 'Manager',
            'AssetID' => 'Asset ID',
            'EmployeeID' => 'Employee ID',
        ];
    }
}
