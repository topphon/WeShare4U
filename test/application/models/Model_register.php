<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Model_register extends CI_Model {

	public function add($fname,$lname,$ssn,$phone,$email,$password,$address,$qid,$answer)
	{
		//$this->db->insert('user', $data);
		// $this->db->set($data)->get_compiled_insert('user');
		$sql = "insert into user (fname,lname,ssn,phone,email,password,address,qid,answer) value($fname,$lname,$ssn,$phone,$email,$password,$address,$qid,$answer)";
		$this->db->query($sql);
		//echo $fname;
		// return $this->db->insert_id();
		//foreach ($data as $key) {
		//	echo $key . "<br>";
		//}
		/*echo $fname;
		echo $lname;
		echo $ssn;
		echo $phone;
		echo $email;
		echo $password;
		echo $address;
		echo $qid;
		echo $answer;*/

	}


}
