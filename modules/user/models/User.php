<?php

namespace app\modules\user\models;

use Yii;

/**
 * This is the model class for table "user".
 *
 * @property integer $id
 * @property string $identity
 * @property string $password
 * @property integer $parent_id
 * @property integer $level
 * @property string $auth_key
 * @property string $access_token
 * @property string $started
 * @property string $lastvisit
 * @property integer $status
 *
 * @property Activity[] $activities
 * @property Comment[] $comments
 * @property Event[] $events
 * @property Journal[] $journals
 * @property Mood[] $moods
 * @property Payment[] $payments
 * @property Photos[] $photos
 * @property Profile[] $profiles
 * @property Rating[] $ratings
 * @property Wishlist[] $wishlists
 */
class User extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'user';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['identity', 'password', 'parent_id', 'level', 'auth_key', 'access_token', 'started', 'status'], 'required'],
            [['parent_id', 'level', 'status'], 'integer'],
            [['started', 'lastvisit'], 'safe'],
            [['identity', 'access_token'], 'string', 'max' => 128],
            [['password'], 'string', 'max' => 64],
            [['auth_key'], 'string', 'max' => 32]
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'identity' => 'Identity',
            'password' => 'Password',
            'parent_id' => 'Parent ID',
            'level' => 'Level',
            'auth_key' => 'Auth Key',
            'access_token' => 'Access Token',
            'started' => 'Started',
            'lastvisit' => 'Lastvisit',
            'status' => 'Status',
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getActivities()
    {
        return $this->hasMany(Activity::className(), ['user_id' => 'id']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getComments()
    {
        return $this->hasMany(Comment::className(), ['user_id' => 'id']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getEvents()
    {
        return $this->hasMany(Event::className(), ['user_id' => 'id']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getJournals()
    {
        return $this->hasMany(Journal::className(), ['user_id' => 'id']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getMoods()
    {
        return $this->hasMany(Mood::className(), ['user_id' => 'id']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getPayments()
    {
        return $this->hasMany(Payment::className(), ['user_id' => 'id']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getPhotos()
    {
        return $this->hasMany(Photos::className(), ['user_id' => 'id']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getProfiles()
    {
        return $this->hasMany(Profile::className(), ['user_id' => 'id']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getRatings()
    {
        return $this->hasMany(Rating::className(), ['user_id' => 'id']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getWishlists()
    {
        return $this->hasMany(Wishlist::className(), ['user_id' => 'id']);
    }
}
