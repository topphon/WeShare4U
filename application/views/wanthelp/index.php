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
  <div class="container content">
      <div class="row">
        <div class="" style="margin-top:13%; margin-bottom:4%;">
          <h2>กรอกรายละเอียดของบริจาค</h2>
          <hr style="border-color:#afccff; width:80%;">
        </div>
        <div class="signup" style="padding-bottom:5%; width:80%;" >
          <form enctype="multipart/form-data" action="<?=base_url()?>index.php/WantHelp/addProduct" method="post" class="cd-form register" id="donate"
          style="margin-top:3%;border-width:1.5px;border-style:dashed; border-color:#afccff;
          border-radius:25px;">
          <input type="hidden" value="<?=$_SESSION['uid']?>" name="uid">
            <div class="fieldset form-group">
                <label style="position:absolute; top:7px; left:10px;" for="pname">ชื่อสินค้า : </label>
                <input class="has-border" style="  width: 100%;
                  height: 35px; padding-left:80px;"
                id="pname" name="pname" type="text" autofocus required>
                <div id="checkPname" style="text-align:right;"></div>
            </div>

            <div class="fieldset form-group">
                <label style="position:absolute; top:7px; left:10px;" for="pname">ประเภทสินค้า : </label>
                <select class="has-border" style="  width: 100%;
                  height: 35px; padding-left:15%;"
                id="ptype" name="ptype" type="text" autofocus required>
                <option value="" disabled selected>เลือกประเภทสินค้า</option>
                <?php  foreach($productType->result() as $row){?>
                <option value="<?php echo $row->ptid; ?> "><?php echo $row->ptname; ?> </option>
                <?php }?>
              </select>
                <div id="checkPtype" style="text-align:right;"></div>
            </div>

            <div class="fieldset form-group">
                <label style="position:absolute; top:7px; left:10px;" for="pdetail">รายละเอียดสินค้า : </label>
                <input class="has-border" style="  width: 100%;
                  height: 35px; padding-left:140px;"
                id="pdetail" name="pdetail" type="text" required>
                <div id="checkPdetail" style="text-align:right;"></div>
            </div>

            <div class="fieldset form-group">
                <label style="position:absolute; top:7px; left:10px;" for="description">คำอธิบาย : </label>
                <textarea class="has-border" style="  width: 100%;
                   padding-left:20px; padding-top:30px"
                id="description" rows="4" cols="50" name="description"required>
              </textarea>
                <div id="checkDescription" style="text-align:right;"></div>
            </div>

            <div class="fieldset form-group">
                <label style="position:absolute; top:7px; left:10px;" for="size">ขนาด : </label>
                <input class="has-border" type="number" style="  width: 100%;
                  height: 35px; padding-left:60px;"
                id="size" name="size" type="text" required>
                <div id="checkSize" style="text-align:right;"></div>
            </div>

            <div class="fieldset form-group">
                <label style="position:absolute; top:7px; left:10px;" for="weight">น้ำหนัก : </label>
                <input type="number" class="has-border" style="  width: 100%;
                  height: 35px; padding-left:70px;"
                id="weight" name="weight" required>
                <div id="checkWeight" style="text-align:right;"></div>
            </div>

            <div class="fieldset form-group">
                <label style="position:absolute; top:7px; left:10px;" for="qty">จำนวน : </label>
                <input class="has-border" style="  width: 100%;
                  height: 35px; padding-left:70px;"
                id="qty" name="qty" type="number" min="1" max="100" required>
                <div id="checkQty" style="text-align:right;"></div>
            </div>

            <div style="text-align: right;" class="cd-ssn fieldset">
              <label style="position:absolute; top:7px; left:10px;" for="pimg">รูปภาพ : </label>
              <input class="has-border" style="  width: 100%;
                height: 35px; padding-left:70px; padding-top:7px;" type="file" name="pimg" id="pimg" required>
              <span><p style="color:#ff6384; font-size:16px;"> ** ขนาดไฟล์ไม่เกิน 2 เมกะไบต์</p></span>
            </div>

            <div class="fieldset" style="width:100%; height:0 auto; padding-left:10px; margin: 0 auto;">
                <div style="float:left;">
                  <p>วิธีการจัดส่ง</p>
                </div>
                  <div style="float:left;" style="width:100%;">
                      <table class="table" >
                        <tr>
                          <td style="padding-top:20%; border: none;"><input type="radio" name="sendtype" value="ส่งไปรษณีย์" onclick="hide();"> ส่งไปรษณีย์ <br></td>
                        </tr>
                        <tr style="border: none;">
                          <td style="padding-top:20%; border: none;"><input type="radio" name="sendtype" value="รับที่องค์กร" onclick="hide();"> รับที่องค์กร <br></td>
                        </tr>
                        <tr>
                          <td style="padding-top:20%; border: none;"><input type="radio" name="sendtype" value="รับที่จุดนัดพบ" onclick="show();"> รับที่จุดนัดพบ <br></td>
                        </tr>
                      </table>
                  </div>
                <div id="checkSend_type" style="text-align:right;"></div>
                <br>
                <textarea id="address" style="display: none; width: 100%; border-color:#57E9F2; padding-left:20px; padding-top:5px;" NAME="sendlocation" ROWS=10 COLS=50 required></textarea>
            </div>

            <div style="padding-top:10%;">
              <button type="submit" style="height:40px; padding-top:7px;" class="btn-submit" value="submit" name="signup-submit" onclick="checkImgSsn();">บันทึกสินค้า</button>
            </div>
          </form>
        </div>
      </div>
      <!-- <!end register form -->
    </div>
    <br>
    <br>
    <br>
    <!-- end container -->
    <script type="text/javascript">
          function show() { document.getElementById('address').style.display = 'block'; }
          function hide() { document.getElementById('address').style.display = 'none'; }
        </script>
</body>
</html>
