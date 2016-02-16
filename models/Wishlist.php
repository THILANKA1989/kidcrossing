<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "wishlist".
 *
 * @property integer $id
 * @property integer $user_id
 * @property string $title
 * @property string $event
 * @property string $emoji
 * @property string $assigned_to
 * @property integer $status
 * @property string $date
 *
 * @property User $user
 */
class Wishlist extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'wishlist';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['user_id', 'title', 'event', 'emoji', 'assigned_to', 'status', 'date'], 'required'],
            [['user_id', 'status'], 'integer'],
            [['date'], 'safe'],
            [['title', 'event', 'emoji'], 'string', 'max' => 65],
            [['user_id'], 'unique']
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
            'title' => 'Title',
            'event' => 'Event',
            'emoji' => 'Emoji',
            'assigned_to' => 'Assign To',
            'status' => 'Status',
            'date' => 'Date',
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getUser()
    {
        return $this->hasOne(User::className(), ['id' => 'user_id']);
    }
}
