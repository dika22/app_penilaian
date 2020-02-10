<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "users".
 *
 * @property int $id
 * @property string $password
 * @property string $middleName
 * @property string $lastName
 * @property string $firstName
 * @property string $username
 */
class Users extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'users';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['password', 'middleName', 'lastName', 'firstName', 'username'], 'required'],
            [['password'], 'string', 'max' => 100],
            [['middleName', 'lastName', 'username'], 'string', 'max' => 45],
            [['firstName'], 'string', 'max' => 200],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'password' => 'Password',
            'middleName' => 'Middle Name',
            'lastName' => 'Last Name',
            'firstName' => 'First Name',
            'username' => 'Username',
        ];
    }
}
