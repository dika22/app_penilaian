<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "persepsi".
 *
 * @property int $id
 * @property int|null $userid
 * @property int|null $p1
 * @property int|null $p2
 * @property int|null $p3
 * @property int|null $p4
 * @property int|null $p5
 */
class Persepsi extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'persepsi';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['userid', 'p1', 'p2', 'p3', 'p4', 'p5'], 'integer'],
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
            'p1' => 'P1',
            'p2' => 'P2',
            'p3' => 'P3',
            'p4' => 'P4',
            'p5' => 'P5',
        ];
    }
}
