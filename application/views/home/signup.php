<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?>
<!DOCTYPE html>
<html>
<head>
<!-- Basic Page Needs
–––––––––––––––––––––––––––––––––––––––––––––––––– -->
<meta charset="utf-8">
<title>weShared4U</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<!-- Mobile Specific Metas
–––––––––––––––––––––––––––––––––––––––––––––––––– -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- FONT
–––––––––––––––––––––––––––––––––––––––––––––––––– -->

<!-- CSS
–––––––––––––––––––––––––––––––––––––––––––––––––– -->
<link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Pridi">
<link rel="stylesheet" type="text/css" href="http://meyerweb.com/eric/tools/css/reset/reset200802.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="<?=base_url()?>/assets/css/style.css" media="all">
<link rel="stylesheet" type="text/css" href="<?=base_url()?>/assets/css/asset.css" media="all">
<link rel="stylesheet" type="text/css" href="<?=base_url()?>/assets/css/bootstrap.css" media="all">
<link rel="stylesheet" type="text/css" href="<?=base_url()?>/assets/css/bootstrap.min.css" media="all">
<link rel="stylesheet" type="text/css" href="<?=base_url()?>/assets/css/hover.css" media="all">
<link rel='stylesheet' type="text/css" href='<?=base_url()?>/assets/css/signup-modal.css' media="all"/>
<link rel='stylesheet' type="text/css" href='<?=base_url()?>/assets/css/nprogress.css' media="all"/>

<!-- Favicon
–––––––––––––––––––––––––––––––––––––––––––––––––– -->
<link rel="icon" type="image/png" sizes="32x32" href="<?=base_url()?>/assets/image/favicon-32x32.png">
<!-- JS
–––––––––––––––––––––––––––––––––––––––––––––––––– -->
<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<script type="text/javascript" src="<?=base_url()?>/assets/js/bootstrap.min.js"></script>
<script src='https://www.google.com/recaptcha/api.js?hl=th&onload=onloadCallback&render=explicit' async defer></script>
<script type="text/javascript">
  var clientId1;
  var clientId2;
  var onloadCallback = function() {
    clientId1 = grecaptcha.render('recaptcha1', {
      'sitekey' : '6LeIxAcTAAAAAJcZVRqyHh71UMIEGNQ_MXjiZKhI'
    });
    clientId2 = grecaptcha.render(
        document.getElementById('recaptcha2'), {
    'sitekey' : '6LeIxAcTAAAAAJcZVRqyHh71UMIEGNQ_MXjiZKhI'
    });
  };
</script>
</head>
<!-- loadFunction -->
<body>
      <!-- container -->
      <div class="container content">
          <div class="row">
            <div class="" style="margin-top:13%; margin-bottom:4%; text-decoration:underline;">
              <h2>สมัครสมาชิก</h2>
            </div>
            <div class="signup" style="padding-bottom:5%;" >
              <form action="<?=base_url()?>index.php/Home/Register" method="post" class="cd-form register" id="register"
              style="margin-top:3%;border-width:1.5px;border-style:dashed; border-color:#afccff;
              border-radius:25px;">

                <div class="cd-email fieldset">
                    <i class="fa fa-envelope-o" aria-hidden="true"></i>
                    <input class="full-width has-padding has-border" onkeyup="clearEmailError()"
                    id="email" name="email" type="email" placeholder="อีเมล" maxlength="60" autofocus required>
                    <div id="checkEmail" style="text-align:right;"></div>
                </div>

                <div class="cd-password fieldset">
                    <i class="fa fa-key" aria-hidden="true"></i>
                    <input class="full-width has-padding has-border" id="confirmPassword"
                    name="confirm" type="password" placeholder="รหัสผ่าน" onBlur="checkPasswordMatch(); return false;"
                    maxlength="16" required>
                    <div style="text-align: right;" id="checkConfirm"></div>
                </div>

                <div class="cd-password fieldset">
                    <i class="fa fa-key" aria-hidden="true"></i>
                  <input class="full-width has-padding has-border"  id="password" name="password" onChange="checkPasswordMatch(); return false;"
                  name='password' type="password" placeholder="ยืนยันรหัสผ่าน"
                  maxlength="16" required>
                  <div style="text-align: right;" id="checkPass"></div>
                </div>

                <div class="cd-ssn fieldset">
                  <i class="fa fa-address-card-o" aria-hidden="true"></i>
                  <input class="full-width has-padding has-border ssn" onBlur="checkForm(); return false;" name='ssn' type="text" id="ssn"
                  pattern="[0-9]{13}" placeholder="รหัสประจำตัวประชาชน 13 หลัก" maxlength="13" required title="กรุณากรอกเฉพาะตัวเลข 13 หลักเท่านั้น">
                  <div style="text-align: right;" id="checkID"></div>
                </div>

                <div class="cd-name fieldset">
                  <i class="fa fa-user" aria-hidden="true"></i>
                  <input class="full-width has-padding has-border"
                  name='fname' type="text" placeholder="ชื่อจริง" maxlength="30" id="fname" onkeyup="clearFnameError()"  required>
                  <div id="checkFname" style="text-align:right;"></div>
                </div>

                <div class="cd-name fieldset">
                  <i class="fa fa-user" aria-hidden="true"></i>
                  <input class="full-width has-padding has-border"
                  name='lname' type="text" placeholder="นามสกุล" maxlength="30" id="lname" onkeyup="clearLnameError()"  required>
                  <div id="checkLname" style="text-align:right;"></div>
                </div>

                <div class="cd-phone fieldset">
                  <i class="fa fa-phone" aria-hidden="true"></i>
                  <input class="full-width has-padding has-border"
                  name='phone' id="phone" type="text" placeholder="หมายเลขโทรศัพท์" maxlength="10"
                  onkeyup="clearPhoneError()" required>
                  <div id="checkPhone" style="text-align:right;"></div>
                </div>

                <div class="cd-address fieldset">
                  <i class="fa fa-map-marker" aria-hidden="true"></i>
                  <textarea class="full-width has-padding has-border" maxlength="100" rows='4' id="address" name='address' type="text"
                  placeholder="ที่อยู่" pattern="[0-9A-Za-z\S]+" required title="กรุณาใส่ที่อยู่ของคุณ" onkeyup="clearAddressError()"></textarea>
                  <div style="text-align:right; position: absolute; color:#9d9ea0; bottom:10px; right:10px; margin: 0 auto;">
                    <span id="adr-max-length" ></span> ตัวอักษร
                  </div>
                  <div id="checkAddress" style="text-align:right;"></div>
                </div>

                <div class="fieldset">
                  <select class="full-width has-padding has-border" onkeyup="clearQuestionError()" name="question" id="question" required title="กรุณาเลือกคำถามของคุณ">
                    <option value="" disabled selected> => กรุณาเลือกคำถามของคุณ..</option>
                    <?php  foreach($question->result() as $row){?>
                    <option value="<?php echo $row->qid; ?> "><?php echo $row->qdetail; ?> </option>
                    <?php }?>
                  </select>
                  <div id="checkQuestion" style="text-align:right;"></div>
                </div>

                <div class="cd-question fieldset">
                  <i class="fa fa-question" aria-hidden="true"></i>
                  <input class="full-width has-padding has-border"
                  name='answer' type="text" maxlength="30" placeholder="คำตอบของคุณ.." onkeyup="clearAnswerError()"  id="answer" pattern="[0-9A-Za-z\S]+" required title="กรุณาตอบคำตอบของคุณ">
                  <div id="checkAnswer" style="text-align:right;"></div>
                </div>

                  <div style="padding-left:17%; padding-top:2%;" >
                    <div id="recaptcha1"></div>
                  </div>

                <div class="fieldset" style="text-align:right; padding-top:5%;">
                  <input type="checkbox" name="accept" onkeyup="clearAcceptError()" required>
                  ฉันยอมรับ<a href="#0">ข้อตกลง..</a>
                  <div id="checkAccept" style="text-align:right;"></div>
                </div>

                <p class="fieldset">
                  <button type="submit" class="btn-submit" value="submit" name="signup-submit" onclick="validPass(); checkAllRequire();">สร้างบัญชีใหม่</button>
                </p>
              </form>
            </div>
          </div>
          <!-- <!end register form -->
        </div>
        <!-- end container -->
        <br>


        <!-- welcome toast -->
        <script>
        function welcome() {
            var x = document.getElementById("snackbar")
            x.className = "show";
            setTimeout(function(){ x.className = x.className.replace("show", ""); }, 3000);
        }
        </script>
        <!-- load signupFunction-->
        <script src="<?=base_url()?>assets/js/signup.js"></script>

        <div id="snackbar">สวัสดี ,ผู้เยี่ยมชม</div>

        <div class="cd-user-modal"> <!-- modal form, including the background -->
          <div class="cd-user-modal-container" style="border-width:1px; border-style:dashed; border-color:#afccff;border-radius:25px;"> <!-- container wrapper -->
            <!-- login -->
            <div class="head-login" style="border-bottom-width:2px; border-style:dashed; border-color:#afccff;border-top-right-radius:25px; border-top-left-radius:25px;" >
                <h3 style="text-align:center; padding-top:3%; padding-bottom:3%;">เข้าสู่ระบบ</h3>
            </div>
            <div id="cd-login"> <!-- log in form -->
              <div style="padding-top:5%;">
                <img class="img-responsive" style="margin: 0 auto; width:25%; text-align: center;" src="<?=base_url()?>/assets/image/weBox.png">
              </div>
              <form action='<?=base_url()?>index.php/home/checkLogin' method='post' class="cd-form" id="login">
                <div class="cd-email fieldset">
                    <i class="fa fa-envelope-o" aria-hidden="true"></i>
                    <input class="full-width has-padding has-border" name="signin-email" id="signin-email"
                    type="email"  placeholder="อีเมล" autofocus>
                </div>
                <div class="cd-password fieldset">
                    <i class="fa fa-key" aria-hidden="true"></i>
                    <input class="full-width has-padding has-border" name="signin-password" id="signin-password"
                    type="password" placeholder="รหัสผ่าน">
                </div>
                <div style="padding-left:4.5%; padding-top:2%;" >
                  <div id="recaptcha2"></div>
                </div>
                <div class="fieldset">
                  <button type="submit" class="btn-login"  value="submit" name="login-submit">เข้าสู่ระบบ</button>
                </div>
                <div class="forgetpass" style="margin:0 auto; text-align:right;">
                  <a href="#">ลืมรหัสผ่าน ?</a>
                </div>
              </form>
            </div>
          </div>
        </div>
            <!-- end login -->



    <!-- reset password form -->
    <!-- <div id="cd-reset-password">

      <p class="cd-form-message">กรุณาระบุอีเมลเพื่อกู้คืนรหัสผ่าน.</p>

      <form class="cd-form">

        <p class="fieldset">
          <label class="image-replace cd-email" for="reset-email">อีเมล</label>
          <input class="full-width has-padding has-border" id="reset-email" type="email" placeholder="E-mail">
        </p>

        <p class="fieldset">
          <input class="full-width has-padding" type="submit" value="กู้คืนรหัสผ่าน">
        </p>
      </form>

      <p class="cd-form-bottom-message"><a href="#0">เข้าสู่ระบบ</a></p>

    </div>  cd-reset-password -->
    <!-- <a href="#0" class="cd-close-form">ปิด</a> -->
  <!-- </div> cd-user-modal-container -->
<!-- </div>  cd-user-modal -->

<script>
//checkCaptcha Varidate
$("#register").submit(function(event) {
   var recaptcha1 = $("#g-recaptcha-response").val();
   if (recaptcha1 === "") {
      event.preventDefault();
      alert("กรุณายืนยันว่าไม่ใช่โปรแกรมอัตโนมัติ");
   }
});

//checkCaptcha Varidate
$("#login").submit(function(event) {
   var recaptcha2 = $("#g-recaptcha-response").val();
   if (recaptcha2 === "") {
      event.preventDefault();
      alert("กรุณายืนยันว่าไม่ใช่โปรแกรมอัตโนมัติ");
   }
});
</script>

<script type='text/javascript'>
//check max length
CharacterCount = function(TextArea,FieldToCount){
	var myField = document.getElementById(TextArea);
	var myLabel = document.getElementById(FieldToCount);
	if(!myField || !myLabel){return false}; // catches errors
	var MaxChars =  myField.maxLengh;
	if(!MaxChars){MaxChars =  myField.getAttribute('maxlength') ; }; 	if(!MaxChars){return false};
	var remainingChars =   MaxChars - myField.value.length
	myLabel.innerHTML = remainingChars
}

setInterval(function(){CharacterCount('address','adr-max-length')},55);
</script>

<script language="javascript">
//check ssn
function checkID(id){
  if(id.length != 13) return false;
  for(i=0, sum=0; i < 12; i++)
  sum += parseFloat(id.charAt(i))*(13-i);
  if((11-sum%11)%10!=parseFloat(id.charAt(12)))
  return false;
  else
  return true;
}
function checkForm() {
  var id = document.getElementById("ssn").value;
  if(!checkID(id)) {
    document.getElementById("ssn").value = "";
    document.getElementById("checkID").innerHTML = "<span style='color:#ff6666;'>เลขบัตรประชาชนไม่ถูกต้อง !</span>";
  }else{
    document.getElementById("checkID").innerHTML = "<span style='color:#009933;'>เลขบัตรประชาชนถูกต้อง :)</span>";
  }
  }
//end check ssn
</script>

<script>
//check pass match
function checkPasswordMatch() {
    var password = $("#confirmPassword").val();
    var confirmPassword = $("#password").val();

    if (password != confirmPassword){
        $("#checkPass").html("<span style='color:#ff6666;'>รหัสผ่านไม่ตรงกัน !</span>");
        return false;
      }else if (password == ''){
        $("#checkPass").html("<span style='color:#ff6666;'>กรุณายืนยันรหัสผ่าน !</span>");
        return false;
    }else{
      $("#checkPass").html("");
      return true;
    }
}
$(document).ready(function () {
   $("#password").keyup(checkPasswordMatch);
});
//end check pass match

//check valid pass
  function validPass(){
    if(!checkPasswordMatch()){
      document.getElementById("password").value = "";
    }else{

    }
  }

</script>
<script>
//check available email
$('#email').blur(function(e){
         e.preventDefault();
         var email = $('#email').val();
         $.ajax({
           url: '<?= base_url() ?>index.php/Home/emailValidation',
           data: {
             'email': email
           },
           type: "post",
           success: function(data){
             if(data == 'true'){
               $('#checkEmail').html('');
             }else{
               $('#checkEmail').html(data);
               document.getElementById("email").value = "";
             }
           }
         });
      });
</script>
<script>
//check confirmPassword Validation
$('#confirmPassword').blur(function(e){
         e.preventDefault();
         var confirmPassword = $('#confirmPassword').val();
         $.ajax({
           url: '<?= base_url() ?>index.php/Home/confirmPasswordValidation',
           data: {
             'confirmPassword': confirmPassword
           },
           type: "post",
           success: function(data){
             if(data == 'true'){
               $('#checkConfirm').html('');
             }else{
               $('#checkConfirm').html(data);
               document.getElementById("confirmPassword").value = "";
             }
           }
         });
      });
</script>
<script>
//check available Ssn
$('#ssn').blur(function(e){
         e.preventDefault();
         var ssn = $('#ssn').val();
         $.ajax({
           url: '<?= base_url() ?>index.php/Home/ssnValidation',
           data: {
             'ssn': ssn
           },
           type: "post",
           success: function(data){
             if(data == 'true'){
               $('#checkID').html('');
             }else{
               $('#checkID').html(data);
               document.getElementById("ssn").value = "";
             }
           }
         });
      });
</script>
<script>
//check fname Validation
$('#fname').blur(function(e){
         e.preventDefault();
         var fname = $('#fname').val();
         $.ajax({
           url: '<?= base_url() ?>index.php/Home/fnameValidation',
           data: {
             'fname': fname
           },
           type: "post",
           success: function(data){
             if(data == 'true'){
               $('#checkFname').html('');
             }else{
               $('#checkFname').html(data);
               document.getElementById("fname").value = "";
             }
           }
         });
      });
</script>
<script>
//check lname Validation
$('#lname').blur(function(e){
         e.preventDefault();
         var lname = $('#lname').val();
         $.ajax({
           url: '<?= base_url() ?>index.php/Home/lnameValidation',
           data: {
             'lname': lname
           },
           type: "post",
           success: function(data){
             if(data == 'true'){
               $('#checkLname').html('');
             }else{
               $('#checkLname').html(data);
               document.getElementById("lname").value = "";
             }
           }
         });
      });
</script>
<script>
//check phone Validation
$('#phone').blur(function(e){
         e.preventDefault();
         var phone = $('#phone').val();
         $.ajax({
           url: '<?= base_url() ?>index.php/Home/phoneValidation',
           data: {
             'phone': phone
           },
           type: "post",
           success: function(data){
             if(data == 'true'){
               $('#checkPhone').html('');
             }else{
               $('#checkPhone').html(data);
               document.getElementById("phone").value = "";
             }
           }
         });
      });
</script>
<script>
//check address Validation
$('#address').blur(function(e){
         e.preventDefault();
         var address = $('#address').val();
         $.ajax({
           url: '<?= base_url() ?>index.php/Home/addressValidation',
           data: {
             'address': address
           },
           type: "post",
           success: function(data){
             if(data == 'true'){
               $('#checkAddress').html('');
             }else{
               $('#checkAddress').html(data);
               document.getElementById("address").value = "";
             }
           }
         });
      });
</script>
<script>
//check answer Validation
$("#register").submit(function(event) {
   var question = $("#question").val();
   if (question === "") {
      event.preventDefault();
      alert("กรุณาเลือกคำถามในกรณีที่ลืมรหัสผ่าน");
   }
});

$('#answer').blur(function(e){
         e.preventDefault();
         var answer = $('#answer').val();
         $.ajax({
           url: '<?= base_url() ?>index.php/Home/answerValidation',
           data: {
             'answer': answer
           },
           type: "post",
           success: function(data){
             if(data == 'true'){
               $('#checkAnswer').html('');
             }else{
               $('#checkAnswer').html(data);
               document.getElementById("answer").value = "";
             }
           }
         });
      });
      </script>
      <script>
      //check login
      $("#login").submit(function(event) {
               var address = $('#address').val();
               $.ajax({
                 url: '<?= base_url() ?>index.php/Home/checkLogin',
                 data: {
                   'address': address
                 },
                 type: "post",
                 success: function(data){
                   if(data == 'true'){
                     $('#checkAddress').html('');
                   }else{
                     $('#checkAddress').html(data);
                     document.getElementById("address").value = "";
                   }
                 }
               });
            });
      </script>
</body>
</html>
