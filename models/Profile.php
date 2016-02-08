<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "profile".
 *
 * @property integer $id
 * @property integer $user_id
 * @property string $label
 * @property string $first_name
 * @property string $last_name
 * @property string $dob
 * @property string $mobile
 * @property string $street
 * @property string $area
 * @property string $city
 * @property string $zipcode
 * @property string $image
 * @property string $color
 *
 * @property User $user
 */
class Profile extends \yii\db\ActiveRecord {

    public $file;
    /**
     * @inheritdoc
     */
    public static function tableName() {
        return 'profile';
    }

    /**
     * @inheritdoc
     */
    public function rules() {
        return [
            [['user_id', 'label', 'first_name', 'last_name', 'street', 'area', 'city', 'zipcode'], 'required'],
            [['user_id'], 'integer'],
            [['dob', 'image'], 'safe'],
            [['label', 'mobile', 'color'], 'string', 'max' => 16],
            [['first_name', 'last_name'], 'string', 'max' => 32],
            [['street', 'area', 'city'], 'string', 'max' => 64],
            [['zipcode'], 'string', 'max' => 8],
            [['image'], 'string', 'max' => 128],
            [['image'], 'file', 'extensions' => 'jpg, gif, png'],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels() {
        return [
            'id' => 'ID',
            'user_id' => 'User ID',
            'label' => 'Label',
            'first_name' => 'First Name',
            'last_name' => 'Last Name',
            'dob' => 'Dob',
            'mobile' => 'Mobile',
            'street' => 'Street',
            'area' => 'Area',
            'city' => 'City',
            'zipcode' => 'Zipcode',
            'image' => 'Profile Picture',
            'color' => 'Theme Color',
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getUser() {
        return $this->hasOne(User::className(), ['id' => 'user_id']);
    }

}
