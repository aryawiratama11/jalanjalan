<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Login extends CI_Controller{
//    
    var $CI = NULL;
    var $show_token;
    var $sess_username;
    var $get_token;
    var $get_date;
    var $time_sistem;
    var $time_sesi;

    function __construct() {
        parent::__construct();
        $this->load->library('auth');
        
    }
    
    function index(){
        redirect('login/cek_user');
    }
    
        private function get_token(){
        $da = new Configg();
        $da->buat_token();
        $this->show_token = $da->enskripsi;
        $this->sess_username = $this->session->userdata('username');
        $this->get_token = $this->session->userdata('token');
        $this->get_date = $this->session->userdata('date');
        $this->time_sesi = $this->session->userdata('date');
        $this->time_sistem = date('YmdHi');
     }
    
    //fungsi kirim kode konfirmasi ke email
    private function sendEmail(){
        $this->get_token();
        $user = $this->sess_username; //ambil sessionnya
        $date = date("YmdHi"); //tanggal jam sekarang realtime
        $config = Array(
            'protocol' => 'smtp',
            'smtp_host' => 'ssl://smtp.googlemail.com',
            'smtp_port' => 465,
            'smtp_user' => 'presisishop@gmail.com', // email sistem  
            'smtp_pass' => 'didiempo90', // password email sistem
            'mailtype' => 'html',
            'charset' => 'iso-8859-1',
            'wordwrap' => TRUE
            );
        
        
        $pesan ="<html><head><title>Kode Authentikasi Login Anda</title></head><body>
            <img src='https://cdn1.iconfinder.com/data/icons/google_jfk_icons_by_carlosjj/128/authenticator.png'></img><br/>
            <font size='5'>Masukan Kode Authentikasi Anda</font> <font color='red' size='7'>$this->show_token</font>
            </body>
            </html>";
        
        $this->load->library('email',$config);
        $this->email->set_newline("\r\n");
        $this->email->from('guide.travelkita.com');//email sistem
        $this->email->to($this->sess_username); //email penerima
        $this->email->subject("(don't-reply this message !!)Kode Authentikasi Login Anda");
        $this->email->message($pesan);
        if($this->email->send()){
            $sql = "update tb_user set date='$date', token='$this->show_token' where username='$user'";
            $this->db->query($sql);
            $this->load->view('verifikasi');
        }
  }
    
  
    function verifikasi(){
        
        $this->auth->cek_date();
        $s = $this->session->userdata('sess_aktiv');
        $this->get_token();
        $token = $this->input->post('token');
        
        $sql = "select token,date,sess_aktiv from tb_user where username='$this->sess_username' and token='$token'";
        $data = $this->db->query($sql)->result();
        if(!$_POST){
            redirect('home');
        }else{
            
            $sqli = "update tb_user set sess_aktiv=1 where username='$this->sess_username'";
            $this->db->query($sqli);
            
            $sql2= "select token,date,sess_aktiv from tb_user where username='$this->sess_username' and token='$token'";
            $w2 = $this->db->query($sql2)->result();
            
            foreach ($w2 as $dat=>$da){
            
            $set  = array(
                'sess_aktiv'=>$da->sess_aktiv,
            );
            $this->session->set_userdata($set);
            }redirect('home');
            }
    } 
          
    function cek_user(){
        $this->get_token();
        $session    = $this->sess_username;
        if($session!=NULL){
            redirect('home/');
        }  else {
            
        $this->load->library('form_validation');
        $this->form_validation->set_rules('username', 'Email', 'trim|required|xss_clean');
	$this->form_validation->set_rules('password', 'Password', 'trim|required|callback_check_database');
	$this->form_validation->set_error_delimiters(' <span style="color:#FF0000">', '</span>');
        
        if($this->form_validation->run() == FALSE){
            $this->load->view('login');
        }  else {
            $username   = $this->input->post('username');
            $password   = $this->input->post('password');
            $sukses     = $this->auth->cek_db($username, $password);
            
            if($sukses){
//                $this->sendEmail();
                    redirect('home');
            }  else {
                $error = array (
                    'info'=>"<div class='alert alert-error'><a href='#' class='close' data-dismiss='alert'>&times;</a><font color='red'>Maaf, username dan password salah!</font></div>"
                    );
                $this->load->view('login', $error);
            }
        }
        }
        
    }
    
    function register(){
        $session = $this->session->userdata('sess_aktiv');
        $sess_user = $this->session->userdata('username');
        if(($session==0)and ($sess_user==NULL)){
            $this->session->sess_destroy();
            $this->load->view('register');
        }elseif (($session==0)and($sess_user!=NULL)) {
            $this->load->view('verifikasi');
        }  else {
            redirect('home');
        }
    }
            
    function logout(){
        $this->get_token();
        try {
            $sql = "update tb_user set token='', sess_aktiv='0' where username='$this->sess_username'";
            $this->db->query($sql);
            $this->auth->do_logout();
            redirect('home');
        }  catch (Exception $e){
            echo "kesalahan {$e->getMessage()}";
        }
    }
}