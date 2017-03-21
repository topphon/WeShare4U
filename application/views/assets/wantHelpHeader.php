<?php
  $fname = $_SESSION['fname'];
  $lname = $_SESSION['lname'];
  $email = $_SESSION['email'];
?>
<!-- header want help -->
<header class='header-nav' id="header-nav">
  <ul>
    <li class="logo">
      <a href="<?=base_url()?>index.php/home" style="">
        <img class="logo-img" style="box-shadow:inset 0px 20px 20px 0px #666666;" src="<?=base_url()?>assets/image/weSharedLogo.png">
      </a>
    </li>
  </ul>
  <nav style="float: right; padding-right:10%; font-size:16px;">
    <div>
      สวัสดี, คุณ<a style="margin-top:-10%; text-decoration: underline;" href="#"><?=" ".$fname." ".$lname?></a>
    </div>
    <div style="padding-top:2%;">
      <a style="float:right; text-decoration: underline;" href="<?=base_url()?>index.php/home/checkLogout"><i class="fa fa-sign-out" aria-hidden="true"></i> ออกจากระบบ</a>
    </div>
  </nav>
</header>
<nav class="menu" style="margin-top: 5%;">
  <ul>
    <li><a class="hvr-underline-custom-left" href="">สถิติการบริจาค</a></li>
    <li><a class="hvr-underline-custom-left" href="">คำถามที่พบบ่อย</a></li>
    <li><a class="hvr-underline-custom-left" href="">เกี่ยวกับเรา</a></li>
  </ul>
</nav>
