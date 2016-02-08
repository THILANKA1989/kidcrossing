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
            [['user_id', 'mood', 'date'], 'required'],
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
    /**
     *  MOODS - get percenatges of moods for a month for a user - DTR
     */
    
    /**
     * get count of single mood
     */
    public function getMoodCount($mood,$id,$month = null){
        
        if($month != null){
            $year = date("Y");
            $query = Mood::find()->where('user_id = :user_id AND MONTH(date) =  :month AND YEAR(date) = :year',[':user_id' => $id,':month'=> $month,':year' => $year]);
            return $mood=='all' ? $query->count() : $query->andWhere('mood = :mood',[':mood'=>$mood])->count(); 
        }else{
            $query = Mood::find()->where('user_id = :user_id AND date = CURDATE()',[':user_id' => $id]);
            return $mood=='all' ? $query->count() : $query->andWhere('mood = :mood',[':mood'=>$mood])->count(); 
        }
    }
    
    public function percentageMonthly($user_id){
        
        $month = date("m");
        $querytotal = self::getMoodCount('all',$user_id,$month) == 0 ? 1 : self::getMoodCount('all',$user_id,$month);
        //var_dump(self::getMoodCount('all',$user_id,$month)); die(); 
        return [
            'sad' => round((self::getMoodCount('Sad',$user_id,$month)/$querytotal)*100,1),
            'happy' => round((self::getMoodCount('Happy',$user_id,$month)/$querytotal)*100,1),
            'bored' => round((self::getMoodCount('Bored',$user_id,$month)/$querytotal)*100,1),
            'excited' => round((self::getMoodCount('Excited',$user_id,$month)/$querytotal)*100,1),
            'angry' => round((self::getMoodCount('Angry',$user_id,$month)/$querytotal)*100,1)
        ];
    }

    /**
     * get percenatges of happiness for a month for a user - DTR
     */
    public function happyPercentage($user_id){
        $month = array(1,2,3,4,5,6,7,8,9,10,11,12);
        $monthly = array();
        for($i=0;$i<sizeof($month); $i++){
            $total_january = self::getMoodCount('all',$user_id,$month[$i]) == 0 ? 1 : self::getMoodCount('all',$user_id,$month[$i]);
        
            $happy_january = self::getMoodCount('Happy',$user_id,$month[$i]);
            $january = round(($happy_january/$total_january)*100,1);
            array_push($monthly,$january);
        }
        //var_dump($monthly); die();
        return $monthly;
    }
    
    /**
     * get happy percentage current day - DTR
     */
    public function percentageToday($user_id){
        $total_today = self::getMoodCount('all',$user_id) == 0 ? 1 : self::getMoodCount('all',$user_id);
        $happy_today = self::getMoodCount('Happy',$user_id);
        $today_percentage = round(($happy_today/$total_today)*100,1);
        return $today_percentage;
    }
    
    /**
     * get current mode
     */
    public function getCurrentMood($id){
        return self::find()->select('mood')->where(['user_id'=> $id])->orderBy(['date'=> SORT_DESC, 'time'=> SORT_DESC ])->one();
    }
    
}
