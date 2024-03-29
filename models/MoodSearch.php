<?php

namespace app\models;

use Yii;
use yii\base\Model;
use yii\data\ActiveDataProvider;
use app\models\Mood;

/**
 * MoodSearch represents the model behind the search form about `app\models\Mood`.
 */
class MoodSearch extends Mood
{
    /**
     * @inheritdoc
     */
    public $start_date;
    public $end_date;
    public function rules()
    {
        return [
            [['id', 'user_id'], 'integer'],
            [['mood', 'date', 'time','start_date','end_date'], 'safe'],
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
        
        $query = Mood::find();
        $dataProvider = new ActiveDataProvider([
            'query' => $query,
            'pagination' => [
                'pagesize' => 8,
            ],
        ]);

        $this->load($params);

        if (!$this->validate()) {
            // uncomment the following line if you do not want to return any records when validation fails
            // $query->where('0=1');
            return $dataProvider;
        }

        $query->andFilterWhere([
            'id' => $this->id,
            'user_id' => $this->user_id,
            'date' => $this->date,
            'time' => $this->time,
        ]);

        $query->andFilterWhere(['like', 'mood', $this->mood]);
        $query->andFilterWhere(['>=', 'date', $this->start_date])
      ->andFilterWhere(['<=', 'date', $this->end_date]);
        return $dataProvider;
    }
}
