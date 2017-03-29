<?php
$uid = '';
?>
<!DOCTYPE html>
<html>
  <head>
    <title>Admin</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="<?=base_url()?>/assets/admin/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="<?=base_url()?>/assets/admin/css/styles.css" rel="stylesheet">
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/v/dt/jq-2.2.4/dt-1.10.13/datatables.min.css"/>
    <script type="text/javascript" src="https://cdn.datatables.net/v/dt/jq-2.2.4/dt-1.10.13/datatables.min.js"></script>
  </head>
  <body>

		  <div class="col-md-10">
        <div class="content-box-large">
        <h1 style="text-align:center;">รายการที่ร้องขอ</h1>
      </div>
          <div class="content-box-large">
            <table id="data" class="table" cellspacing="0" width="100%">
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
                  if ($status == "wait"){
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
                      }
                    ?>
                  </td>
                    <td><a href="<?=base_url()?>index.php/admin/activate?uid=<?=$row->uid?>&activate=success&email=<?=$row->email?>">อนุมัติ</a></td>
                    <td><a href="<?=base_url()?>index.php/admin/deleteAccount?uid=<?=$row->uid?>" style="color:#ff5858;">ลบ</a></td>

                </tr>
                <?php
                }
              }
              ?>
                </tbody>
            </table>
  		  	</div>
		  </div>
		</div>
    </div>
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script>
    $(document).ready(function() {
    $('#data').DataTable( {
        "ordering": false,
        "info":     false,
        "pageLength": 50
    } );
} );
    </script>


    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="<?=base_url()?>/assets/admin/bootstrap/js/bootstrap.min.js"></script>
    <script src="<?=base_url()?>/assets/admin/js/custom.js"></script>
  </body>
</html>
