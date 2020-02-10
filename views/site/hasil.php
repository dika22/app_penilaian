<?php

/* @var $this yii\web\View */

use yii\helpers\Html;
use yii\helpers\Url;

$this->title = 'Hasil';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="site-about">
    <h1>Hasil Penilain Setiap Client</h1>
    <table class="table table-bordered">
    	<th>No</th>	
    	<th>Nama</th>
    	<th>Alamat</th>
    	<th>Action</th>
   		 <?php 
   		 $no = 1;
   		 foreach ($user as $key => $value): ?>
	    	<tr>
	    		<td><?= $no++; ?></td>
          <td><?= $value['nameCompany']; ?></td>
          <td><?= $value['address']; ?></td>
	    		<td><a href="<?=Url::to(['site/review', 'id'=> $value->id])?>"><button class="btn btn-primary">Hasil Penilaian</button></a></td>
	    	</tr>
	    <?php endforeach ?>	
	</table>

    <!-- <code><?= __FILE__ ?></code> -->
</div>
