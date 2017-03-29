<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Admin extends CI_Controller
{

	public function __construct()
  {
  parent::__construct();
  }

	public function index()
	{
		$this->load->view('admin/assets/header');
    $this->load->view('admin/index');
		$this->load->view('admin/assets/footer');
  }

	public function manageUser()
	{
		$Result['imgValidate'] = $this->modelDAO->getImageValidate();
		$this->load->view('admin/assets/header');
    $this->load->view('admin/manage-user',$Result);
		$this->load->view('admin/assets/footer');
  }

	public function success()
	{
		$this->load->library("email");
		$uid = $this->input->get('uid');
		$activate = $this->input->get('activate');
		$send_to_email = $this->input->get('email');
		$this->modelDAO->getActivate($uid,$activate);
		$name=$this->modelDAO->getEmailName($uid);
		$name->row();





		$ci = get_instance();
		$ci->email->initialize();
		$ci->email->from('weshare4u2017@gmail.com', 'WeShare4U');
		$list = array($send_to_email);
		$ci->email->to($list);
		$ci->email->subject('weShared4U ผลการอนุญาติการเข้าใช้งาน');
		foreach ($name->result_array() as $row)
		{
		$ci->email->message('เรียนคุณ '.$row['fname'].'  '.$row['fname'].' <br>
		ยืนยันตัวตนเรียบร้อยเเล้วสามารถเข้าใช้งานได้ <br>
		weshare4u2017@gmail.com <br>
		สามารถเข้าใช้งานได้ที่ => http://10.199.66.227/SoftEn2017/group5/');
	}
		$result = $ci->email->send();

		// $this->send_to_email = $send_to_email;
		// $this->debug = $this->email->print_debugger();
		redirect('Admin/manageUser');
	}

	public function unsuccess()
	{
		$this->load->library('email');
		$uid = $this->input->get('uid');
		$activate = $this->input->get('activate');
		$send_to_email = $this->input->get('email');
		$this->modelDAO->getActivate($uid,$activate);
		$name=$this->modelDAO->getEmailName($uid);



		$ci = get_instance();
		$ci->email->initialize();

		$ci->email->from('weshare4u2017@gmail.com', 'WeShare4U');
		$list = array($send_to_email);
		$ci->email->to($list);
		foreach ($name->result_array() as $row)
		{
		$ci->email->subject('weShared4U ผลการอนุญาติการเข้าใช้งาน');
		$ci->email->message('เรียนคุณ '.$row['fname'].'  '.$row['fname'].' <br>
		ยืนยันตัวตนไม่สำเร็จ กรุณาติดต่อผู้ดูแลระบบ <br>
		weshare4u2017@gmail.com <br>');		$result = $ci->email->send();
	}
		// $this->send_to_email = $send_to_email;
		// $this->debug = $this->email->print_debugger();
		redirect('Admin/manageuser');
	}
}
?>
