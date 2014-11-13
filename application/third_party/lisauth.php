<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');


class Configg{
    
    var $date;
    var $expired;
    var $denied;
    var $accept;
    var $upgrade;
    var $newlisen;
    var $enskripsi;
    var $token;
    
    function index(){
        echo "error 404 page not found";
    }
    
    final function buat_token(){
        $this->token = uniqid();
        $this->token = md5($this->token);
        $this->enskripsi = substr($this->token, 8, 6);
        $this->enskripsi = sha1($this->enskripsi);
        $this->enskripsi = substr($this->token, 8, 6);
    }
    
}