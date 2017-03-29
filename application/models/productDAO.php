<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class productDAO extends CI_Model {


	public function addProduct($data)
	{
		$this->db->insert('product', $data);
    $insert_id = $this->db->insert_id();
    return $insert_id;
	}

	public function getProduct($pid)
	{


		$this->db->select('*');
		$this->db->from('product');
		$this->db->join('ptype','product.ptid = ptype.ptid','left');
		$this->db->where('pid',$pid);
		$query = $this->db->get();


    return $query;
	}



}
