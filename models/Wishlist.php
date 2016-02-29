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
            'assigned_to' => 'Assigned To',
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
    
        
    public function getId() {
        return $this->id;
    }
    
    public function getTitle() {
        return $this->title;
    }
    
    /**
     * get user profile image
     */
    public function getAssignedUser($id){
        $user = User::findOne(['id' => $id]);
        return $user->profile->image ? '../uploads/avatar/' . $user->profile->image : '../img/avatar.png';
    }
    
    /**
     * get user fullimage
     */
    public function getAssignedFullname($id){
        $user = User::findOne(['id' => $id]);
         return $user->profile ? $user->profile->first_name . ' ' . $user->profile->last_name : '';
    }
    
    public function getEmoticon($emo){
        return "/kidcrossing/img/emoji/".$emo.".png";
    }
    
    /*
     * Get last wishlist item
     */
    public function getLastWish($id){
        return Wishlist::find()->where(['user_id' => $id])->orderBy(['date' => SORT_DESC])->limit(1);
    }

    
}
