<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Auth{
    
    var $CI = NULL;
    
    function __construct() {
        $this->CI =& get_instance();
    }
    
    
    function date(){
        $this->time_sesi = $this->CI->session->userdata('date');
        $aktiv = $this->CI->session->userdata('sess_aktiv');
        $this->time_sistem = date('YmdHi');
        $jml = ($this->time_sistem - $this->time_sesi);
        if(($jml>=6)and($aktiv!=1)){
            return FALSE;
        }
        return TRUE;
    }
    
    function cek_date(){
        if($this->date()==FALSE){
            redirect('login/logout');
        }
    }
            
    function sudah_login_belum(){
        if($this->CI->session->userdata('id')==''){
            return false;
        }
        return TRUE;
    }
    
    function harus_login(){
        if($this->sudah_login_belum()==FALSE){
            redirect('login/index');
        }
    }
    
    function do_logout(){
        $this->CI->session->sess_destroy();
    }
            
    function logout(){
        if($this->sudah_login_belum()==TRUE){
            $this->do_logout();
        }
        redirect('login');
    }
//    
//    function verifikasi($token,$date, $username){
//        $this->CI->db->from('tb_user');
//        $this->CI->db->where('token',$token);
//        $this->CI->db->where('date',$date);
//        $this->CI->db->where('username', $username);
//        $result = $this->CI->db->get();
//        if($result->num_rows()==0){
//            return FALSE;
//        }  else {
//            $userdata = $result->row();
//            $session_data = array(
//                'username'=>$userdata->username,
//                'token'=>$userdata->token,
//                'date'=>$userdata->date
//            );
//            $this->CI->session->set_userdata($session_data);
//            return TRUE;
//        }
//    }
//    
            
    function cek_db($username, $password){
        
        $this->CI->db->from('tb_user');
        $this->CI->db->where('username', $username);
        $this->CI->db->where ('password',  md5($password));
        $result = $this->CI->db->get();
        
        
        if($result->num_rows()==0){
            return FALSE; //tidak ada user di db
        }  else {
            $userdata = $result->row();
            $session_data = array(
                'id'        => $userdata->id,
                'username'  => $userdata->username,
                'user_level'     => $userdata->user_level,
                'aktiv'     => $userdata->aktiv,
                'id_customer'=>$userdata->id_customer,
                'date'=>$userdata->date,
                'token'=>$userdata->token,
            );
            //buat session
            $this->CI->session->set_userdata($session_data);
            return TRUE;
        }
    }
}