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
            [['description'], 'string'],
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
    
    public function getSharedWith($withoutWrapper=false)
    {
       $shared_users = User::find()->where(['id'=> explode(",",$this->shared_with)])->all();
       if($withoutWrapper)
          return  implode(', ', yii\helpers\ArrayHelper::getColumn($shared_users, 'fullname'));
       else
       return "<span class='label label-success'>" . implode('</span> <span class="label label-success">', yii\helpers\ArrayHelper::getColumn($shared_users, 'fullname'))."</span>";
    }


}
