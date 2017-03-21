<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class WantHelp extends CI_Controller
{

	public function __construct()
  {
  parent::__construct();
  }

	public function index()
	{
		$this->load->view('assets/wantHelpHeader');
    $this->load->view('wanthelp/index');
		$this->load->view('assets/footer');
  }

}
?>
