<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "mailbox".
 *
 * @property integer $id
 * @property integer $sender
 * @property integer $receiver
 * @property string $subject
 * @property string $content
 * @property integer $readed
 * @property integer $status
 * @property integer $created_at
 * @property integer $updated_at
 */
class Mailbox extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'mailbox';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['sender', 'receiver', 'readed', 'status', 'created_at', 'updated_at'], 'integer'],
            [['subject'], 'required'],
            [['content'], 'string'],
            [['subject'], 'string', 'max' => 255],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'sender' => 'Sender',
            'receiver' => 'Receiver',
            'subject' => 'Subject',
            'content' => 'Content',
            'readed' => 'Readed',
            'status' => 'Status',
            'created_at' => 'Created At',
            'updated_at' => 'Updated At',
        ];
    }
}
