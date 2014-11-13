<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Example extends CI_Controller{
   
    function index(){
        $this->load->library('qrcode');
        
        $kata1  = "dhimas";
        $kata2  = "ganteng sekali";
        $qr = new qrcode();
        $qr->content("image/gif",$kata1,$kata2);
        echo "<p>QR code with file content</p>";
        echo "<p><img src='".$qr->get_link()."' border='0'/></p>";
        $this->template->load('template','sample');

    }
}