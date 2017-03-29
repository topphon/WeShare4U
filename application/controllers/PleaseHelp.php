<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class PleaseHelp extends CI_Controller
{

	public function __construct()
  {
  parent::__construct();
  }

	public function index()
	{
		$_SESSION['state'] = 'pleasehelp';
		$this->load->view('assets/pleaseHelpHeader');
		$this->load->view('pleasehelp/index');
		$this->load->view('assets/footer');
  }

}
?>
