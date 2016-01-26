<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "payment".
 *
 * @property integer $id
 * @property integer $user_id
 * @property string $customer_id
 * @property string $subcription_id
 * @property string $ip_address
 * @property double $amount
 * @property integer $status
 * @property string $date
 *
 * @property User $user
 */
class Payment extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'payment';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['user_id', 'customer_id', 'subcription_id', 'ip_address', 'amount', 'status', 'date'], 'required'],
            [['user_id', 'status'], 'integer'],
            [['amount'], 'number'],
            [['date'], 'safe'],
            [['customer_id', 'subcription_id'], 'string', 'max' => 32],
            [['ip_address'], 'string', 'max' => 16]
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
            'customer_id' => 'Customer ID',
            'subcription_id' => 'Subcription ID',
            'ip_address' => 'Ip Address',
            'amount' => 'Amount',
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
}
