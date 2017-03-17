<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class modelDAO extends CI_Model {


	public function addRegister($data)
	//public function addRegister($fname,$lname,$ssn,$phone,$email,$password,$address,$qid,$answer)
	{
		$this->db->insert('user', $data);
		//$sql = "insert into user (fname,lname,ssn,phone,email,password,address,qid,answer) value(?,?,?,?,?,?,?,?,?)";
		//$this->db->query($sql, array($fname,$lname,$ssn,$phone,$email,$password,$address,$qid,$answer));

	}

	public function getQuestion()
	{
		$query = $this->db->get('question');
		return $query;
	}

	public function is_email_available($email)
      {
           $this->db->where('email', $email);
           $query = $this->db->get("user");
           return $query->row_array();

      }

			public function is_ssn_available($ssn)
					{
							 $this->db->where('ssn', $ssn);
							 $query = $this->db->get("user");
							 return $query->row_array();

					}

}
