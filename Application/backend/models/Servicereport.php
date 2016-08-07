<?php

namespace backend\models;

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
 * @property integer $WeatherStation_WeatherStation_ID
 * @property integer $user_ID
 *
 * @property Weatherstation $weatherStationWeatherStation
 * @property User $user
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
            [['DateStarted', 'DateEnd', 'Author', 'Manager', 'AssetID', 'WeatherStation_WeatherStation_ID', 'user_ID'], 'required'],
            [['DateStarted', 'DateEnd'], 'safe'],
            [['WeatherStation_WeatherStation_ID', 'user_ID'], 'integer'],
            [['Author', 'Manager', 'AssetID'], 'string', 'max' => 200],
            [['WeatherStation_WeatherStation_ID'], 'exist', 'skipOnError' => true, 'targetClass' => Weatherstation::className(), 'targetAttribute' => ['WeatherStation_WeatherStation_ID' => 'WeatherStation_ID']],
            [['user_ID'], 'exist', 'skipOnError' => true, 'targetClass' => User::className(), 'targetAttribute' => ['user_ID' => 'id']],
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
            'WeatherStation_WeatherStation_ID' => 'Weather Station  Weather Station  ID',
            'user_ID' => 'User  ID',
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getWeatherStationWeatherStation()
    {
        return $this->hasOne(Weatherstation::className(), ['WeatherStation_ID' => 'WeatherStation_WeatherStation_ID']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getUser()
    {
        return $this->hasOne(User::className(), ['id' => 'user_ID']);
    }
}
