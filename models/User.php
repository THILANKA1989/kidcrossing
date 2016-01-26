<?php

namespace app\models;

use Yii;
use yii\web\IdentityInterface;

/**
 * This is the model class for table "user".
 *
 * @property integer $id
 * @property string $identity
 * @property string $parent_id
 * @property string $password
 * @property string $auth_key
 * @property string $access_token
 * @property integer $level
 *
 * @property Profile $profile
 */
class User extends \yii\db\ActiveRecord implements IdentityInterface {

    /**
     * @inheritdoc
     */
    public static function tableName() {
        return 'user';
    }

    /**
     * @inheritdoc
     */
    public function rules() {
        return [
            [['identity', 'password', 'auth_key', 'level', 'status'], 'required'],
            [['level', 'status'], 'integer'],
            [['password'], 'string', 'max' => 64],
            [['identity'], 'string', 'max' => 128],
            [['auth_key'], 'string', 'max' => 32],
            [['identity'], 'unique']
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels() {
        return [
            'id' => 'ID',
            //'username' => 'User Name',
            'identity' => 'Email or Username',
            'password' => 'Password',
            'parent_id' => 'Parent ID',
            'level' => 'Type',
            'auth_key' => 'Authentication Key',
            'access_token' => 'Access Token',
            'started' => 'Started On',
            'lastvisit' => 'Last Visit',
            'status' => 'Status'
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getProfile() {
        return $this->hasOne(Profile::className(), ['user_id' => 'id']);
    }

    /**
     * @inheritdoc
     */
    public static function findIdentity($id) {
        //return isset(self::$users[$id]) ? new static(self::$users[$id]) : null;
        return null !== static::findOne($id) ? static::findOne($id) : null;
    }

    /**
     * @inheritdoc
     */
    public static function findIdentityByAccessToken($token, $level = null) {
        return static::findOne(['access_token' => $token]);

        return null;
    }

    /**
     * Finds user by identity
     *
     * @param  string      $identity
     * @return static|null
     */
    public static function findByIdentity($identity) {
        return static::findOne(['identity' => $identity]);

        return null;
    }

    /**
     * @inheritdoc
     */
    public function getId() {
        return $this->id;
    }

    /**
     * @inheritdoc
     */
    public function getRole($list = false) {
        $levels = ['Administrator', 'Owner', 'Spouse', 'Child'];
        return $list ? $levels : $levels[$this->level];
    }

    /**
     * @inheritdoc
     */
    public function getAuthKey() {
        return $this->auth_key;
    }

    /**
     * @return string if has a profile
     */
    public function getFullName() {
        return $this->profile ? $this->profile->first_name . ' ' . $this->profile->last_name : '';
    }

    /**
     * @return string if has a profile
     */
    public function getAvatar() {
        return $this->profile->image ? '@web/uploads/avatar/' . $this->profile->image : '@web/img/avatar.png';
    }

    /**
     * @return array Family members
     */
    public function findFamily($withParent = false) {
        $parent_id = $this->parent_id == 0 ? $this->id : $this->parent_id;
        $result = User::find()->where('parent_id = :parent_id',[':parent_id' => $parent_id]);
        return $withParent ? $result->orWhere('id = :user_id',[':user_id' => $parent_id]) : $result;
    }

    public function getMemberIds(){
        return yii\helpers\ArrayHelper::getColumn($this->findFamily()->all(), 'id');
    }
    /**
     * @inheritdoc
     */
    public function validateAuthKey($auth_key) {
        return $this->auth_key === $auth_key;
    }

    /**
     * Validates password
     *
     * @param  string  $password password to validate
     * @return boolean if password provided is valid for current user
     */
    public function validatePassword($password) {
        //return $this->password === $password;
        return Yii::$app->security->validatePassword($password, $this->password);
    }

    /**
     * 
     * @param type $insert
     */
    public function beforeSave($insert) {
        if (parent::beforeSave($insert)) {
            $this->password = Yii::$app->security->generatePasswordHash($this->password);
            return true;
        }
        return false;
    }

}
