<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "client_company".
 *
 * @property int $id
 * @property string $nameCompany
 * @property string $address
 * @property string $role
 * @property int|null $kontrak
 */
class ClientCompany extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'client_company';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['nameCompany', 'address', 'role'], 'required'],
            [['kontrak'], 'integer'],
            [['nameCompany', 'address', 'role'], 'string', 'max' => 45],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'nameCompany' => 'Name Company',
            'address' => 'Address',
            'role' => 'Role',
            'kontrak' => 'Kontrak',
        ];
    }
}
