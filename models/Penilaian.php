<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "penilaian".
 *
 * @property int $id
 * @property int|null $userid
 * @property int|null $q1
 * @property int|null $q2
 * @property int|null $q3
 * @property int|null $q4
 * @property int|null $q5
 */
class Penilaian extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'penilaian';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['userid', 'q1', 'q2', 'q3', 'q4', 'q5'], 'integer'],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'userid' => 'Userid',
            'q1' => 'Q1',
            'q2' => 'Q2',
            'q3' => 'Q3',
            'q4' => 'Q4',
            'q5' => 'Q5',
        ];
    }
}
