<?php

namespace backend\models;

use Yii;
use yii\base\Model;
use yii\data\ActiveDataProvider;
use backend\models\Weatherstation;

/**
 * WeatherstationSearch represents the model behind the search form about `backend\models\Weatherstation`.
 */
class WeatherstationSearch extends Weatherstation
{
    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['WeatherStation_ID'], 'integer'],
            [['WeatherStation_Model', 'WeatherStation_Name', 'WeatherStation_Location', 'WeatherStation_Status', 'WeatherStation_Gateway', 'WeatherStation_Logger', 'WeatherStation_Number'], 'safe'],
        ];
    }

    /**
     * @inheritdoc
     */
    public function scenarios()
    {
        // bypass scenarios() implementation in the parent class
        return Model::scenarios();
    }

    /**
     * Creates data provider instance with search query applied
     *
     * @param array $params
     *
     * @return ActiveDataProvider
     */
    public function search($params)
    {
        $query = Weatherstation::find();

        // add conditions that should always apply here

        $dataProvider = new ActiveDataProvider([
            'query' => $query,
        ]);

        $this->load($params);

        if (!$this->validate()) {
            // uncomment the following line if you do not want to return any records when validation fails
            // $query->where('0=1');
            return $dataProvider;
        }

        // grid filtering conditions
        $query->andFilterWhere([
            'WeatherStation_ID' => $this->WeatherStation_ID,
        ]);

        $query->andFilterWhere(['like', 'WeatherStation_Model', $this->WeatherStation_Model])
            ->andFilterWhere(['like', 'WeatherStation_Name', $this->WeatherStation_Name])
            ->andFilterWhere(['like', 'WeatherStation_Location', $this->WeatherStation_Location])
            ->andFilterWhere(['like', 'WeatherStation_Status', $this->WeatherStation_Status])
            ->andFilterWhere(['like', 'WeatherStation_Gateway', $this->WeatherStation_Gateway])
            ->andFilterWhere(['like', 'WeatherStation_Logger', $this->WeatherStation_Logger])
            ->andFilterWhere(['like', 'WeatherStation_Number', $this->WeatherStation_Number]);

        return $dataProvider;
    }
}
