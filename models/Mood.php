<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "mood".
 *
 * @property integer $id
 * @property integer $user_id
 * @property string $mood
 * @property string $date
 * @property string $time
 *
 * @property User $user
 */
class Mood extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'mood';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['user_id', 'mood', 'date', 'time'], 'required'],
            [['user_id'], 'integer'],
            [['date', 'time'], 'safe'],
            [['mood'], 'string', 'max' => 16]
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'user_id' => 'User ID',
            'mood' => 'Mood',
            'date' => 'Date',
            'time' => 'Time',
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getUser()
    {
        return $this->hasOne(['id' => 'user_id'], User::className());
    }
}
