<?php
echo "Review hasil";

	// var_dump($penilaian); 	
?>

	<p>
		<h3>Tabel Hasil Kuisoner Penilaian</h3>
	</p>
	<table class="table table-bordered">
    	<th>No</th>	
    	<td>kuisoner</td>
    	<th>value</th>
	<?php 
	$no = 1;
	foreach ($penilaian as $key => $value): ?>
	    	<tr>
	    		<td><?= $no++; ?></td>
	    		<td><?= "val". ($key+1); ?></td>
	    		<td><?= $value->val_que; ?></td>
	    	</tr>
	<?php endforeach ?>
	</table>
	<p>
		<h3>Tabel Hasil Kuisoner Persepsi</h3>
	</p>
	<table class="table table-bordered">
    	<th>No</th>	
    	<td>	Persepsi</td>
    	<th>value</th>
	<?php 
	$no = 1;
	foreach ($penilaian as $key => $val): ?>
	    	<tr>
	    		<td><?= $no++; ?></td>
	    		<td><?= "val". ($key+1); ?></td>
	    		<td><?= $val->val_per; ?></td>
	    	</tr>
	<?php endforeach ?>
	</table>
<?php 
      $jumQue     	= 0;
      $jumPer     	= 0;
      $jumTotQue 	= 0;
      $jumTotPer  	= 0;
      // $arrTotal = [];
      foreach ($penilaian as $key => $value) {
        $jumQue     += $value['val_que'];
        $jumPer     += $value['val_per'];
        $jumTotQue  =  $key * $jumQue;
        $jumTotPer  =  $key * $jumPer;
      }

      $hasil = ($jumTotQue / $jumTotPer) * 100;
      
      // $jumlah = (1 * $val1) + (2 * $val2) + (3 * $val3) + (4 * $val4) + (5 * $val5);
?>

<p>Jumlah Total Kuisoner : <?= $jumTotQue; ?></p>
<p>Jumlah Total Persepsi : <?= $jumTotPer; ?></p>
<p>Hasil : <?= number_format($hasil,1);  ?>%</p>