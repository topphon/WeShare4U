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
<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/v/dt/jq-2.2.4/dt-1.10.13/datatables.min.css"/>





<!-- Favicon
–––––––––––––––––––––––––––––––––––––––––––––––––– -->
<link rel="icon" type="image/png" sizes="32x32" href="<?=base_url()?>/assets/image/favicon-32x32.png">
<!-- JS
–––––––––––––––––––––––––––––––––––––––––––––––––– -->
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script type="text/javascript" src="https://cdn.datatables.net/v/dt/jq-2.2.4/dt-1.10.13/datatables.min.js"></script>
<script type="text/javascript" src="<?=base_url()?>/assets/js/bootstrap.min.js"></script>
<script src='https://www.google.com/recaptcha/api.js?hl=th'></script>
</head>
<!-- loadFunction -->
<body>
      <!-- container -->
      <div class="container content" style="height:auto%;">
          <div class="row" style="padding-top:7%; height:100%;" align="center">
            <div class="col-md-12">
              <div class="content-box-large">
              <h1 style="text-align:center;">รายการที่ร้องขอ</h1>
              <hr style="width:80%; border-color:#2e314d;">
            </div>
                <div class="content-box-large">
                  <table id="data" class="table"  cellspacing="0" width="100%"
                   style="height:auto%;   background-color: #ECF4FF; width:auto; margin:0 auto;">
                    <thead>
                        <tr>
                            <th>ชื่อจริง</th>
                            <th>นามสกุล</th>
                            <th>รหัสบัตรประชาชน</th>
                            <th>หลักฐานการยืนยัน</th>
                            <th>สถานะ</th>
                            <th></th>
                            <th></th>
                        </tr>
                    </thead>
                    <tbody>
                      <?php  foreach($imgValidate->result() as $row){
                        $status = $row->activate;
                        if ($status == "wait" || $status == "unsuccess"){
                        ?>
                      <tr>
                          <td><?=$row->fname?></td>
                          <td><?=$row->lname?></td>
                          <td><?=$row->ssn?></td>
                          <td><img id="myImg<?=$row->uid?>" src="<?=base_url()?>assets/imageSsn/<?=$row->imageValidate?>" width="300" height="200"></td>
                          <td>
                            <?php
                            if($status == "wait"){
                              echo "<p style='color:#ffba45;'>รอการยืนยันตัวตน</p>";
                            }else if($status == "unsuccess"){
                              echo "<p style='color:#ff5858;'>ยังไม่ผ่านการยืนยันตัวตน</p>";
                            }
                          ?>
                        </td>
                          <td><a href="<?=base_url()?>index.php/admin/success?uid=<?=$row->uid?>&activate=success&email=<?=$row->email?>" class="btn btn-success">อนุญาติ</a></td>
                          <td><a href="<?=base_url()?>index.php/admin/unsuccess?uid=<?=$row->uid?>&activate=unsuccess&email=<?=$row->email?>" class="btn btn-danger">ไม่อนุญาติ</a></td>

                      </tr>
                      <?php
                      }
                    }
                    ?>
                      </tbody>
                  </table>
                  <br>
                  <br>
                </div>
            </div>
          </div>
        </div>

        <br>
        <br>

        <script>
        $(document).ready(function() {
        $('#data').DataTable( {
            "ordering": false,
            "info":     false,
            "pageLength": 50
        } );
      } );
        </script>
</body>
</html>
