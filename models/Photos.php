<?php

namespace app\models;

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
     * get all items
     */
    public function getItems($id = null){
        $total = [];
        if($id==null){
            $models = Photos::find()->all();
        }else{
            $models = Photos::find()->where(['user_id'=>$id])->all();
        }
       
        foreach(array_reverse($models) as $model){
        $items =   [
                'url' => '@web/uploads/albums/'.$model->filename,
                'src' => '@web/uploads/albums/'.$model->filename,
                'options' => array('title' => 'By '.$model->user->fullname , 'width' => '80px')
            ];
            array_push($total, $items);
        }
        return $total;
    }
    
    public function upload()
    {
        if ($this->validate()) { 
            foreach ($this->filename as $file) {
                $file->saveAs('uploads/albums/' . $file->baseName . '.' . $file->extension);
            }
            return true;
        } else {
            return false;
        }
    }
}
