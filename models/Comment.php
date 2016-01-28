<?php

namespace app\models;

use Yii;


/**
 * This is the model class for table "comment".
 *
 * @property integer $id
 * @property integer $journal_id
 * @property integer $user_id
 * @property string $comment
 * @property string $time
 *
 * @property Journal $journal
 * @property User $user
 */
class Comment extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'comment';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['journal_id', 'user_id', 'comment', 'time'], 'required'],
            [['journal_id', 'user_id'], 'integer'],
            [['comment'], 'string'],
            [['time'], 'safe']
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'journal_id' => 'Journal ID',
            'user_id' => 'User ID',
            'comment' => 'Comment',
            'time' => 'Time',
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getJournal()
    {
        return $this->hasOne(Journal::className(), ['id' => 'journal_id']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getUser()
    {
        return $this->hasOne(User::className(), ['id' => 'user_id']);
    }
    
    
    public function getTimeAgo(){
        $now = new \DateTime;
    $ago = new \DateTime($this->time);
    $diff = $now->diff($ago);
    
    //$diff->w = floor($diff->d / 7);
    //$diff->d -= $diff->w * 7;
    //var_dump($diff);
    if($diff->d >3) return $this->time;
    
    $string = array(
        'd' => 'day',
        'h' => 'hour',
        'i' => 'minute',
        
    );
    foreach ($string as $k => &$v) {
        if ($diff->$k) {
            $v = $diff->$k . ' ' . $v . ($diff->$k > 1 ? 's' : '');
        } else {
            unset($string[$k]);
        }
    }
    return $string ? implode(', ', $string) . ' ago' : 'just now';
        
    }
}
