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
		$_SESSION['state'] = 'wanthelp';
		$Result['productType'] = $this->modelDAO->getProductTypeName();
		$this->load->view('assets/wantHelpHeader');
    $this->load->view('wanthelp/index',$Result);
		$this->load->view('assets/footer');
  }

	public function donateDetail($id)
	{
		$pid = $id;
		$product['ShowProduct'] = $this->productDAO->getProduct($pid);
		$this->load->view('assets/wantHelpHeader');
    $this->load->view('wanthelp/donate-detail',$product);
		$this->load->view('assets/footer');
  }

	public function addProduct()
	{
		date_default_timezone_set("Asia/Bangkok");
		$date = date("Y-m-d H:i:s");
		$pname = $this->input->post('pname');
		$pdetail = $this->input->post('pdetail');
    $description = $this->input->post('description');
		$size = $this->input->post('size');
		$weight= $this->input->post('weight');
		$qty = $this->input->post('qty');
		$sendType = $this->input->post('sendtype');
		$sendLocation = "";
		$sendLocation = $this->input->post('sendlocation');
		$ptid = $this->input->post('ptype');

    $config['file_name'] = $pname.'.jpg';
	  $config['upload_path'] = 'assets/product-image';
	  $config['allowed_types'] = 'gif|jpg|jpeg|png';
	  $config['max_size'] = '2048';
	  $config['remove_spaces'] = TRUE;
	  $this->load->library("upload",$config);
	  $this->upload->do_upload('pimg');

		$data = array(
			'pname' => $pname,
      'pdetail' => $pdetail,
      'description' => $description,
      'size' => $size,
      'weight' => $weight,
      'qty' => $qty,
			'pimage' => $pname.'.jpg',
			'uid'=> $_SESSION['uid'],
			'sendType' => $sendType,
			'sendLocation' => $sendLocation,
			'datetime' => $date,
			'ptid' => $ptid
			);

			$pid = $this->productDAO->addProduct($data);
			//redirect("WantHelp/donateDetail/".$pid);
			$this->donateDetail($pid);
	}



}
?>
