<?php

use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel app\models\ClientCompanySearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Client Companies';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="client-company-index">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a('Create Client Company', ['create'], ['class' => 'btn btn-success']) ?>
    </p>

    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

            'id',
            'nameCompany',
            'address',
            'role',
            'kontrak',

            ['class' => 'yii\grid\ActionColumn'],
        ],
    ]); ?>


</div>
