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
<link rel='stylesheet' type="text/css" href='<?=base_url()?>/assets/css/nprogress.css' media="all"/>
<link rel='stylesheet' type="text/css" href='<?=base_url()?>/assets/css/choose.css' media="all"/>


<!-- Favicon
–––––––––––––––––––––––––––––––––––––––––––––––––– -->
<link rel="icon" type="image/png" sizes="32x32" href="<?=base_url()?>/assets/image/favicon-32x32.png">
<!-- JS
–––––––––––––––––––––––––––––––––––––––––––––––––– -->
<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<script type="text/javascript" src="<?=base_url()?>/assets/js/bootstrap.min.js"></script>
<script type="text/javascript" src="<?=base_url()?>/assets/js/countUp.js"></script>
<script src='https://www.google.com/recaptcha/api.js?hl=th'></script>

</head>
<!-- loadFunction -->
<body>
      <!-- container -->
      <div style="height: 0 auto;" class="container content">
        <p style="color:#ec6969; padding-top:8%; font-size:16px;"> ขณะนี้มีจำนวนสิ่งของ <span id="countValues" style="font-size:24px;"></span> ชิ้น ที่บริจาค</p>
              <ul class="ch-grid">
                <a name="want-help" href="<?=base_url()?>index.php/WantHelp/index">
                  <li class="want-help hvr-grow-shadow">
                  <p style="padding-top:50%; margin: 0 auto;">ต้องการบริจาค</p>
                </li></a>
                <a name="please-help" href="<?=base_url()?>index.php/PleaseHelp/index">
                <li class="please-help hvr-grow-shadow">
                <p style="padding-top:50%; margin: 0 auto;">ขอรับบริจาค</p>
              </li></a>
              </ul>
              <br>
              <br>
          </div>
          <!-- <!end register form -->
        </div>
        <!-- end container -->
        <br>


        <script>

    $( window ).on( "load", function() {
          var options = {
            useEasing : true,
            useGrouping : true,
            separator : ',',
            decimal : '.',
            prefix : '',
            suffix : ''
          };
          var values = new CountUp("countValues", 0, 4309, 0, 10, options);
          values.start();
    });
    </script>
</body>
</html>
