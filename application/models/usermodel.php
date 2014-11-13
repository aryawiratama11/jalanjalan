<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Usermodel extends CI_Model
{
	public function get_menu_for_level($user_level)
	{
		$this->db->from('tb_menu');
        //$this->db->limit(5);
        //$this->db->offset(2);
		$this->db->like('menu_allowed','+'.$user_level.'+');
        $this->db->order_by('sort','asc');
		$result = $this->db->get();
		return $result;
	}
	
        function get_array_menu($id)
	{
		$this->db->select('menu_allowed');
		$this->db->from('tb_menu');
		$this->db->where('menu_id',$id);
		$data = $this->db->get();
		if($data->num_rows() > 0)
		{
			$row = $data->row();
			$level = $row->menu_allowed;
			$arr = explode('+',$level);
			return $arr;
		}
		else
		{
			die();
		}
	}
        
        
        
}