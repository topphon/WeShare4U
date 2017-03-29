<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Home extends CI_Controller
{

	public function __construct()
  {
  parent::__construct();
  }

	public function index()
	{
			if(isset($_SESSION["activate"])){
				$status = $_SESSION["activate"];
			}else{
				$status = '';
			}

			if(isset($_SESSION["state"])){
				$state = $_SESSION["state"];
			}else{
				$state = '';
			}

			if(isset($_SESSION["claim"])){
				$claim = $_SESSION["claim"];
			}else{
				$claim = '';
			}
			if($claim == 'user'){
				if($status != null || $state != null){
					if($status == 'wait' || $status == 'unsuccess'){
						$this->load->checkLogout();
					}else if($status == 'success'){
									if($_SESSION['state'] == 'choose'){
										$this->load->view('assets/wantHelpHeader');
										$this->load->view('home/choose-service');
										$this->load->view('assets/footer');
									}else if($_SESSION['state'] == 'wanthelp'){
										$this->load->view('assets/wantHelpHeader');
										$this->load->view('wanthelp/index');
										$this->load->view('assets/footer');
									}else if($_SESSION['state'] == 'pleasehelp'){
										$this->load->view('assets/pleaseHelpHeader');
										$this->load->view('pleasehelp/index');
										$this->load->view('assets/footer');
								}
						}
				}
			}else if($claim == 'admin'){
				$this->load->view('admin/assets/Header');
				$this->load->view('admin/index');
				$this->load->view('admin/assets/footer');
			}else{
				$this->load->view('assets/Header');
				$this->load->view('home/index');
				$this->load->view('assets/footer');
			}
	}

	public function signUp()
	{
		$ResultQuestion['question'] = $this->modelDAO->getQuestion();
		$this->load->view('assets/Header');
		$this->load->view('home/signup',$ResultQuestion);
		$this->load->view('assets/footer');
	}

	public function wantHelp()
	{
		$this->load->view('wanthelp/index');
	}

	public function pleaseHelp()
	{
		$this->load->view('pleasehelp/index');
	}


	// CheckVaridation
	public function checkEmail($email)
	{
		$user = $this->modelDAO->is_email_available($email);
		return empty($user['email']);
	}

	public function emailValidation()
	{
		$email = $this->input->post('email');
    if($email == ''){
      echo "<span style='color:#ff6666;'>กรุณากรอกอีเมล !</span>";
		}else if(!filter_var($email, FILTER_VALIDATE_EMAIL)){
      echo "<span style='color:#ff6666;'>รูปแบบของอีเมลไม่ถูกต้อง ! ตย.yourname@mail.com</span>";
		}else if(!$this->checkEmail($email)){
			echo "<span style='color:#ff6666;'>อีเมลนี้ถูกใช้แล้ว !</span>";
    }else{
			echo 'true';
		}
  }

	public function signinEmailValidation(){
		$email = $this->input->post('email');
   	if(!filter_var($email, FILTER_VALIDATE_EMAIL)){
      echo "<span style='color:#ff6666;'>รูปแบบของอีเมลไม่ถูกต้อง ! ตย.yourname@mail.com</span>";
    }else{
			echo 'true';
		}
	}

	public function confirmPasswordValidation()
	{
		$confirmPassword = $this->input->post('confirmPassword');
		$pattern = '/(?=.*\S)(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[\ ! ^ # @ $ & - = . | ? % * + ( ) ]).{8,16}/';
		if($confirmPassword == ''){
      echo "<span style='color:#ff6666;'>กรุณากรอกรหัสผ่าน !</span>";
		}else if(!preg_match($pattern, $confirmPassword)){
      echo "<span style='color:#ff6666;'>รูปแบบของรหัสผ่านไม่ถูกต้อง ! ต้องมีตัวอักษรภาษาอังกฤษ ตัวเล็ก ตัวใหญ่ ตัวเลขและตัวอักษรพิเศษ อย่างละ 1 ตัว</span>";
    }else{
			echo 'true';
		}
	}

	public function checkSsn($ssn)
	{
		$user = $this->modelDAO->is_ssn_available($ssn);
		return empty($user['ssn']);
	}

	public function checkSsn13($pid)
	{
   if(strlen($pid) != 13) return false;
      for($i=0, $sum=0; $i<12;$i++)
      $sum += (int)($pid{$i})*(13-$i);
      if((11-($sum%11))%10 == (int)($pid{12}))
      return true;
   return false;
	}

	public function ssnValidation()
	{
		$ssn = $this->input->post('ssn');
    if(!$this->checkSsn($ssn)){
			echo "<span style='color:#ff6666;'>เลขบัตรประชาชนนี้ถูกใช้แล้ว !</span>";
    }else if(checkSsn13($ssn) == true){
			echo "";
		}
  }

	public function fnameValidation()
	{
		$fname = $this->input->post('fname');
		$pattern ='/[A-zก-์]{1,30}/';
		if($fname == ''){
      echo "<span style='color:#ff6666;'>กรุณากรอกชื่อจริง !</span>";
		}else if(!preg_match($pattern, $fname)){
      echo "<span style='color:#ff6666;'>รูปแบบของชื่อจริงไม่ถูกต้อง ! ต้องเป็นภาษาไทยหรือภาษาอังกฤษเท่านั้น</span>";
    }else{
			echo 'true';
		}
	}

	public function lnameValidation()
	{
		$lname = $this->input->post('lname');
		$pattern ='/[A-zก-์]{1,30}/';
		if($lname == ''){
      echo "<span style='color:#ff6666;'>กรุณากรอกนามสกุล !</span>";
		}else if(!preg_match($pattern, $lname)){
      echo "<span style='color:#ff6666;'>รูปแบบของนามสกุลไม่ถูกต้อง ! ต้องเป็นภาษาไทยหรือภาษาอังกฤษเท่านั้น</span>";
    }else{
			echo 'true';
		}
	}

	public function phoneValidation()
	{
		$phone = $this->input->post('phone');
		$pattern ='/^0[0-9]{9}/';
		if($phone == ''){
      echo "<span style='color:#ff6666;'>กรุณากรอกเบอร์โทรศัพท์ !</span>";
		}else if(!preg_match($pattern, $phone)){
      echo "<span style='color:#ff6666;'>รูปแบบของเบอร์โทรศัพท์ไม่ถูกต้อง ! ต้องเป็นตัวเลขจำนวน 10 หลักเท่านั้น</span>";
    }else{
			echo 'true';
		}
	}

	public function addressValidation()
	{
		$address = $this->input->post('address');
		$pattern ='/[\wก-๙.\/]{1,100}/';
		if($address == ''){
      echo "<span style='color:#ff6666;'>กรุณากรอกที่อยู่ !</span>";
		}else if(!preg_match($pattern, $address)){
      echo "<span style='color:#ff6666;'>รูปแบบของที่อยู่ไม่ถูกต้อง ! ต้องเป็นภาษาไทย,ภาษาอังกฤษ,ตัวเลข , '.' , '/' หรือเว้นวรรคเท่านั้น </span>";
    }else{
			echo 'true';
		}
	}

	public function answerValidation()
	{
		$answer = $this->input->post('answer');
		$pattern ='/[\wก-๙]{1,30}/';
		if($answer == ''){
      echo "<span style='color:#ff6666;'>กรุณากรอกคำตอบ !</span>";
		}else if(!preg_match($pattern, $answer)){
      echo "<span style='color:#ff6666;'>รูปแบบของคำตอบไม่ถูกต้อง ! ต้องเป็นภาษาไทย,ภาษาอังกฤษ,ตัวเลขเท่านั้น </span>";
    }else{
			echo 'true';
		}
	}




	// register
	public function Register()
	{
		date_default_timezone_set("Asia/Bangkok");
		$date = date("Y-m-d H:i:s");
		$fname = $this->input->post('fname');
		$lname = $this->input->post('lname');
		$ssn = $this->input->post('ssn');
		$phone= $this->input->post('phone');
		$email = $this->input->post('email');
		$password= $this->input->post('password');
		$address = $this->input->post('address');
		$qid = $this->input->post('question');
		$answer = $this->input->post('answer');

		$config['file_name'] = $ssn.'.jpg';
	  $config['upload_path'] = 'assets/imageSsn';
	  $config['allowed_types'] = 'gif|jpg|jpeg|png';
	  $config['max_size'] = '2048';
	  $config['remove_spaces'] = TRUE;
	  $this->load->library("upload",$config);
	  $this->upload->do_upload('imgssn');

		$data = array(
			'fname' => $fname,
      'lname' => $lname,
      'ssn' => $ssn,
      'phone' => $phone,
      'email' => $email,
      'password' => md5($password),
      'address' => $address,
      'qid' => $qid,
      'answer' => $answer,
			'activate' => 'wait',
			'imageValidate' => $ssn.'.jpg',
			'claim' => 'user',
			'datetime' => $date
			);

		$this->modelDAO->addRegister($data);
		//$this->modelDAO->addRegister($fname,$lname,$ssn,$phone,$email,$password,$address,$qid,$answer);

		redirect("/home/regisSuccess");
	}

	public function regisSuccess(){
		$this->load->view('assets/Header');
		$this->load->view('home/regissuccess');
		$this->load->view('assets/footer');
	}
	//login
	public function checkLogin()
	{
		$email = $this->input->post('email');
		$password= $this->input->post('password');
		$ResultLogin = $this->modelDAO->getLogin($email,md5($password));
		if($ResultLogin!=null){
			echo 'true';
		}else{
			echo "<span style='color:#ff6666;'>อีเมลหรือรหัสผ่านไม่ถูกต้อง !! กรุณาลองอีกครั้ง.</span>";
		}
	}
	//logout
	public function checkLogout()
 {
	 session_destroy();
	 redirect('Home');
 }

}
