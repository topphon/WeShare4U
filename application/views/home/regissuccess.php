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
<link rel='stylesheet' type="text/css" href='<?=base_url()?>/assets/css/loading.css' media="all"/>



<!-- Favicon
–––––––––––––––––––––––––––––––––––––––––––––––––– -->
<link rel="icon" type="image/png" sizes="32x32" href="<?=base_url()?>/assets/image/favicon-32x32.png">
<!-- JS
–––––––––––––––––––––––––––––––––––––––––––––––––– -->
<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<script type="text/javascript" src="<?=base_url()?>/assets/js/bootstrap.min.js"></script>
<script src='https://www.google.com/recaptcha/api.js?hl=th'></script>
</head>
<!-- loadFunction -->
<body>
      <!-- container -->
      <div class="container content" style="height:79%;">
          <div class="row" style="padding-top:20%;">
              <h3>สมัครสมาชิกสำเร็จ</h3>
              <h2>กรุณารอการยืนยันตัวตนภายใน 24 ชั่วโมง</h2>
              <h4 style="color:#666666;">หรือสอบถาม weshared4u2017@gmail.com</h4>
              <h6><a href="<?=base_url()?>index.php/home">กลับสู่หน้าหลัก</a></h6>
          </div>
        </div>

<script src="<?=base_url()?>assets/js/signup.js"></script>

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
              <form class="cd-form" id="login">
                <div class="cd-email fieldset">
                    <i class="fa fa-envelope-o" aria-hidden="true"></i>
                    <input class="full-width has-padding has-border" name="signin-email" id="signin-email"
                    type="email"  placeholder="อีเมล" maxlength="60" autofocus>
                    <div id="checkEmailSignin" style="text-align:right;"></div>
                </div>
                <div class="cd-password fieldset">
                    <i class="fa fa-key" aria-hidden="true"></i>
                    <input class="full-width has-padding has-border" name="signin-password" id="signin-password"
                    type="password" maxlength="16" placeholder="รหัสผ่าน">
                </div>
                <div id="checkLogin" style="text-align:center;"></div>
                <div class="g-recaptcha-response" style="margin:0 auto; padding-left:5%; padding-top:1%;" >
                  <div class="g-recaptcha" id="g-recaptcha-response"  data-sitekey="6LeIxAcTAAAAAJcZVRqyHh71UMIEGNQ_MXjiZKhI"></div>
                </div>
                <div class="forgetpass" style="margin:0 auto; padding-top:6%; text-align:right;">
                  <a href="#">ลืมรหัสผ่าน ?</a>
                </div>
                <div class="fieldset">
                  <button class="btn-login signin" id="signin" name="login-submit">เข้าสู่ระบบ</button>
                </div>
              </form>
            </div>
          </div>
        </div>
            <!-- end login -->
            <script>
            //checkCaptcha Varidate
        $('#signin').click(function(e){
          e.preventDefault();
               var recaptcha = $("#g-recaptcha-response").val();
               if (recaptcha === "") {
                  event.preventDefault();
                  alert("กรุณายืนยันว่าไม่ใช่โปรแกรมอัตโนมัติ");
                  document.getElementById("signin-email").value = "";
                  document.getElementById("signin-password").value = "";
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
            <script>
            //check available signin-email
            $('#signin-email').blur(function(e){
                     e.preventDefault();
                     var email = $('#signin-email').val();
                     $.ajax({
                       url: '<?= base_url() ?>index.php/Home/signinEmailValidation',
                       data: {
                         'email': email
                       },
                       type: "post",
                       success: function(data){
                         if(data == 'true'){
                           $('#checkEmailSignin').html('');
                         }else{
                           $('#checkEmailSignin').html(data);
                           document.getElementById("signin-email").value = "";
                         }
                       }
                     });
                  });
            </script>
            <script>
            //check login
            $('.signin').click(function(e){
                  e.preventDefault();
                     var email = $('#signin-email').val();
                     var password = $('#signin-password').val();
                     $.ajax({
                       url: '<?= base_url() ?>index.php/Home/checkLogin',
                       data: {
                         'email': email,
                         'password' : password
                       },
                       type: "post",
                       success: function(data){
                         if(data == 'true'){
                           $('#checkLogin').html('');
                           window.location = "<?= base_url() ?>index.php/Home";
                         }else{
                           $('#checkLogin').html(data);
                           document.getElementById("signin-password").value = "";
                         }
                       }
                     });
                  });
            </script>
</body>
</html>
