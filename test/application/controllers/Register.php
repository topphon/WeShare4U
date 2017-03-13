<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Register extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->load->helper(array('form', 'url')); // โหลดเฮลเปอร์ form และ url ของ ci มาใช้งาน
		$this->load->library('form_validation'); // โหลดไลบรารี่ form_validation ของ ci มาใช้งาน

		$this->load->model('Model_register');

	}

	public function index()
	{
		$this->load->view('home/index');
	}

	public function validate()
	{
			$fname = $this->input->post('fname');
			$lname = $this->input->post('lname');
			$ssn = $this->input->post('ssn');
			$address = $this->input->post('address');
			$email = $this->input->post('email');
			$password= $this->input->post('pass');
			$qid = $this->input->post('question');
			$answer = $this->input->post('answer');
			$phone= $this->input->post('phone');

			$this->Model_register->add($fname,$lname,$ssn,$phone,$email,$password,$address,$qid,$answer);
			$this->load->view('welcome_message');
			echo "register successfully";


		}
	}
