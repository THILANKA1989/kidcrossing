<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "event".
 *
 * @property integer $id
 * @property integer $user_id
 * @property string $title
 * @property string $description
 * @property string $venue
 * @property string $date
 * @property string $shared_with
 *
 * @property User $user
 */
class Event extends \yii\db\ActiveRecord {

    /**
     *
     * @var type boolean
     */
    public $allDay = true;

    /**
     * @inheritdoc
     */
    public static function tableName() {
        return 'event';
    }

    /**
     * @inheritdoc
     */
    public function rules() {
        return [
            [['user_id', 'title', 'description', 'venue', 'date', 'shared_with'], 'required'],
            [['user_id'], 'integer'],
            [['description', 'shared_with'], 'string'],
            [['date'], 'safe'],
            [['title', 'venue'], 'string', 'max' => 128]
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels() {
        return [
            'id' => 'ID',
            'user_id' => 'User ID',
            'title' => 'Title',
            'description' => 'Description',
            'venue' => 'Venue',
            'date' => 'Date',
            'shared_with' => 'Shared With',
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getUser() {
        return $this->hasOne(User::className(), ['id' => 'user_id']);
    }


}