<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');?>
<style>
    .kecil{
        font-size: 10px;
        font-style: italic;
    }
    a{
        color: #c7254e;
    }
    a.hover{
        color: #003399;
    }
    th{
        color: #0088cc;
    }
</style>
<div class="panel">
    <div class="panel-title"><?php 
    if(isset($go_date)){
        ?>
        
    
        <legend>Pencarian dengan kriteria:</legend>
        <table class="table table-responsive">
            <tr>
                <td>Tanggal</td>
                <td>:</td>
                <td><?php echo $go_date;?></td>
            </tr>
            <tr>
                <td>Tujuan</td>
                <td>:</td>
                <td></td>
            </tr>
        </table>
        <?php
    }
?>
    </div>
    <div class="panel-body">
        
    </div>
</div>


        <?php if(isset($dept)){
            ?>
<table class="table table-hover table-responsive table-condensed">
    <thead>
        <tr>
            <th>Pesawat</th>
            <th>Asal Kota</th>
            <th>Kota Tujuan</th>
            <th>Berangkat</th>
            <th>Tiba</th>
            <th>Harga</th>
        </tr>
    </thead>
    <tbody>
<?php
           
            foreach ($dept as  $dep=>$de){
                 echo $cek;
                foreach ($de as $d){ 
                    ?>
        
        <tr>
            <td><img title="<?php echo $d['airlines_name']; ?>" src="<?php echo $d['image'];?>"></td>
            <td title=""><div class="kecil"><?php echo $d['arrival_city']; ?></div><?php echo $d['arrival_city_name']; ?></td>
            <td><div class="kecil"><?php echo $d['departure_city']; ?></div><?php echo $d['departure_city_name']; ?></td>
            <td><?php echo  $d['simple_arrival_time']; ?></td>
            <td><?php echo $d['simple_departure_time']; ?></td>
            <td><?php echo "Rp ".number_format($d['price_value']); ?>
            <?php if ($d['is_promo']==1){
                ?>
                <img src="<?php echo base_url('image/promo.png'); ?>" width="25" height="25" title="promo">
            <?php    
            }elseif($d['is_promo']==0){echo '';} ?>
            </td>
            <td><a class="glyphicon glyphicon-send" href="<?php ?>">pesan</a></td>
        </tr>
        
        <?php
                }
            }
        }   
        ?>
        
        
    </tbody>
</table>