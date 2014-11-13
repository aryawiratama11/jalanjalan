<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');?>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
  <meta name="description" content="">
  <meta name="author" content="">
  <meta http-equiv="Cache-Control" content="no-cache" >
	
            <link rel="stylesheet" href="//code.jquery.com/ui/1.11.1/themes/smoothness/jquery-ui.css">
            <link rel="stylesheet" href="<?php echo base_url('bootstrap/css/bootstrap.min.css'); ?>">
            <link rel="stylesheet" href="<?php echo base_url('bootstrap/css/select2.css'); ?>">
            <script src="//code.jquery.com/jquery-1.10.2.js"></script>
            <script src="//code.jquery.com/ui/1.11.1/jquery-ui.js"></script>
            <script src="<?php echo base_url('bootstrap/js/bootstrap.min.js'); ?>"></script>
            <script src="<?php echo base_url('bootstrap/select2/select2.js'); ?>"></script>
            <script src="<?php echo base_url('bootstrap/input.js'); ?>"></script>

        
        <script>
          
		$(document).ready(function() { 
			$("select.select").select2(); 
		});
                
                 $(function(){
                    $('#pulang').datepicker({
                        dateFormat: 'yy-mm-dd',
                        altFormat: 'yy-mm-dd'
                    });
                });
                
                $(function(){
                    $('#pergi').datepicker({
                        dateFormat: 'yy-mm-dd',
                        altFormat: 'yy-mm-dd'
                    });
                }); 
                </script>
                
	<script type="text/javascript">
            
            $().ready(function() {


    $('#clicker').click(function() {
        $('#pulang').each(function() {
            if ($(this).attr('disabled')) {
                $(this).removeAttr('disabled');
                
            }
            else {
                $(this).attr({
                    'disabled': 'disabled'
                });
            }
        });
    });
});

$(document).ready(function(){ 
    $("#myTab a").click(function(e){
    	e.preventDefault();
    	$(this).tab('show');
    });
});

        </script>
  
        <style>
.navbar-default {
	background-color: #03abfc;
	border-color: #0080c0;
}
.navbar-default .navbar-brand {
	color: #ffffff;
}
.navbar-default .navbar-brand:hover, .navbar-default .navbar-brand:focus {
	color: #ecdbff;
}
.navbar-default .navbar-text {
	color: #ffffff;
}
.navbar-default .navbar-nav > li > a {
	color: #ffffff;
}
.navbar-default .navbar-nav > li > a:hover, .navbar-default .navbar-nav > li > a:focus {
	color: #ecdbff;
}
.navbar-default .navbar-nav > .active > a, .navbar-default .navbar-nav > .active > a:hover, .navbar-default .navbar-nav > .active > a:focus {
	color: #ecdbff;
	background-color: #0080c0;
}
.navbar-default .navbar-nav > .open > a, .navbar-default .navbar-nav > .open > a:hover, .navbar-default .navbar-nav > .open > a:focus {
	color: #ecdbff;
	background-color: #0080c0;
}
.navbar-default .navbar-toggle {
	border-color: #0080c0;
}
.navbar-default .navbar-toggle:hover, .navbar-default .navbar-toggle:focus {
	background-color: #0080c0;
}
.navbar-default .navbar-toggle .icon-bar {
	background-color: #ffffff;
}
.navbar-default .navbar-collapse,
.navbar-default .navbar-form {
	border-color: #ffffff;
}
.navbar-default .navbar-link {
	color: #ffffff;
}
.navbar-default .navbar-link:hover {
	color: #ecdbff;
}

@media (max-width: 767px) {
	.navbar-default .navbar-nav .open .dropdown-menu > li > a {
		color: #ffffff;
	}
	.navbar-default .navbar-nav .open .dropdown-menu > li > a:hover, .navbar-default .navbar-nav .open .dropdown-menu > li > a:focus {
		color: #ecdbff;
	}
	.navbar-default .navbar-nav .open .dropdown-menu > .active > a, .navbar-default .navbar-nav .open .dropdown-menu > .active > a:hover, .navbar-default .navbar-nav .open .dropdown-menu > .active > a:focus {
		color: #ecdbff;
		background-color: #0080c0;
	}
}


body{
    max-width: 100%;
    /*background : url('<?php // echo base_url('image/cloud.jpg'); ?>');*/
}
footer {
  height: 100px;
  background-color: #222222;
  border:0 solid #080808;
  border-top-width: 1px;
  margin-top:50px;
}

footer > .container {
  padding: 20px;
}

        </style>
</head>
<title>Travel Kita Pusat Reservasi Tiket Online Termurah Se Indonesia</title>
<body>
<div class="container">
	<div class="row clearfix">
		<div class="col-md-12 column">	
                    <nav class="navbar navbar-default navbar-fixed-top" role="navigation">
				<div class="navbar-header">
                                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"> <span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button> <a class="navbar-brand" href="<?php echo base_url('home');?>">FPI</a>
				</div>
				
				<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
					<ul class="nav navbar-nav">
						<li class="active">
                                                    <a href="<?php echo base_url("home/pesawat"); ?>">PS</a>
						</li>
						<li>
							<a href="#">KRTi</a>
						</li>
						<li>
							 <a href="#">HTL</a>
						</li>
					</ul>
					<ul class="nav navbar-nav navbar-right">
                                            <?php 
                                                $sesi = $this->session->userdata('username');
                                                if($sesi!=NULL){
                                                    echo "<li><a href='#'>Hello : <font color='#FCA2A2'>".$sesi."</font></a></li>";
                                                    ?>
                                            <li><a class="glyphicon glyphicon-stop" href="<?php echo base_url('login/logout');?>">Logout</a></li>
                                            <?php
                                                }  else {
                                                    ?>
                                                    <li>
                                                        <a href="<?php echo base_url('home/login');?>" class="glyphicon glyphicon-log-in"> Login</a>
                                                    </li>
                                                    <li>
                                                        <a href="#" class="glyphicon glyphicon-list"> SignUp</a>
                                                    </li>
                                            <?php
                                                }
                                            ?>
					</ul>
				</div>				
			</nav>
                    <br/>
                    <br/>
                    <br/>
                    
		</div>
	</div>
</div>
    

    
    <!-- -->
    
    <div class="container-fluid">
  
  <!--left-->
  <div class="col-sm-3">
    	<div class="panel panel-default">
         	<div class="panel-heading">Cari Tiket</div>
         	<div class="panel-body">
        <div class="bs-example">
    <ul class="nav nav-tabs" id="myTab">
        <li class="active"><a href="#sectionA">Pesawat</a></li>
        <li><a href="#sectionB">Section B</a></li>
    </ul>
    <div class="tab-content">
        
            <!-- Start cari pesawat -->
            
        <div id="sectionA" class="tab-pane fade in active">
            <form action="<?php echo base_url("home/pesawat"); ?>" method="post"> 
            <label>Dari :</label>
            <section>
                        <select data-placeholder="Choose flight from" id="d" class="select" style="width:200px" name="d">
                                        <optgroup label="(Popular)">
                                                    <option value="BPN" >BalikPapan - BPN</option>
                                                    <option value="BDJ" >Banjarmasin - BDJ</option>
                                                    <option value="DPS" >Denpasar, Bali - DPS</option>
                                                    <option value="CGK" >Jakarta - Cengkareng - CGK</option>
                                                    <option value="HLP" >Jakarta - Halim - HLP</option>
                                                    <option value="KNO" >Medan (Kuala Namu) - KNO</option>
                                                    <option value="PDG" >Padang - PDG</option>
                                                    <option value="SUB" >Surabaya - SUB</option>
                                                    <option value="UPG" >Ujungpandang, Makassar - UPG</option>
                                                    <option value="JOG" >Yogyakarta - JOG</option>                                                    
                                                </optgroup>
                                                
                                                <optgroup label="Indonesia">
                                                    <option value="AMQ" >Ambon - AMQ</option>
                                                    <option value="BJW" >Bajawa - BJW</option>
                                                    <option value="BPN" >BalikPapan - BPN</option>
                                                    <option value="BTJ" >Banda Aceh - BTJ</option>
                                                    <option value="BDO" >Bandung - BDO</option>
                                                    <option value="BDJ" >Banjarmasin - BDJ</option>
                                                    <option value="DQJ" >Banyuwangi - DQJ</option>
                                                    <option value="BTH" >Batam - BTH</option>
                                                    <option value="BUW" >Baubau - BUW</option>
                                                    <option value="BKS" >Bengkulu - BKS</option>
                                                    <option value="BEJ" >Berau - BEJ</option>
                                                    <option value="BIK" >Biak - BIK</option>
                                                    <option value="BMU" >Bima - BMU</option>
                                                    <option value="WUB" >Buli - WUB</option>
                                                    <option value="UOL" >Buol - UOL</option>
                                                    <option value="DPS" >Denpasar, Bali - DPS</option>
                                                    <option value="ENE" >Ende - ENE</option>
                                                    <option value="FKQ" >FakFak - FKQ</option>
                                                    <option value="GTO" >Gorontalo - GTO</option>
                                                    <option value="GNS" >GunungSitoli - GNS</option>
                                                    <option value="CGK" >Jakarta - Cengkareng - CGK</option>
                                                    <option value="HLP" >Jakarta - Halim - HLP</option>
                                                    <option value="DJB" >Jambi - DJB</option>
                                                    <option value="DJJ" >Jayapura - DJJ</option>
                                                    <option value="KNG" >Kaimana - KNG</option>
                                                    <option value="KDI" >Kendari - KDI</option>
                                                    <option value="KBU" >Kotabaru - KBU</option>
                                                    <option value="KOE" >Kupang - KOE</option>
                                                    <option value="LBJ" >LabuanBajo - LBJ</option>
                                                    <option value="LAH" >Labuha - LAH</option>
                                                    <option value="TKG" >Lampung - TKG</option>
                                                    <option value="LSW" >Lhokseumawe - LSW</option>
                                                    <option value="LOP" >Lombok, Mataram - LOP</option>
                                                    <option value="LUW" >Luwuk - LUW</option>
                                                    <option value="MLG" >Malang - MLG</option>
                                                    <option value="MJU" >Mamuju - MJU</option>
                                                    <option value="MDC" >Manado - MDC</option>
                                                    <option value="MKW" >Manokwari - MKW</option>
                                                    <option value="MOF" >Maumere - MOF</option>
                                                    <option value="KNO" >Medan (Kuala Namu) - KNO</option>
                                                    <option value="MNA" >Melanguane - MNA</option>
                                                    <option value="MKQ" >Merauke - MKQ</option>
                                                    <option value="MEQ" >Meulaboh - MEQ</option>
                                                    <option value="NBX" >Nabire - NBX</option>
                                                    <option value="NTX" >NatunaRanai - NTX</option>
                                                    <option value="PDG" >Padang - PDG</option>
                                                    <option value="PKY" >Palangka raya - PKY</option>
                                                    <option value="PLM" >Palembang - PLM</option>
                                                    <option value="PLW" >Palu - PLW</option>
                                                    <option value="PGK" >Pangkal pinang - PGK</option>
                                                    <option value="PKN" >Pangkalan Bun - PKN</option>
                                                    <option value="PKU" >Pekanbaru - PKU</option>
                                                    <option value="PUM" >Pomalaa - PUM</option>
                                                    <option value="PNK" >Pontianak - PNK</option>
                                                    <option value="PSJ" >Poso - PSJ</option>
                                                    <option value="ARD" >Pulau Alor - ARD</option>
                                                    <option value="RTG" >Ruteng - RTG</option>
                                                    <option value="SMQ" >Sampit - SMQ</option>
                                                    <option value="SXK" >Saumlaki - SXK</option>
                                                    <option value="YKR" >Selayar - YKR</option>
                                                    <option value="SRG" >Semarang - SRG</option>
                                                    <option value="AEG" >Sibolga - AEG</option>
                                                    <option value="DTB" >Silangit - DTB</option>
                                                    <option value="SNX" >Sinabang - SNX</option>
                                                    <option value="SOC" >Solo - SOC</option>
                                                    <option value="SOQ" >Sorong - SOQ</option>
                                                    <option value="SWQ" >Sumbawa - SWQ</option>
                                                    <option value="SUB" >Surabaya - SUB</option>
                                                    <option value="NAH" >Tahuna - NAH</option>
                                                    <option value="TMC" >Tambolaka - TMC</option>
                                                    <option value="TJQ" >Tanjung Pandan - TJQ</option>
                                                    <option value="TNJ" >Tanjung Pinang - TNJ</option>
                                                    <option value="TRK" >Tarakan - TRK</option>
                                                    <option value="TTE" >Ternate - TTE</option>
                                                    <option value="TIM" >Timika - TIM</option>
                                                    <option value="KAZ" >Tobelo - KAZ</option>
                                                    <option value="LUV" >Tual - LUV</option>
                                                    <option value="UPG" >Ujungpandang, Makassar - UPG</option>
                                                    <option value="WGP" >Waingapu - WGP</option>
                                                    <option value="WNI" >Wakatobi - WNI</option>
                                                    <option value="WMX" >Wamena - WMX</option>
                                                    <option value="WGI" >Wangi wangi - WGI</option>
                                                    <option value="JOG" >Yogyakarta - JOG</option>                                                    
                                                </optgroup>
                                                
                                                <optgroup label="Japan ">
                                                    <option value="FUK" >Fukuoka - FUK</option>
                                                    <option value="NGO" >Nagoya - NGO</option>
                                                    <option value="OKA" >Okinawa - Naha - OKA</option>
                                                    <option value="KIX" >Osaka - Kansai - KIX</option>
                                                    <option value="CTS" >Sapporo - Shin-Chitose - CTS</option>
                                                    <option value="HND" >Tokyo - Haneda - HND</option>
                                                    <option value="NRT" >Tokyo - Narita - NRT</option>                                                   
                                                </optgroup>
                                                
                                                <optgroup label="Thailand ">
                                                    <option value="DMK" >Bangkok - Don Mueang - DMK</option>
                                                    <option value="BKK" >Bangkok - Suvarnabhumi - BKK</option>
                                                    <option value="CNX" >Chiang Mai - CNX</option>
                                                    <option value="CEI" >Chiang Rai - CEI</option>
                                                    <option value="HDY" >Hat Yai - HDY</option>
                                                    <option value="KBV" >Krabi - KBV</option>
                                                    <option value="KOP" >Nakhon Phanom - KOP</option>
                                                    <option value="NST" >Nakhon Si Thammarat - NST</option>
                                                    <option value="NAW" >Narathiwat - NAW</option>
                                                    <option value="HKT" >Phuket - HKT</option>
                                                    <option value="URT" >Surat Thani - URT</option>
                                                    <option value="TST" >Trang - TST</option>
                                                    <option value="UBP" >Ubon Ratchathani - UBP</option>
                                                    <option value="UTH" >Udon Thani - UTH</option>                                                
                                                </optgroup>
                                                
                                                <optgroup label="Australia ">
                                                    <option value="ADL" >Adelaide - ADL</option>
                                                    <option value="ASP" >Alice Springs - ASP</option>
                                                    <option value="BNE" >Brisbane - BNE</option>
                                                    <option value="CNS" >Cairns - CNS</option>
                                                    <option value="CFS" >Coffs Harbour - CFS</option>
                                                    <option value="DRW" >Darwin - DRW</option>
                                                    <option value="OOL" >Gold Coast - OOL</option>
                                                    <option value="HBA" >Hobart - HBA</option>
                                                    <option value="MKY" >Mackay (Whitsundays) - MKY</option>
                                                    <option value="MEL" >Melbourne - MEL</option>
                                                    <option value="PER" >Perth - PER</option>
                                                    <option value="MCY" >Sunshine Coast - MCY</option>
                                                    <option value="SYD" >Sydney - SYD</option>                                                
                                                </optgroup>
                                                
                                                <optgroup label="Bangladesh ">
                                                    <option value="CGP" >Chittagong - CGP</option>
                                                    <option value="DEL" >Delhi - DEL</option>
                                                    <option value="DAC" >Dhaka - DAC</option>                                                
                                                </optgroup>
                                                
                                                <optgroup label="Brunei Darussalam ">
                                                    <option value="BWN" >Brunei - BWN</option>                                                    
                                                </optgroup>
                                                
                                                <optgroup label="Cambodia ">
                                                    <option value="PNH" >Phnom Penh - PNH</option>
                                                    <option value="REP" >Siem Reap - REP</option>                                                    
                                                </optgroup>
                                                
                                                <optgroup label="China ">
                                                    <option value="PEK" >Beijing - PEK</option>
                                                    <option value="CTU" >Chengdu - CTU</option>
                                                    <option value="CKG" >Chongqing - CKG</option>
                                                    <option value="CAN" >Guangzhou - CAN</option>
                                                    <option value="KWL" >Guilin - KWL</option>
                                                    <option value="HAK" >Haikou - HAK</option>
                                                    <option value="HGH" >Hangzhou - HGH</option>
                                                    <option value="KMG" >Kunming - KMG</option>
                                                    <option value="NNG" >Nanning - NNG</option>
                                                    <option value="NGB" >Ningbo - NGB</option>
                                                    <option value="TAO" >Qingdao - TAO</option>
                                                    <option value="PVG" >Shanghai - PVG</option>
                                                    <option value="SHE" >Shenyang - SHE</option>
                                                    <option value="SZX" >Shenzhen - SZX</option>
                                                    <option value="TSN" >Tianjin - TSN</option>
                                                    <option value="WUH" >Wuhan - WUH</option>
                                                    <option value="XIY" >Xi'an - XIY</option>
                                                </optgroup>
                                                
                                                <optgroup label="Colombia ">
                                                    <option value="CMB" >Colombo - CMB</option>
                                                </optgroup>
                                                
                                                <optgroup label="Hong Kong ">
                                                    <option value="HKG" >Hong Kong - HKG</option>
                                                </optgroup>
                                                
                                                <optgroup label="India ">
                                                    <option value="AMD" >Ahmedabad - AMD</option>
                                                    <option value="BLR" >Bangalore - BLR</option>
                                                    <option value="MAA" >Chennai - MAA</option>
                                                    <option value="HYD" >Hyderabad - HYD</option>
                                                    <option value="COK" >Kochi - COK</option>
                                                    <option value="CCU" >Kolkata - CCU</option>
                                                    <option value="BOM" >Mumbai - BOM</option>
                                                    <option value="TRV" >Thiruvananthapuram - TRV</option>
                                                    <option value="TRZ" >Tiruchirapalli (Trichy) - TRZ</option>
                                                </optgroup>
                                                
                                                <optgroup label="Laos">
                                                    <option value="VTE" >Vientiane - VTE</option>
                                                </optgroup>
                                                
                                                <optgroup label="Macau ">
                                                    <option value="MFM" >Macau - MFM</option>
                                                </optgroup>
                                                
                                                <optgroup label="Malaysia ">
                                                    <option value="AOR" >Alor Setar - AOR</option>
                                                    <option value="BTU" >Bintulu - BTU</option>
                                                    <option value="JHB" >Johor Baru - JHB</option>
                                                    <option value="KBR" >Kota Bharu - KBR</option>
                                                    <option value="BKI" >Kota Kinabalu - BKI</option>
                                                    <option value="KUL" >Kuala Lumpur - KUL</option>
                                                    <option value="TGG" >Kuala Terengganu - TGG</option>
                                                    <option value="KCH" >Kuching - KCH</option>
                                                    <option value="LGK" >Langkawi - LGK</option>
                                                    <option value="MKZ" >Malacca - MKZ</option>
                                                    <option value="MYY" >Miri - MYY</option>
                                                    <option value="PEN" >Penang - PEN</option>
                                                    <option value="SDK" >Sandaka - SDK</option>
                                                    <option value="SBW" >Sibu - SBW</option>
                                                    <option value="SZB" >Subang - SZB</option>
                                                    <option value="TWU" >Tawau - TWU</option>
                                                </optgroup>
                                                
                                                <optgroup label="Myanmar ">
                                                    <option value="MDL" >Mandalay - MDL</option>
                                                    <option value="RGN" >Yangoon - RGN</option>
                                                </optgroup>
                                                
                                                <optgroup label="Nepal ">
                                                    <option value="KTM" >Kathmandu - KTM</option>
                                                </optgroup>
                                                
                                                <optgroup label="Philippines ">
                                                    <option value="BCD" >Bacolod - BCD</option>
                                                    <option value="CEB" >Cebu - CEB</option>
                                                    <option value="CRK" >Clark (Manila) - CRK</option>
                                                    <option value="DVO" >Davao - DVO</option>
                                                    <option value="ILO" >Iloilo - ILO</option>
                                                    <option value="MNL" >Manila (NAIA) - MNL</option>
                                                    <option value="PPS" >Puerto Princesa - PPS</option>
                                                    <option value="TAC" >Tacloban - TAC</option>
                                                </optgroup>
                                                
                                                <optgroup label="Saudi Arabia ">
                                                    <option value="JED" >Jeddah - JED</option>
                                                </optgroup>
                                                
                                                <optgroup label="Singapore ">
                                                    <option value="SIN" >Singapore - SIN</option>
                                                </optgroup>
                                                
                                                <optgroup label="South Korea">
                                                    <option value="PUS" >Busan - PUS</option>
                                                    <option value="ICN" >Seoul - ICN</option>
                                                </optgroup>
                                                
                                                <optgroup label="Taiwan">
                                                    <option value="TPE" >Taipei - TPE</option>
                                                </optgroup>
                                                
                                                <optgroup label="Timor-Leste ">
                                                    <option value="DIL" >Dili - DIL</option>
                                                </optgroup>
                                                
                                                <optgroup label="United Arab Emirates ">
                                                    <option value="ABU" >Abu Dhabi - ABU</option>
                                                </optgroup>
                                                
                                                <optgroup label="Vietnam ">
                                                    <option value="DAD" >Da Nang - DAD</option>
                                                    <option value="HAN" >Hanoi - HAN</option>
                                                    <option value="SGN" >Ho Chi Minh City - SGN</option>
                                                </optgroup>
			</p>
                        </select>
                <br/>
                <br/>
                <label for="to">Ke</label><br>
					<select data-placeholder="Choose flight to" id="a" class="select" style="width:200px" name="a">
                                        <optgroup label="(Popular)">
                                                    <option value="BPN" >BalikPapan - BPN</option>
                                                    <option value="BDJ" >Banjarmasin - BDJ</option>
                                                    <option value="DPS" >Denpasar, Bali - DPS</option>
                                                    <option value="CGK" selected>Jakarta - Cengkareng - CGK</option>
                                                    <option value="HLP" >Jakarta - Halim - HLP</option>
                                                    <option value="KNO" >Medan (Kuala Namu) - KNO</option>
                                                    <option value="PDG" >Padang - PDG</option>
                                                    <option value="SUB" >Surabaya - SUB</option>
                                                    <option value="UPG" >Ujungpandang, Makassar - UPG</option>
                                                    <option value="JOG" >Yogyakarta - JOG</option>                                                    
                                                </optgroup>
                                                
                                                <optgroup label="Indonesia">
                                                    <option value="AMQ" >Ambon - AMQ</option>
                                                    <option value="BJW" >Bajawa - BJW</option>
                                                    <option value="BPN" >BalikPapan - BPN</option>
                                                    <option value="BTJ" >Banda Aceh - BTJ</option>
                                                    <option value="BDO" >Bandung - BDO</option>
                                                    <option value="BDJ" >Banjarmasin - BDJ</option>
                                                    <option value="DQJ" >Banyuwangi - DQJ</option>
                                                    <option value="BTH" >Batam - BTH</option>
                                                    <option value="BUW" >Baubau - BUW</option>
                                                    <option value="BKS" >Bengkulu - BKS</option>
                                                    <option value="BEJ" >Berau - BEJ</option>
                                                    <option value="BIK" >Biak - BIK</option>
                                                    <option value="BMU" >Bima - BMU</option>
                                                    <option value="WUB" >Buli - WUB</option>
                                                    <option value="UOL" >Buol - UOL</option>
                                                    <option value="DPS" >Denpasar, Bali - DPS</option>
                                                    <option value="ENE" >Ende - ENE</option>
                                                    <option value="FKQ" >FakFak - FKQ</option>
                                                    <option value="GTO" >Gorontalo - GTO</option>
                                                    <option value="GNS" >GunungSitoli - GNS</option>
                                                    <option value="CGK" >Jakarta - Cengkareng - CGK</option>
                                                    <option value="HLP" >Jakarta - Halim - HLP</option>
                                                    <option value="DJB" >Jambi - DJB</option>
                                                    <option value="DJJ" >Jayapura - DJJ</option>
                                                    <option value="KNG" >Kaimana - KNG</option>
                                                    <option value="KDI" >Kendari - KDI</option>
                                                    <option value="KBU" >Kotabaru - KBU</option>
                                                    <option value="KOE" >Kupang - KOE</option>
                                                    <option value="LBJ" >LabuanBajo - LBJ</option>
                                                    <option value="LAH" >Labuha - LAH</option>
                                                    <option value="TKG" >Lampung - TKG</option>
                                                    <option value="LSW" >Lhokseumawe - LSW</option>
                                                    <option value="LOP" >Lombok, Mataram - LOP</option>
                                                    <option value="LUW" >Luwuk - LUW</option>
                                                    <option value="MLG" >Malang - MLG</option>
                                                    <option value="MJU" >Mamuju - MJU</option>
                                                    <option value="MDC" >Manado - MDC</option>
                                                    <option value="MKW" >Manokwari - MKW</option>
                                                    <option value="MOF" >Maumere - MOF</option>
                                                    <option value="KNO" >Medan (Kuala Namu) - KNO</option>
                                                    <option value="MNA" >Melanguane - MNA</option>
                                                    <option value="MKQ" >Merauke - MKQ</option>
                                                    <option value="MEQ" >Meulaboh - MEQ</option>
                                                    <option value="NBX" >Nabire - NBX</option>
                                                    <option value="NTX" >NatunaRanai - NTX</option>
                                                    <option value="PDG" >Padang - PDG</option>
                                                    <option value="PKY" >Palangka raya - PKY</option>
                                                    <option value="PLM" >Palembang - PLM</option>
                                                    <option value="PLW" >Palu - PLW</option>
                                                    <option value="PGK" >Pangkal pinang - PGK</option>
                                                    <option value="PKN" >Pangkalan Bun - PKN</option>
                                                    <option value="PKU" >Pekanbaru - PKU</option>
                                                    <option value="PUM" >Pomalaa - PUM</option>
                                                    <option value="PNK" >Pontianak - PNK</option>
                                                    <option value="PSJ" >Poso - PSJ</option>
                                                    <option value="ARD" >Pulau Alor - ARD</option>
                                                    <option value="RTG" >Ruteng - RTG</option>
                                                    <option value="SMQ" >Sampit - SMQ</option>
                                                    <option value="SXK" >Saumlaki - SXK</option>
                                                    <option value="YKR" >Selayar - YKR</option>
                                                    <option value="SRG" >Semarang - SRG</option>
                                                    <option value="AEG" >Sibolga - AEG</option>
                                                    <option value="DTB" >Silangit - DTB</option>
                                                    <option value="SNX" >Sinabang - SNX</option>
                                                    <option value="SOC" >Solo - SOC</option>
                                                    <option value="SOQ" >Sorong - SOQ</option>
                                                    <option value="SWQ" >Sumbawa - SWQ</option>
                                                    <option value="SUB" >Surabaya - SUB</option>
                                                    <option value="NAH" >Tahuna - NAH</option>
                                                    <option value="TMC" >Tambolaka - TMC</option>
                                                    <option value="TJQ" >Tanjung Pandan - TJQ</option>
                                                    <option value="TNJ" >Tanjung Pinang - TNJ</option>
                                                    <option value="TRK" >Tarakan - TRK</option>
                                                    <option value="TTE" >Ternate - TTE</option>
                                                    <option value="TIM" >Timika - TIM</option>
                                                    <option value="KAZ" >Tobelo - KAZ</option>
                                                    <option value="LUV" >Tual - LUV</option>
                                                    <option value="UPG" >Ujungpandang, Makassar - UPG</option>
                                                    <option value="WGP" >Waingapu - WGP</option>
                                                    <option value="WNI" >Wakatobi - WNI</option>
                                                    <option value="WMX" >Wamena - WMX</option>
                                                    <option value="WGI" >Wangi wangi - WGI</option>
                                                    <option value="JOG" >Yogyakarta - JOG</option>                                                    
                                                </optgroup>
                                                
                                                <optgroup label="Japan ">
                                                    <option value="FUK" >Fukuoka - FUK</option>
                                                    <option value="NGO" >Nagoya - NGO</option>
                                                    <option value="OKA" >Okinawa - Naha - OKA</option>
                                                    <option value="KIX" >Osaka - Kansai - KIX</option>
                                                    <option value="CTS" >Sapporo - Shin-Chitose - CTS</option>
                                                    <option value="TYO" >Tokyo (Semua Bandara) - TYO</option>
                                                    <option value="HND" >Tokyo - Haneda - HND</option>
                                                    <option value="NRT" >Tokyo - Narita - NRT</option>                                                   
                                                </optgroup>
                                                
                                                <optgroup label="Thailand ">
                                                    <option value="BAK" >Bangkok (Semua Bandara) - BAK</option>
                                                    <option value="DMK" >Bangkok - Don Mueang - DMK</option>
                                                    <option value="BKK" >Bangkok - Suvarnabhumi - BKK</option>
                                                    <option value="CNX" >Chiang Mai - CNX</option>
                                                    <option value="CEI" >Chiang Rai - CEI</option>
                                                    <option value="HDY" >Hat Yai - HDY</option>
                                                    <option value="KBV" >Krabi - KBV</option>
                                                    <option value="KOP" >Nakhon Phanom - KOP</option>
                                                    <option value="NST" >Nakhon Si Thammarat - NST</option>
                                                    <option value="NAW" >Narathiwat - NAW</option>
                                                    <option value="HKT" >Phuket - HKT</option>
                                                    <option value="URT" >Surat Thani - URT</option>
                                                    <option value="TST" >Trang - TST</option>
                                                    <option value="UBP" >Ubon Ratchathani - UBP</option>
                                                    <option value="UTH" >Udon Thani - UTH</option>                                                
                                                </optgroup>
                                                
                                                <optgroup label="Australia ">
                                                    <option value="ADL" >Adelaide - ADL</option>
                                                    <option value="ASP" >Alice Springs - ASP</option>
                                                    <option value="BNE" >Brisbane - BNE</option>
                                                    <option value="CNS" >Cairns - CNS</option>
                                                    <option value="CFS" >Coffs Harbour - CFS</option>
                                                    <option value="DRW" >Darwin - DRW</option>
                                                    <option value="OOL" >Gold Coast - OOL</option>
                                                    <option value="HBA" >Hobart - HBA</option>
                                                    <option value="MKY" >Mackay (Whitsundays) - MKY</option>
                                                    <option value="MEL" >Melbourne - MEL</option>
                                                    <option value="PER" >Perth - PER</option>
                                                    <option value="MCY" >Sunshine Coast - MCY</option>
                                                    <option value="SYD" >Sydney - SYD</option>                                                
                                                </optgroup>
                                                
                                                <optgroup label="Bangladesh ">
                                                    <option value="CGP" >Chittagong - CGP</option>
                                                    <option value="DEL" >Delhi - DEL</option>
                                                    <option value="DAC" >Dhaka - DAC</option>                                                
                                                </optgroup>
                                                
                                                <optgroup label="Brunei Darussalam ">
                                                    <option value="BWN" >Brunei - BWN</option>                                                    
                                                </optgroup>
                                                
                                                <optgroup label="Cambodia ">
                                                    <option value="PNH" >Phnom Penh - PNH</option>
                                                    <option value="REP" >Siem Reap - REP</option>                                                    
                                                </optgroup>
                                                
                                                <optgroup label="China ">
                                                    <option value="PEK" >Beijing - PEK</option>
                                                    <option value="CTU" >Chengdu - CTU</option>
                                                    <option value="CKG" >Chongqing - CKG</option>
                                                    <option value="CAN" >Guangzhou - CAN</option>
                                                    <option value="KWL" >Guilin - KWL</option>
                                                    <option value="HAK" >Haikou - HAK</option>
                                                    <option value="HGH" >Hangzhou - HGH</option>
                                                    <option value="KMG" >Kunming - KMG</option>
                                                    <option value="NNG" >Nanning - NNG</option>
                                                    <option value="NGB" >Ningbo - NGB</option>
                                                    <option value="TAO" >Qingdao - TAO</option>
                                                    <option value="PVG" >Shanghai - PVG</option>
                                                    <option value="SHE" >Shenyang - SHE</option>
                                                    <option value="SZX" >Shenzhen - SZX</option>
                                                    <option value="TSN" >Tianjin - TSN</option>
                                                    <option value="WUH" >Wuhan - WUH</option>
                                                    <option value="XIY" >Xi'an - XIY</option>
                                                </optgroup>
                                                
                                                <optgroup label="Colombia ">
                                                    <option value="CMB" >Colombo - CMB</option>
                                                </optgroup>
                                                
                                                <optgroup label="Hong Kong ">
                                                    <option value="HKG" >Hong Kong - HKG</option>
                                                </optgroup>
                                                
                                                <optgroup label="India ">
                                                    <option value="AMD" >Ahmedabad - AMD</option>
                                                    <option value="BLR" >Bangalore - BLR</option>
                                                    <option value="MAA" >Chennai - MAA</option>
                                                    <option value="HYD" >Hyderabad - HYD</option>
                                                    <option value="COK" >Kochi - COK</option>
                                                    <option value="CCU" >Kolkata - CCU</option>
                                                    <option value="BOM" >Mumbai - BOM</option>
                                                    <option value="TRV" >Thiruvananthapuram - TRV</option>
                                                    <option value="TRZ" >Tiruchirapalli (Trichy) - TRZ</option>
                                                </optgroup>
                                                
                                                <optgroup label="Laos">
                                                    <option value="VTE" >Vientiane - VTE</option>
                                                </optgroup>
                                                
                                                <optgroup label="Macau ">
                                                    <option value="MFM" >Macau - MFM</option>
                                                </optgroup>
                                                
                                                <optgroup label="Malaysia ">
                                                    <option value="AOR" >Alor Setar - AOR</option>
                                                    <option value="BTU" >Bintulu - BTU</option>
                                                    <option value="JHB" >Johor Baru - JHB</option>
                                                    <option value="KBR" >Kota Bharu - KBR</option>
                                                    <option value="BKI" >Kota Kinabalu - BKI</option>
                                                    <option value="KUL" >Kuala Lumpur - KUL</option>
                                                    <option value="TGG" >Kuala Terengganu - TGG</option>
                                                    <option value="KCH" >Kuching - KCH</option>
                                                    <option value="LGK" >Langkawi - LGK</option>
                                                    <option value="MKZ" >Malacca - MKZ</option>
                                                    <option value="MYY" >Miri - MYY</option>
                                                    <option value="PEN" >Penang - PEN</option>
                                                    <option value="SDK" >Sandaka - SDK</option>
                                                    <option value="SBW" >Sibu - SBW</option>
                                                    <option value="SZB" >Subang - SZB</option>
                                                    <option value="TWU" >Tawau - TWU</option>
                                                </optgroup>
                                                
                                                <optgroup label="Myanmar ">
                                                    <option value="MDL" >Mandalay - MDL</option>
                                                    <option value="RGN" >Yangoon - RGN</option>
                                                </optgroup>
                                                
                                                <optgroup label="Nepal ">
                                                    <option value="KTM" >Kathmandu - KTM</option>
                                                </optgroup>
                                                
                                                <optgroup label="Philippines ">
                                                    <option value="BCD" >Bacolod - BCD</option>
                                                    <option value="CEB" >Cebu - CEB</option>
                                                    <option value="CRK" >Clark (Manila) - CRK</option>
                                                    <option value="DVO" >Davao - DVO</option>
                                                    <option value="ILO" >Iloilo - ILO</option>
                                                    <option value="MNL" >Manila (NAIA) - MNL</option>
                                                    <option value="PPS" >Puerto Princesa - PPS</option>
                                                    <option value="TAC" >Tacloban - TAC</option>
                                                </optgroup>
                                                
                                                <optgroup label="Saudi Arabia ">
                                                    <option value="JED" >Jeddah - JED</option>
                                                </optgroup>
                                                
                                                <optgroup label="Singapore ">
                                                    <option value="SIN" >Singapore - SIN</option>
                                                </optgroup>
                                                
                                                <optgroup label="South Korea">
                                                    <option value="PUS" >Busan - PUS</option>
                                                    <option value="ICN" >Seoul - ICN</option>
                                                </optgroup>
                                                
                                                <optgroup label="Taiwan">
                                                    <option value="TPE" >Taipei - TPE</option>
                                                </optgroup>
                                                
                                                <optgroup label="Timor-Leste ">
                                                    <option value="DIL" >Dili - DIL</option>
                                                </optgroup>
                                                
                                                <optgroup label="United Arab Emirates ">
                                                    <option value="ABU" >Abu Dhabi - ABU</option>
                                                </optgroup>
                                                
                                                <optgroup label="Vietnam ">
                                                    <option value="DAD" >Da Nang - DAD</option>
                                                    <option value="HAN" >Hanoi - HAN</option>
                                                    <option value="SGN" >Ho Chi Minh City - SGN</option>
                                                </optgroup>
			</p>
                        </select>
                    </section>
            <br/>
            <label>Sekali Jalan : </label><input id="clicker" type="checkbox" name="kembali" class="checkbox" title="untuk dua kali jalan uncheck "/><br/> 
            <input type="text" value="" name="date" id="pergi" class="form-control" placeholder="Tanggal Berangkat"><br/>
            <select class="form-control" name="sort">
                <option value="priceasc">Harga Menurun</option>
                <option value="pricedesc">Harga Menaik</option>
                <option value="departureasc">Berangkat</option>
                <option value="arrivalasc">Kedatangan</option>
            </select>
            <input type="text" value=""  name="ret_date" id="pulang" class="form-control" placeholder="Tanggal Kembali" autocomplete="off"> <br/>          
            <input type="number" value="1"  name="adult"  class="form-control" placeholder="jumlah orang dewasa" autocomplete="off"> <br/>          
            <input type="number" value=""  name="child"  class="form-control" placeholder="jumlah orang anak" title="kosongkan jika tidak ada" autocomplete="off"> <br/>          
            <input type="number" value=""  name="infant"  class="form-control" placeholder="jumlah orang bayi" title="kosongkan jika tidak ada" autocomplete="off"> <br/>          
            <button class="btn btn-toolbar glyphicon glyphicon-search"> Cari Tiket</button>
        </div>
    </form>
            <!--   end search pesawat-->
            
        <div id="sectionB" class="tab-pane fade">
            <h3>Section B</h3>
            <p>h urna, ornare id gravida ut, mollis a magna. Aliquam porttitor condimentum nisi, eu viverra ipsum porta ut. Nam hendrerit bibendum turpis, sed molestie mi fermentum id. Aenean volutpat velit sem. Sed consequat ante in rutrum convallis. Nunc facilisis leo at faucibus adipiscing.</p>
        </div>
            
            
    </div>
</div>


                </div>
        </div>
        <hr>
        
        <hr>
        <div class="panel panel-default">
         	<div class="panel-heading">Title</div>
         	<div class="panel-body">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis pharetra varius quam sit amet vulputate. 
            Quisque mauris augue, molestie tincidunt condimentum vitae, gravida a libero. Aenean sit amet felis 
            dolor, in sagittis nisi. Sed ac orci quis tortor imperdiet venenatis. Duis elementum auctor accumsan. 
            Aliquam in felis sit amet augue.</div>
        </div>
        <hr>
        <div class="panel panel-default">
         	<div class="panel-heading">Title</div>
         	<div class="panel-body">Content here..</div>
        </div>
        <hr>
  </div><!--/left-->
  
  <!--center-->
  <div class="col-sm-6">
    <div class="row">
      <div class="col-xs-12">
        <div class="column">
                        <?php echo $contents;?>
        </div>
      </div>
    </div>
    <hr>
    <div class="row">
      <div class="col-xs-12">
        <h2>Article Heading</h2>
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis pharetra varius quam sit amet vulputate. 
          Quisque mauris augue, molestie tincidunt condimentum vitae, gravida a libero. Aenean sit amet felis 
          dolor, in sagittis nisi. Sed ac orci quis tortor imperdiet venenatis. Duis elementum auctor accumsan. 
          Aliquam in felis sit amet augue.</p>
        <p class="lead"><button class="btn btn-default">Read More</button></p>
        <p class="pull-right"><span class="label label-default">keyword</span> <span class="label label-default">tag</span> <span class="label label-default">post</span></p>
        <ul class="list-inline"><li><a href="#">4 Days Ago</a></li><li><a href="#"><i class="glyphicon glyphicon-comment"></i> 7 Comments</a></li><li><a href="#"><i class="glyphicon glyphicon-share"></i> 56 Shares</a></li></ul>
      </div>
    </div>
    <hr>      
    <div class="row">
      <div class="col-xs-12">
        <h2>Article Heading</h2>
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis pharetra varius quam sit amet vulputate. 
          Quisque mauris augue, molestie tincidunt condimentum vitae, gravida a libero. Aenean sit amet felis 
          dolor, in sagittis nisi. Sed ac orci quis tortor imperdiet venenatis. Duis elementum auctor accumsan. 
          Aliquam in felis sit amet augue.</p>
        <p class="lead"><button class="btn btn-default">Read More</button></p>
        <p class="pull-right"><span class="label label-default">keyword</span> <span class="label label-default">tag</span> <span class="label label-default">post</span></p>
        <ul class="list-inline"><li><a href="#">1 Week Ago</a></li><li><a href="#"><i class="glyphicon glyphicon-comment"></i> 4 Comments</a></li><li><a href="#"><i class="glyphicon glyphicon-share"></i> 34 Shares</a></li></ul>
      </div>
    </div>
    <hr>
  </div><!--/center-->

  <!--right-->
  <div class="col-sm-3">
        <h2>Side</h2>
    	<div class="panel panel-default">
         	<div class="panel-heading">Title</div>
         	<div class="panel-body">Sed ac orci quis tortor imperdiet venenatis. Duis elementum auctor accumsan. 
            Aliquam in felis sit amet augue.</div>
        </div>
        <hr>
        <div class="panel panel-default">
         	<div class="panel-heading">Title</div>
         	<div class="panel-body">Content here..</div>
        </div>
        <hr>
        <div class="panel panel-default">
         	<div class="panel-heading">Title</div>
         	<div class="panel-body">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis pharetra varius quam sit amet vulputate. 
            Quisque mauris augue, molestie tincidunt condimentum vitae, gravida a libero. Aenean sit amet felis 
            dolor, in sagittis nisi. Sed ac orci quis tortor imperdiet venenatis. Duis elementum auctor accumsan. 
            Aliquam in felis sit amet augue.</div>
        </div>
        <hr>
        <div class="panel panel-default">
         	<div class="panel-heading">Title</div>
         	<div class="panel-body">Content here..</div>
        </div>
        <hr>
  </div><!--/right-->
  <hr>
</div>
        <!-- JavaScript jQuery code from Bootply.com editor  -->
        
        <script type='text/javascript'>
        
        $(document).ready(function() {
        
            
        
        });
        
        </script>
        
        <script>
          (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
          (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
          m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
          })(window,document,'script','//www.google-analytics.com/analytics.js','ga');
          ga('create', 'UA-40413119-1', 'bootply.com');
          ga('send', 'pageview');
        </script>
    
</body>


</html>
