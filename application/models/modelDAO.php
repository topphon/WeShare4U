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

	public function getProductTypeName()
	{
		$query = $this->db->get('ptype');
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

public function getLogin($email,$password)
					{
							 $this->db->where('email', $email);
							 $this->db->where('password', $password);
							 $query = $this->db->get("user");

							 if($query->num_rows() == 1){
									$sess_array = array();
										foreach ($query->result() as $row)
										{
										$sess_array = $arrayName = array(
											'uid' => $row->uid,
											'fname' => $row->fname,
											'lname' => $row->lname,
											'email' => $row->email,
											'activate' => $row->activate,
											'claim' => $row->claim,
											'state' => 'choose'
										);
									}
										$this->session->set_userdata($sess_array);
									return $query;
							 }
							 else {
								 return null;
							 }
						}


						public function getImageValidate()
						{
							$this->db->order_by('uid', 'DESC');
							$query = $this->db->get('user');
							return $query;
						}

						public function getActivate($uid,$activate)
					{
						$this->db->set('activate', $activate);
						$this->db->where('uid', $uid);
						$this->db->update('user');
					}



					public function getEmailName($uid)
					{
						$this->db->where('uid', $uid);
						$query = $this->db->get('user');
				    return $query;
					}

}
