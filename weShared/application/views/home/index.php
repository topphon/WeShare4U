<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?>
<!DOCTYPE html>
<html>
<head>
<!-- Basic Page Needs
–––––––––––––––––––––––––––––––––––––––––––––––––– -->
<meta charset="utf-8">
<title>weShared</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<!-- Mobile Specific Metas
–––––––––––––––––––––––––––––––––––––––––––––––––– -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- FONT
–––––––––––––––––––––––––––––––––––––––––––––––––– -->

<!-- CSS
–––––––––––––––––––––––––––––––––––––––––––––––––– -->
<link rel="stylesheet" type="text/css" href="http://meyerweb.com/eric/tools/css/reset/reset200802.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="<?=base_url()?>assets/css/style.css" media="all">
<link rel="stylesheet" type="text/css" href="<?=base_url()?>assets/css/asset.css" media="all">
<link rel="stylesheet" type="text/css" href="<?=base_url()?>assets/css/bootstrap.css" media="all">
<link rel="stylesheet" type="text/css" href="<?=base_url()?>assets/css/bootstrap.min.css" media="all">
<link rel="stylesheet" type="text/css" href="<?=base_url()?>assets/css/hover.css" media="all">
<link rel='stylesheet' type="text/css" href='<?=base_url()?>assets/css/signup-modal.css' media="all"/>
<link rel='stylesheet' type="text/css" href='<?=base_url()?>assets/css/nprogress.css' media="all"/>

<!-- Favicon
–––––––––––––––––––––––––––––––––––––––––––––––––– -->
<link rel="icon" type="image/png" sizes="32x32" href="<?=base_url()?>assets/image/favicon-32x32.png">
<!-- JS
–––––––––––––––––––––––––––––––––––––––––––––––––– -->
<script type="text/javascript" src="<?=base_url()?>assets/js/jquery.min.js"></script>
<script type="text/javascript" src="<?=base_url()?>assets/js/bootstrap.min.js"></script>
<script src="<?=base_url()?>assets/js/modernizr.js"></script>
<!--script src="js/bootstrap.min.js"></script-->
<script type="text/javascript" src="<?=base_url()?>assets/js/jquery.sticky.js"></script>
<script src='<?=base_url()?>assets/js/nprogress.js'></script>
<script>
//NProgress
$(document).on('page:fetch',   function() { NProgress.start(); });
$(document).on('page:change',  function() { NProgress.done(); });
$(document).on('page:restore', function() { NProgress.remove(); });
</script>

<script>
//sticky nav
$(window).on('load', function(){
  $("#header-nav").sticky({ topSpacing: 0 });
});
</script>

<!-- myElements
–––––––––––––––––––––––––––––––––––––––––––––––––– -->
<script> document.createElement("bodyPage"); </script>
</head>
<body onload="welcome()">
  <header>
    <nav class='header-nav' id="header-nav">
      <ul>
        <li><a data-toggle="tooltip" data-placement="bottom" href=""><i class="fa fa-question-circle fa-2x fqa" aria-hidden="true"></i></a></li>
        <li><a class="hvr-underline-custom-left" href="">ติดต่อเรา</a></li>
        <li class="logo">
          <a href="">
            <img class="logo-img" style="box-shadow:inset 0px 20px 20px 0px rgba(204,255,255,0.9);" src="<?=base_url()?>assets/image/weSharedLogo.png">
          </a>
        </li>
        <li style="float: right; padding-right: 7%;"><a class="hvr-shutter-in-horizontal-custom cd-signin" name="signin" href="#0">เข้าสู่ระบบ</a></li>
      </ul>
    </nav>
  </header>
      <div class="container">
          <div class="row">
                <br>
                <img class="img-responsive" style="width:15%; text-align: center;" src="<?=base_url()?>assets/image/weBox.png">
                <br>
                <span style="padding-top:3%;">
                    <abbr title="Shared">แชร์</abbr> -
                    <abbr title="Gift">มอบให้</abbr> -
                    <abbr title="Recive">ได้รับ</abbr>
                </span>
                <br>                                                                            <br>
                <div style="margin-top:10px;">
                  <a href="#"><i class="fa social fa-facebook"></i></a>
                  <a href="#"><i class="fa social fa-twitter"></i></a>
                </div>
                <div style="margin-top:3%;">
                  <button class="goButton"><span>เริ่มตอนนี้</span></button>
                </div>
          </div>
        </div>

<!-- Progress script -->
<script>
// welcome toast
function welcome() {
    var x = document.getElementById("snackbar")
    x.className = "show";
    setTimeout(function(){ x.className = x.className.replace("show", ""); }, 3000);
}
</script>
<script src="<?=base_url()?>assets/js/signup.js"></script>

<div id="snackbar">สวัสดี ,ผู้เยี่ยมชม</div>

<div class="cd-user-modal"> <!-- this is the entire modal form, including the background -->
  <div class="cd-user-modal-container"> <!-- this is the container wrapper -->
    <ul class="cd-switcher">
      <li><a href="#0">เข้าสู่ระบบ</a></li>
      <li><a href="#0" name="signup">สร้างบัญชีใหม่</a></li>
    </ul>

    <div id="cd-login" style="border-width:1px;border-style:dashed; border-color:#afccff; border-bottom-right-radius:25px; border-bottom-left-radius:25px;"> <!-- log in form -->
      <div style="">
        <img class="img-responsive" style="margin: 0 auto; width:25%; text-align: center;" src="<?=base_url()?>assets/image/weBox.png">
      </div>
      <form class="cd-form">

        <div class="cd-email fieldset">
            <i class="fa fa-envelope-o" aria-hidden="true"></i>
            <input class="full-width has-padding has-border" id="signin-email" name="signin-email" type="email" placeholder="อีเมล">
        </div>

        <div class="cd-password fieldset">
            <i class="fa fa-key" aria-hidden="true"></i>
            <input class="full-width has-padding has-border" id="signin-password" name="signin-password" type="text"  placeholder="รหัสผ่าน">
        </div>

        <p class="fieldset" style="text-align:right;">
          <input type="checkbox" id="remember-me" name="remember-me" checked> จดจำฉัน
        </p>

        <p class="fieldset">
          <button type="submit" value="Submit" name="signin-save">เข้าสู่ระบบ</button>
        </p>
      </form>

      <!-- <p class="cd-form-bottom-message"><a href="#0">ลืมรหัสผ่าน?</a></p> -->
      <!-- <a href="#0" class="cd-close-form">Close</a> -->
    </div> <!-- cd-login -->

    <div id="cd-signup" > <!-- sign up form -->
      <form class="cd-form" style="border-width:1px;border-style:dashed; border-color:#afccff; border-bottom-right-radius:25px; border-bottom-left-radius:25px;">

        <div class="cd-email fieldset">
            <i class="fa fa-envelope-o" aria-hidden="true"></i>
            <input class="full-width has-padding has-border" id="signin-email" name="email"type="email" placeholder="อีเมล">
        </div>

        <div class="cd-password fieldset">
            <i class="fa fa-key" aria-hidden="true"></i>
            <input class="full-width has-padding has-border" id="signin-password" name="password" type="text"  placeholder="รหัสผ่าน">
        </div>

        <div class="cd-password fieldset">
            <i class="fa fa-key" aria-hidden="true"></i>
          <input class="full-width has-padding has-border" name='repassword' type="password"  placeholder="ยืนยันรหัสผ่าน">
        </div>

        <div class="cd-ssn fieldset">
          <i class="fa fa-address-card-o" aria-hidden="true"></i>
          <input class="full-width has-padding has-border" name='ssn' type="text"  placeholder="รหัสประจำตัวประชาชน 13 หลัก">
        </div>

        <div class="cd-name fieldset">
          <i class="fa fa-user" aria-hidden="true"></i>
          <input class="full-width has-padding has-border" name='fname' type="text"  placeholder="ชื่อจริง">
        </p>

        <div class="cd-name fieldset">
          <i class="fa fa-user" aria-hidden="true"></i>
          <input class="full-width has-padding has-border" name='lname' type="text"  placeholder="นามสกุล">
        </div>

        <div class="cd-phone fieldset">
          <i class="fa fa-phone" aria-hidden="true"></i>
          <input class="full-width has-padding has-border" name='phone' type="text"  placeholder="หมายเลขโทรศัพท์">
        </div>

        <div class="cd-address fieldset">
          <i class="fa fa-map-marker" aria-hidden="true"></i>
          <textarea class="full-width has-padding has-border" rows='4' name='address' type="text"  placeholder="        ที่อยู่"></textarea>
        </div>

        <div class="fieldset">
          <select class="full-width has-padding has-border" name="question" >
            <option disabled selected value="0"> => กรุณาเลือกคำถามของคุณ..</option>
            <option value="1">งานในฝันของคุณคืออะไร</option>
            <option value="2">สัตว์เลี้ยงตัวแรกของคุณชื่ออะไร</option>
            <option value="3">สถานที่ที่คุณอยากไปเที่ยวมากที่สุดคือประเทศอะไร</option>
            <option value="4">คุณขึ้นเครื่องบินครั้งแรกไปไหน</option>
            <option value="5">เพื่อนสนิทสมัยประถมของคุณชื่ออะไร</option>
          </select>
        </div>

        <div class="cd-question fieldset">
          <i class="fa fa-question" aria-hidden="true"></i>
          <input class="full-width has-padding has-border" name='answer' type="text"  placeholder="คำตอบของคุณ..">
        </div>




        <p class="fieldset" style="text-align:right;">
          <input type="checkbox" id="accept-terms" name="accept-terms">
        ฉันยอมรับ<a href="#0">ข้อตกลง..</a>
        </p>

        <p class="fieldset">
          <button type="submit" value="Submit" name="signup-save">สร้างบัญชีใหม่</button>
        </p>
      </form>

      <!-- <a href="#0" class="cd-close-form">Close</a> -->
    </div> <!-- cd-signup -->

    <div id="cd-reset-password"> <!-- reset password form -->
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
    </div> <!-- cd-reset-password -->
    <a href="#0" class="cd-close-form">ปิด</a>
  </div> <!-- cd-user-modal-container -->
</div> <!-- cd-user-modal -->
</body>
</html>
