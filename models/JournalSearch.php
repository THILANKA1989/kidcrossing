<?php

namespace app\models;

use Yii;
use yii\base\Model;
use yii\data\ActiveDataProvider;
use app\models\Journal;

/**
 * JournalSearch represents the model behind the search form about `app\models\Journal`.
 */
class JournalSearch
        extends Journal {

    /**
     * @inheritdoc
     */
    public function rules() {
        return [
            [[
            'id',
            'user_id'],
                'integer'],
            [[
            'entry',
            'date',
            'shared_with'],
                'safe'],
        ];
    }

    /**
     * @inheritdoc
     */
    public function scenarios() {
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
    public function search($params) {
        $id = Yii::$app->user->id;
        $query =
                Journal::find()
                    ->where('FIND_IN_SET('.$id. ',"shared_with")>=0')
                    ->orWhere('user_id='.$id)
                    ->orderBy('id DESC');

        $dataProvider =
                new ActiveDataProvider([
            'query' => $query,
            'pagination' => [
                'pagesize' => 10,
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
        ]);

        $query->andFilterWhere(['like',
                    'entry',
                    $this->entry])
                ->andFilterWhere(['like',
                    'shared_with',
                    $this->shared_with]);

        return $dataProvider;
    }

}
