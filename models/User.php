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
    
    public function getMoods(){
        return $this->hasMany(Mood::className(), ['user_id' => 'id']);
    }

    public function getEvents(){
        return $this->hasMany(Event::className(), ['user_id' => 'id']);
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
    /**
     * @return array parents - DTR
     */
    public function findParents() {
        $family = $this->findFamily(true);
        $result = $family->andWhere('level != 3');
        return $result;
    }

    public function getMemberIds(){
        return yii\helpers\ArrayHelper::getColumn($this->findFamily()->all(), 'id');
    }
    
    /**
     * @return array others witout logged in user
     */    
    public function getOthers(){
        //return $this->findFamily(true)->andWhere('id != :user_id',[':user_id' => $this->id])->all();
        $parent_id = $this->parent_id == 0 ? $this->id : $this->parent_id;
        return User::find()->where('(parent_id = :parent_id OR id = :parent_id)AND id != :user_id',[':parent_id' => $parent_id, ':user_id' => $this->id])->all();
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
     * @param type $insert
     */
    public function beforeSave($insert) {
        if (parent::beforeSave($insert)) {
            $this->password = Yii::$app->security->generatePasswordHash($this->password);
            return true;
        }
        return false;
    }
    
    /**
     *  MOODS - get percenatges of moods for a month for a user - DTR
     */
    
    /**
     * get count of single mood
     */
    public function getMoodCount($mood,$month = null){
        
        if($month != null){
            $year = date("Y");
            $query = Mood::find()->where('user_id = :user_id AND MONTH(date) =  :month AND YEAR(date) = :year',[':user_id' => $this->id,':month'=> $month,':year' => $year]);
            return $mood=='all' ? $query->count() : $query->andWhere('mood = :mood',[':mood'=>$mood])->count(); 
        }else{
            $query = Mood::find()->where('user_id = :user_id AND date = CURDATE()',[':user_id' => $this->id]);
            return $mood=='all' ? $query->count() : $query->andWhere('mood = :mood',[':mood'=>$mood])->count(); 
        }
    }
    
    public function getPercentageMonthly(){
        //var_dump($this->user); die(); 
        $month = date("m");
        $querytotal = $this->getMoodCount('all',$month) == 0 ? 1 : $this->getMoodCount('all',$month);
        return [
            'sad' => round(($this->getMoodCount('Sad',$month)/$querytotal)*100,1),
            'happy' => round(($this->getMoodCount('Happy',$month)/$querytotal)*100,1),
            'bored' => round(($this->getMoodCount('Bored',$month)/$querytotal)*100,1),
            'excited' => round(($this->getMoodCount('Excited',$month)/$querytotal)*100,1),
            'angry' => round(($this->getMoodCount('Angry',$month)/$querytotal)*100,1)
        ];
    }

    /**
     * get percenatges of happiness for a month for a user - DTR
     */
    public function happyPercentage(){
        $month = array(1,2,3,4,5,6,7,8,9,10,11,12);
        $monthly = array();
        for($i=0;$i<sizeof($month); $i++){
            $total_january = $this->getMoodCount('all',$month[$i]) == 0 ? 1 : $this->getMoodCount('all',$month[$i]);
        
            $happy_january = $this->getMoodCount('Happy',$month[$i]);
            $january = round(($happy_january/$total_january)*100,1);
            array_push($monthly,$january);
        }
        //var_dump($monthly); die();
        return $monthly;
    }
    
    /**
     * get happy percentage current day - DTR
     */
    public function getPercentageToday(){
        $total_today = $this->getMoodCount('all') == 0 ? 1 : $this->getMoodCount('all');
        $happy_today = $this->getMoodCount('Happy');
        $today_percentage = round(($happy_today/$total_today)*100,1);
        return $today_percentage;
    }
    

}
