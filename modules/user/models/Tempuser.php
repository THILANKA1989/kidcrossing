<?php

namespace app\modules\user\models;

use Yii;

/**
 * This is the model class for table "tempuser".
 *
 * @property integer $id
 * @property string $email
 * @property string $password
 * @property string $spouse_email
 * @property string $started
 * @property string $first_name
 * @property string $last_name
 * @property string $address1
 * @property string $address2
 * @property string $address3
 */
class Tempuser extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'tempuser';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['email', 'password', 'spouse_email', 'started', 'first_name', 'last_name', 'address1', 'address2', 'address3'], 'required'],
            [['started'], 'safe'],
            [['email', 'spouse_email', 'address1', 'address2', 'address3'], 'string', 'max' => 128],
            [['password'], 'string', 'max' => 64],
            [['first_name', 'last_name'], 'string', 'max' => 32]
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'email' => 'Email',
            'password' => 'Password',
            'spouse_email' => 'Spouse Email',
            'started' => 'Started',
            'first_name' => 'First Name',
            'last_name' => 'Last Name',
            'address1' => 'Address1',
            'address2' => 'Address2',
            'address3' => 'Address3',
        ];
    }
}
