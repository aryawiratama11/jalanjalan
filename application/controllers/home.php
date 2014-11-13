<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Home extends CI_Controller{
    
    var $sekret="871f1a173e1e303ad67e13e82857d6db";
    var $dataType="json";
    var $var1;
    var $token;
    var $akun;


    public function __construct() {
        parent::__construct();
        $this->load->model('usermodel');
        
    }
    
    public function index(){
        $this->pesawat();
    }
    

    private function config(){
        //mengambil token terlebih dahulu
        $url_akses = file_get_contents("https://api.master18.tiket.com/apiv1/payexpress?method=getToken&secretkey=$this->sekret&output=$this->dataType");
        $akun = json_decode($url_akses, TRUE);
        $this->token = $akun['token'];
    }
    
    function pesawat(){
//        ini_set('display_errors', 'Off');
//        error_reporting(0);
        $session = $this->session->userdata('username');
        if(!$_POST){
            $this->template->load('template','pesawat');
        }  else {
            $d          = $this->input->post("d"); //departure airport code
            $a          = $this->input->post("a"); //arrival airport code
            $date       = $this->input->post("date"); // depart date
            $ret_date   = $this->input->post("ret_date"); //return date
            $adult      = $this->input->post("adult"); //dewasa
            $child      = $this->input->post("child");  //anak anak
            $infant     = $this->input->post("infant"); // bayi
            $sort    = $this->input->post("sort"); // bayi
            $this->config();
            
            array(
            'd'         =>$d,
            'a'         =>$a,
            'date'      =>$date,
            'ret_date'  =>$ret_date,
            'adult'     =>$adult,
            'child'     =>$child,
            'infant'    =>$infant,
            'sort'      =>$sort
        );
        $url_akses  = file_get_contents("http://api.master18.tiket.com/search/flight?d=$d&a=$a&date=$date&ret_date=$ret_date&adult=$adult&child=$child&infant=$infant&token=$this->token&sort=$sort&v=3&output=$this->dataType");
        echo "http://api.master18.tiket.com/search/flight?d=$d&a=$a&date=$date&ret_date=$ret_date&adult=$adult&child=$child&infant=$infant&token=$this->token&v=3&output=$this->dataType" ;
        $this->akun = json_decode($url_akses, TRUE);
        
        $data = array(
            
            'dept'=>$this->akun['departures'],
            'sesi'=>$session,
            'cek' =>'<div class="alert alert-success"><a href="#" class="close" data-dismiss="alert">&times;</a><strong>Success!</strong> Your message has been sent successfully.</div>',
            'go_date'=>$this->akun['go_det']['formatted_date'],
            'dep_business_name'=>  $this->akun['go_det']['dep_airport']['business_name'],
            'arr_business_name'=>  $this->akun['go_det']['arr_airport']['business_name'],
        );
        
        $this->template->set('title','Tiket Pesawat');
        $this->template->load('template','pesawat',$data);
        }
        
         
        
    }
   
            
    function login(){
        redirect('login');
    }
}
