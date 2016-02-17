<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "notification".
 *
 * @property integer $id
 * @property integer $user_id
 * @property string $shared_with
 * @property string $description
 * @property string $type
 * @property integer $type_id
 * @property integer $status
 * @property string $date
 *
 * @property User $user
 */
class Notification extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'notification';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['user_id', 'shared_id', 'description', 'type', 'type_id', 'status', 'date'], 'required'],
            [['user_id', 'type_id', 'status','shared_id'], 'integer'],
            [[ 'description'], 'string'],
            [['date'], 'safe'],
            [['type'], 'string', 'max' => 65]
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
            'shared_id' => 'Shared ID',
            'description' => 'Description',
            'type' => 'Type',
            'type_id' => 'Type ID',
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
    
    /**
     * @return \yii\db\ActiveQuery - DTR
     */
    public function getStatus(){
        return $this->status;
    }
    
     /**
     * @return \yii\db\ActiveQuery - DTR
     */
    public function findNotification($type_id, $id){
        return Notification::find()->where(['type_id'=>$type_id,'id'=>$id])->all();
    }
    
    public function getUserNotifications($type = null){
        $events = Notification::find()->where(['type'=> $type,'status'=> 0,'shared_id'=> Yii::$app->user->id])->orderBy(['date'=> SORT_DESC])->all();
        $journals = Notification::find()->where(['type'=> $type,'status'=> 0,'shared_id'=> Yii::$app->user->id])->orderBy(['date'=> SORT_DESC])->all();
        
        return [
            'events' => $events,
            'journals' => $journals,
        ];
    }
    
    public function notificationCount($notification, $counts = false){
        $counter = 0;
      if($counts == false){
          for($i=0;$i<sizeof($notification);$i++){
            if($notification[$i]->user->id == Yii::$app->user->id ){
                continue;
            }
            $counter++;
          }
      }else{
          for($i=0;$i<sizeof($notification);$i++){
            if($notification[$i]->user->id == Yii::$app->user->id || $notification[$i]->type == 'journal' || $notification[$i]->type == 'event'){
                continue;
            }
            $counter++;
          }
      }
        
        return $counter;
    }
    
    public function getGlobalNotifications(){
         return Notification::find()->where(['status'=> 0,'shared_id'=> Yii::$app->user->id ])->orderBy(['date'=> SORT_DESC])->all();
    }
  
}
