<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "rating".
 *
 * @property integer $id
 * @property integer $activity_id
 * @property integer $user_id
 * @property double $rate
 *
 * @property Activity $activity
 * @property User $user
 */
class Rating extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'rating';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [[ 'rate'], 'required'],
            [['activity_id', 'user_id'], 'integer'],
            [['rate'], 'number']
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'activity_id' => 'Activity ID',
            'user_id' => 'User ID',
            'rate' => 'Rate',
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getActivity()
    {
        return $this->hasOne(Activity::className(), ['id' => 'activity_id']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getUser()
    {
        return $this->hasOne(User::className(), ['id' => 'user_id']);
    }
    
    public function averageRating($activity){
        $total = Rating::find()->where(['activity_id' => $activity])->all();
        $number = count($total);
        $count = 0;
        foreach($total as $model){
            $count += $model->rate;
        }
        //var_dump($count);
        //var_dump((int)$count/$number);
        //die();
        return $number != 0 ? $count/(float)$number : 0;
    }
}
