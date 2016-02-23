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
            [['filename'], 'file', 'skipOnEmpty' => false, 'extensions' => 'png, jpg, gif', 'maxFiles' => 10],
            [['filename'], 'string', 'max' => 128]
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
    
    public function getFilename(){
        return $this->filename;
    }
    
}
