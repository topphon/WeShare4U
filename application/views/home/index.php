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
<script src='https://www.google.com/recaptcha/api.js?hl=th'></script>

</head>
<!-- loadFunction -->
<body onload="welcome()">

<!-- header -->
  <header class='header-nav' id="header-nav">
    <ul>
      <li class="logo">
        <a href="<?=base_url()?>/index.php/home" style="">
          <img class="logo-img" style="box-shadow:inset 0px 20px 20px 0px #666666;" src="<?=base_url()?>assets/image/weSharedLogo.png">
        </a>
      </li>
      <li><a class="hvr-underline-custom-left" href="">สถิติการบริจาค</a></li>
      <li><a class="hvr-underline-custom-left" href="">คำถามที่พบบ่อย</a></li>
      <li><a class="hvr-underline-custom-left" href="">เกี่ยวกับเรา</a></li>
      <li style="float: right; padding-right:10%;">
        <a class="hvr-shutter-in-horizontal-custom cd-signin" name="signin-main" href="#">เข้าสู่ระบบ</a>
        <a style="margin-top:-10%; text-decoration: underline;" href="<?=base_url()?>/index.php/home/signup">สมัครสมาชิก</a>
      </li>
    </ul>
    <nav>

    </nav>
  </header>

      <!-- container -->
      <div class="container" style="height:100%;">
          <div class="row">
                <br>
                <img class="img-responsive" style="width:15%; margin-top:5%; text-align: center;" src="<?=base_url()?>/assets/image/weBox.png">
                <br>
                <span style="padding-top:3%;">
                    <abbr title="Shared">แชร์</abbr> -
                    <abbr title="Gift">มอบให้</abbr> -
                    <abbr title="Recive">ได้รับ</abbr>
                </span>
                <br><br>
                <div style="margin-top:10px;">
                  <a href="#"><i class="fa social fa-facebook"></i></a>
                  <a href="#"><i class="fa social fa-twitter"></i></a>
                </div>
                <div style="margin-top:3%;">
                  <button class="goButton"><span>เริ่มตอนนี้</span></button>
                </div>
          </div>
        </div>

        <footer class="footer">
          <div>
            <a href="#"><i class="fa social-xs fa-facebook"></i></a>
            <a href="#"><i class="fa social-xs fa-twitter"></i></a>
          </div>
          <div>
            copyright &copy; <script>new Date().getFullYear()>2010&&document.write(new Date().getFullYear());</script>
            chimdolin Design , <strong style="color:#666666;">weShared4U.</strog>
          </div>
          <div>
            Email : <a style="color:#666666;" href="mailto:weshared4u@gmail.com?Subject=สวัสดี%20weShared4U">weshared4u@gmail.com</a>
          </div>
        </footer>

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
      <form action='#' method='post' class="cd-form">
        <div class="cd-email fieldset">
            <i class="fa fa-envelope-o" aria-hidden="true"></i>
            <input class="full-width has-padding has-border" id="signin-email"
            type="email"  placeholder="อีเมล" autofocus>
        </div>
        <div class="cd-password fieldset">
            <i class="fa fa-key" aria-hidden="true"></i>
            <input class="full-width has-padding has-border" id="signin-password"
            type="text" placeholder="รหัสผ่าน">
        </div>
        <p class="fieldset" style="text-align:right;">
          <input type="checkbox" id="remember-me" name="remember-me" checked> จดจำฉัน
        </p>
        <p class="fieldset">
          <button type="submit" class="cd-form no-touch " name="submit">เข้าสู่ระบบ</button>
        </p>
      </form>
    </div>
    <!-- end login -->
</body>
</html>
