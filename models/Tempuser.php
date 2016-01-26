<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "tempuser".
 *
 * @property integer $id
 * @property integer $user_id
 * @property string $email
 * @property string $password
 * @property string $spouse_email
 * @property string $started
 * @property string $label
 * @property string $first_name
 * @property string $last_name
 * @property string $street
 * @property string $area
 * @property string $city
 * @property string $zipcode
 */
class Tempuser extends \yii\db\ActiveRecord
{
    /**
     *
     * @var type string
     */
    public $confirm_password;
    
    /**
     *
     * @var type boolean
     */
    public $agree_to_terms;
    
    public $verify_code;
    
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
            [['email', 'password', 'confirm_password', 'started', 'label', 'first_name', 'last_name', 'street', 'area', 'city', 'zipcode', 'agree_to_terms'], 'required'],
            [['started'], 'safe'],
            [['email', 'spouse_email'], 'string', 'max' => 128],
            [['email', 'spouse_email'], 'email', ],
            [['email'], 'unique' ],
            [['spouse_email'], 'unique' ],
            [['user_id'], 'unique' ],
            [['password', 'street', 'area', 'city'], 'string', 'max' => 64],
            ['confirm_password', 'compare', 'compareAttribute'=>'password', 'message'=>"Passwords don't match" ],
            [['label'], 'string', 'max' => 16],
            [['first_name', 'last_name'], 'string', 'max' => 32],
            [['zipcode'], 'string', 'max' => 8],
            ['verify_code', 'captcha'],// verifyCode needs to be entered correctly
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
            'email' => 'Email',
            'password' => 'Password',
            'confirm_password' => 'Confirm Password', 
            'spouse_email' => 'Other Parent Email',
            'started' => 'Started',
            'label' => 'Label',
            'first_name' => 'First Name',
            'last_name' => 'Last Name',
            'street' => 'Street',
            'area' => 'Area',
            'city' => 'City',
            'zipcode' => 'Zipcode',
            'agree_to_terms' => 'I agree to the terms',
            'verify_code'=>'Verification Code'
        ];
    }
}
