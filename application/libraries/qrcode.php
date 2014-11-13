<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

require_once APPPATH. "/third_party/qrcode.php";

class QQrcode extends qrcode{
    
    public function __construct() {
        parent::__construct();
    }
    
}