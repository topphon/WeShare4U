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
</head>
<!-- loadFunction -->
<body>
  <div class="container content" style="height:100%;">
      <div class="row">
        <div class="" style="margin-top:13%; margin-bottom:4%;">
          <h2>รายละเอียดของบริจาค</h2>
          <hr style="border-color:#afccff; width:80%;">
        </div>
      </div>
      <div class="row">
        <div class="col-md-6" style="margin: 0 auto; padding-left:10%;">
          <?php foreach ($ShowProduct->result() as $row) {?>
          <img src="<?=base_url()?>/assets/product-image/<?=$row->pimage?>" style="width:100%; height:auto;" class="img-responsive img-thumbnail">
        </div>
        <div class="col-md-6" style="text-align:left; font-size:16px;">
          <p>ชื่อสินค้า : <?=$row->pname?></p>
          <p>ประเภท : <?=$row->ptname?></p>
          <p>รายละเอียดสินค้า : <?=$row->pdetail?></p>
          <p>คำอธิบาย : <?=$row->description?></p>
          <p>ขนาด : <?=$row->size?></p>
          <p>จำนวน : <?=$row->qty?></p>
          <p>วิธีการส่ง : <?=$row->sendType?></p>
          <p>
          <?php
          $location = $row->sendLocation;
              if($location != ""){
                echo "ที่อยู่ : " . $location;
              }
          ?>
          </p>
        </div>
        <?php  } ?>
      </div>
        <div  style="margin:0 auto; padding-top:5%;">
          <a style"width:50%;" href="#" class="btn-cancel">แก้ไข</a>
          <a href="<?=base_url()?>index.php/WantHelp/index" class="btn-ok">เพิ่มของบริจาค</a>
        </div>
    </div>
    <br>
    <br>
    <br>
    <!-- end container -->
<script>
function insertAddress() {
    if (document.getElementById("option3").checked) {
      console.log("dffdf");
      document.getElementById("address").style.display = "block";
    }else{
      document.getElementById("address").style.display = "none";
    }
}

function showAddress() {
       var address = document.getElementById('address').style.display;
       if(address == "block")
             document.getElementById('address').style.display = "none";
       else
             document.getElementById('address').style.display = "block";
    }
</script>
</body>
</html>
