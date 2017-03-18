<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Home extends CI_Controller
{

	public function __construct()
  {
  parent::__construct();
  $this->load->helper(array('form', 'url'));
	$this->load->library('form_validation');
	$this->load->model('modelDAO');
  }

	public function index()
	{
		$this->load->view('home/index');
	}

	public function signup()
	{
		$ResultQuestion['question'] = $this->modelDAO->getQuestion();
		$this->load->view('home/signup',$ResultQuestion);
	}


	public function check_email($email)
	{
		$user = $this->modelDAO->is_email_available($email);
		return empty($user['email']);
	}

	public function email_validation()
	{
		$email = $this->input->post('email');
    if($email == ''){
      echo "<span style='color:#ff6666;'>กรุณากรอกอีเมล !</span>";
		}else if(!$this->check_email($email)){
			echo "<span style='color:#ff6666;'>อีเมลนี้ถูกใช้แล้ว !</span>";
    }else{
			echo 'true';
		}
  }

	public function check_ssn($ssn)
	{
		$user = $this->modelDAO->is_ssn_available($ssn);
		return empty($user['ssn']);
	}

	public function checkSSN($pid)
	{
   if(strlen($pid) != 13) return false;
      for($i=0, $sum=0; $i<12;$i++)
      $sum += (int)($pid{$i})*(13-$i);
      if((11-($sum%11))%10 == (int)($pid{12}))
      return true;
   return false;
	}

	public function ssn_validation()
	{
		$ssn = $this->input->post('ssn');
    if(!$this->check_ssn($ssn)){
			echo "<span style='color:#ff6666;'>เลขบัตรประชาชนนี้ถูกใช้แล้ว !</span>";
    }else if(checkSSN($ssn) == true){
			echo "<span style='color:#009933;'>เลขบัตรประชาชนถูกต้อง :)</span>";
		}
  }

	public function Register()
	{
		$fname = $this->input->post('fname');
		$lname = $this->input->post('lname');
		$ssn = $this->input->post('ssn');
		$phone= $this->input->post('phone');
		$email = $this->input->post('email');
		$password= $this->input->post('password');
		$address = $this->input->post('address');
		$qid = $this->input->post('question');
		$answer = $this->input->post('answer');

		$data = array(
			'fname' => $fname,
      'lname' => $lname,
      'ssn' => $ssn,
      'phone' => $phone,
      'email' => $email,
      'password' => $password,
      'address' => $address,
      'qid' => $qid,
      'answer' => $answer,
			'activate' => 'no'
			);

		$this->modelDAO->addRegister($data);
		//$this->modelDAO->addRegister($fname,$lname,$ssn,$phone,$email,$password,$address,$qid,$answer);
		redirect("/");
	}
}
