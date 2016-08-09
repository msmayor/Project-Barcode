<?php

namespace common\models;

use Yii;
use yii\base\Model;
use yii\data\ActiveDataProvider;
use common\models\Servicereport;

/**
 * ServicereportSearch represents the model behind the search form about `common\models\Servicereport`.
 */
class ServicereportSearch extends Servicereport
{
    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['ID', 'WeatherStation_WeatherStation_ID', 'user_ID'], 'integer'],
            [['DateStarted', 'DateEnd', 'Author', 'Manager', 'AssetID'], 'safe'],
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
        $query = Servicereport::find();

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
            'ID' => $this->ID,
            'DateStarted' => $this->DateStarted,
            'DateEnd' => $this->DateEnd,
            'WeatherStation_WeatherStation_ID' => $this->WeatherStation_WeatherStation_ID,
            'user_ID' => $this->user_ID,
        ]);

        $query->andFilterWhere(['like', 'Author', $this->Author])
            ->andFilterWhere(['like', 'Manager', $this->Manager])
            ->andFilterWhere(['like', 'AssetID', $this->AssetID]);

        return $dataProvider;
    }
}
