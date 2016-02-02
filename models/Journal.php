<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "journal".
 *
 * @property integer $id
 * @property integer $user_id
 * @property string $entry
 * @property string $date
 * @property string $shared_with
 *
 * @property Comment[] $comments
 * @property User $user
 */
class Journal extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'journal';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['user_id', 'entry', 'date', 'shared_with'], 'required'],
            [['user_id'], 'integer'],
            [['entry'], 'string'],
            [['date'], 'safe']
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
            'entry' => 'Entry',
            'date' => 'Date',
            'shared_with' => 'Shared With',
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getComments()
    {
        return $this->hasMany(Comment::className(), ['journal_id' => 'id']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getUser()
    {
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
    /**
     * get latest journal entry by DTR
     */
    public function latestJournal(){
        $journal = Journal::find()->limit(3)->all();
        return $journal;
    }
    
    
    
}
