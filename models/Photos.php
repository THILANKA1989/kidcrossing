<?php

namespace app\models;
use yii\helpers\Html;
use Yii;

/**
 * This is the model class for table "photos".
 *
 * @property integer $id
 * @property integer $user_id
 * @property string $filename
 * @property string $shared_with
 *
 * @property User $user
 */
class Photos extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'photos';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['user_id', 'filename', 'shared_with'], 'required'],
            [['user_id'], 'integer'],
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
            'filename' => 'Filename',
            'shared_with' => 'Shared With',
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getUser()
    {
        return $this->hasOne(User::className(), ['id' => 'user_id']);
    }
    
    public function getUrl(){
        return '/kidcrossing/uploads/albums/';
    }
    /**
     * get all items of a user or all uploaded latest
     */
    public function getItems($id = null){
        $total = [];
        if($id==null){
            $models = Photos::find()->all();
        }else{
            $models = Photos::find()->where(['user_id'=>$id])->all();
        }

       $i = 0;
        foreach(array_reverse($models) as $model){
            if(Photos::isShared(Yii::$app->user->id,$model->shared_with) == false && Yii::$app->user->id != $model->user_id){
                continue;
            }
            //var_dump(Yii::$app->controller->action->id); die();
            if(Yii::$app->controller->action->id != 'view'){
                 if ( $i++ > 30) break;
            }
           
            //var_dump($model->shared_with);
            
        $items =   [
                'url' => '@web/uploads/albums/'.$model->filename,
                'src' => '@web/uploads/albums/thumbs/'.$model->filename,
                'options' => array('title' => 'By '.$model->user->fullname, 'width' => '80px')
            ];
            array_push($total, $items);
        }
        //die();
        return $total;
    }
    //check shared with
    public function isShared($user_id,$shared_with){
        return in_array($user_id, explode(',', $shared_with)) != false ? true : false;
    }
    
    //get Shared users
    public function getSharedWith($withoutWrapper=false)
    {
       $shared_users = User::find()->where(['id'=> explode(",",$this->shared_with)])->all();
       if($withoutWrapper)
          return  implode(', ', yii\helpers\ArrayHelper::getColumn($shared_users, 'fullname'));
       else
       return "<span class='label label-success'>" . implode('</span> <span class="label label-success">', yii\helpers\ArrayHelper::getColumn($shared_users, 'fullname'))."</span>";
    }
}
