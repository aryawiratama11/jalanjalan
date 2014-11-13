<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');?>
<!DOCTYPE html>
<html>

<head>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap-theme.min.css">

  <meta charset="UTF-8">


  <style>@charset "utf-8";
/* CSS Document */

/* ---------- FONTAWESOME ---------- */
/* ---------- http://fortawesome.github.com/Font-Awesome/ ---------- */
/* ---------- http://weloveiconfonts.com/ ---------- */

@import url(http://weloveiconfonts.com/api/?family=fontawesome);

/* ---------- ERIC MEYER'S RESET CSS ---------- */
/* ---------- http://meyerweb.com/eric/tools/css/reset/ ---------- */

@import url(http://meyerweb.com/eric/tools/css/reset/reset.css);

/* ---------- FONTAWESOME ---------- */

[class*="fontawesome-"]:before {
  font-family: 'FontAwesome', sans-serif;
}

/* ---------- GENERAL ---------- */

body {
	/*background-image: url('<?php // echo base_url('image/cloud.jpg'); ?>');*/
        background-color: #ffffff ; /* #0794F8;*/
        background-size: 100%;
        background-repeat:no-repeat;
	color: #606468;
  font: 87.5%/1.5em 'Open Sans', sans-serif;
  margin: 0;
}

a {
	color: #D26DA1;
	text-decoration: none;
}

a:hover {
	text-decoration: underline;
}

input {
	border: none;
	font-family: 'Open Sans', Arial, sans-serif;
	font-size: 14px;
	line-height: 1.5em;
	padding: 0;
	-webkit-appearance: none;
}

p {
	line-height: 1.5em;
}

.clearfix { *zoom: 1; } /* For IE 6/7 */
.clearfix:before, .clearfix:after {
	display: table;
	content: "";
}
.clearfix:after { clear: both; }

/* ---------- LOGIN ---------- */

#login {
	margin: 50px auto;
	width: 280px;
}

#login form span {
	background-color: #363b41;
	border-radius: 3px 0px 0px 3px;
	color: #606468;
	display: block;
	float: left;
	height: 50px;
	line-height: 50px;
	text-align: center;
	width: 50px;
}

#login form input {
	height: 50px;
}

#login form input[type="text"], input[type="password"] {
	background-color: #3b4148;
	border-radius: 0px 3px 3px 0px;
	color: #E8ECF0;
	margin-bottom: 1em;
	padding: 0 16px;
	width: 198px;
}

#login form input[type="submit"] {
	border-radius: 3px;
	-moz-border-radius: 3px;
	-webkit-border-radius: 3px;
	background-color: #ea4c88;
	color: #eee;
	font-weight: bold;
	margin-bottom: 2em;
	text-transform: uppercase;
	width: 100px;
}

#login form input[type="submit"]:hover {
	background-color: #D34587;
}

#login > p {
	text-align: center;
}

#login > p span {
	padding-left: 5px;
}
  
.testbox {
  margin: 20px auto;
  width: 343px; 
  height: 464px; 
  -webkit-border-radius: 8px/7px; 
  -moz-border-radius: 8px/7px; 
  border-radius: 8px/7px; 
  background-color: #ebebeb; 
  -webkit-box-shadow: 1px 2px 5px rgba(0,0,0,.31); 
  -moz-box-shadow: 1px 2px 5px rgba(0,0,0,.31); 
  box-shadow: 1px 2px 5px rgba(0,0,0,.31); 
  border: solid 1px #cbc9c9;
}
.judul{
    color: red;
    margin-left: auto;
    margin-right: auto;
    width: 20%;
    size: 70%;
}
  </style>

  <script>
    window.open    = function(){};
    window.print   = function(){};
    // Support hover state for mobile.
    if (false) {
      window.ontouchstart = function(){};
    }
  </script>

</head>

<body>

  <html lang="en-US">
<head>

	<meta charset="utf-8">

	<title>Login</title>

    <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Open+Sans:400,700">

	<!--[if lt IE 9]>
		<script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
	<![endif]-->

</head>

<body>

    <div class="testbox">
        <br/>
        <br/>
        <div class="judul">
            <img src="<?php echo base_url('image/lock.png'); ?>" width="75" height="75">
        </div>
    <div id="login">
        <?php if(isset($info)){
                            echo $info;
                            } ?>
        <?php if(isset($error)){
                            echo $error;
        }
        ?>
        <form action="<?php echo base_url("login/cek_user"); ?>" method="post">

            <fieldset class="clearfix">

                <p><span class="fontawesome-user"></span><input type="text" autocomplete="off" name="username" placeholder="username"  onBlur="if(this.value == '') this.value = 'Username'" onFocus="if(this.value == 'Username') this.value = ''" required></p>
                <p><span class="fontawesome-lock"></span><input type="password" autocomplete="off" name="password" placeholder="password"   onBlur="if(this.value == '') this.value = 'Password'" onFocus="if(this.value == 'Password') this.value = ''" required></p> 
                <p><input type="submit" value="Sign In">     <a href="#" class="fontawesome-key"> Lupa password ?</a></p>
                
            </fieldset>

        </form>

        <p>Tidak Punya Akun ? <a href="<?php echo base_url('login/register'); ?>">Daftar Disini</a><span class="fontawesome-arrow-right"></span></p>

    </div> <!-- end login -->
</div>
</body>
</html>