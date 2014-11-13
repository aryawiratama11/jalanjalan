<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');?>

<html>
    <head>
            <link rel="stylesheet" href="//code.jquery.com/ui/1.11.1/themes/smoothness/jquery-ui.css">
            <link rel="stylesheet" href="<?php echo base_url('bootstrap/css/bootstrap.min.css'); ?>">
            <link rel="stylesheet" href="<?php echo base_url('bootstrap/css/select2.css'); ?>">
            <script src="//code.jquery.com/jquery-1.10.2.js"></script>
            <script src="//code.jquery.com/ui/1.11.1/jquery-ui.js"></script>
            <script src="<?php echo base_url('bootstrap/js/bootstrap.min.js'); ?>"></script>
            <script src="<?php echo base_url('bootstrap/select2/select2.js'); ?>"></script>
            <script src="<?php echo base_url('bootstrap/input.js'); ?>"></script>
    </head>
    
    <body>
        <title>Form Verifikasi</title>
        <center>
            
            
            <div class="panel">
                <div class="panel panel-title">
                    <img src='http://screenshots.en.sftcdn.net/en/scrn/3340000/3340747/google-authenticator-01-563x535.jpg' width="120" height="120">
                </div>
                <font size="4" color="red">Cek Inbox Email Anda Atau Folder Spam Email</font>
                <div class="panel-body" style="width: 250px">
                    <form action="<?php echo base_url('login/verifikasi');?>" method="post">
                        <input type="text" autocomplete="off" class="form-control" placeholder="insert your token" name="token">
                    <p><button class="btn btn-danger glyphicon glyphicon-warning-sign"> Accept</button></p>
                    </form>
                    
                </div>
            </div>
        </center>
    </body>
</html>