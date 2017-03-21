<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<title>NRE IT Equipment Booking System</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
<?
    echo link_tag('assets/css/bootstrap.css');
    echo link_tag('assets/css/sticky-footer.css');
    echo link_tag('assets/css/highslide.css');

?>

    <style>
      body {
        padding-top: 60px; /* 60px to make the container go all the way to the bottom of the topbar */
      }
    </style>

    <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
      <script src="../assets/js/html5shiv.js"></script>
    <![endif]-->
    <!-- Fav and touch icons -->
   <link rel="icon" href="<?php echo base_url(); ?>assets/img/favicon.ico">
   

    <script type="text/javascript" src="/assets/js/jquery-2.0.3.min.js"></script>
    <script type="text/javascript" src="/assets/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="/assets/js/functions.js"></script>
    <script type="text/javascript" src="/assets/js/highslide.js"></script>


    <script type="text/javascript">
//<![CDATA[
hs.registerOverlay({
  html: '<div class="closebutton" onclick="return hs.close(this)" title="Close"></div>',
  position: 'top right',
  fade: 2 // fading the semi-transparent overlay looks bad in IE
});

          hs.marginTop = '10';
          hs.showCredits = false;
          hs.graphicsDir = '/assets/img/highslide_graphics/';
          hs.wrapperClassName = 'borderless';
          hs.useBox = true;
          hs.width = 600;
          hs.height = 600;
          hs.outlineType = 'rounded-white';
//]]>

    </script>


</head>
<body>

<?

//vdebug($this->session->userdata['email']);

$usersemail = @$this->session->userdata['email'];

function NavHighlighter($menu){
  $retval = '';

  if(uri_string() == $menu){
      $retval = ' class="active" ';
  }

  return($retval);
}

function LoginButton($email){

  if($email){
    echo('Logout ' . $email);
  }else{
    echo('Login');
  }

}

?>

<div class="navbar navbar-inverse navbar-fixed-top">

<!--       <div class="container_nav"> -->
        <div class="navbar-header">
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="/">NRE Equipment Booking System</a>
        </div>
        <div class="collapse navbar-collapse">
          <ul class="nav navbar-nav">
            <li <?=NavHighlighter('')?>><a href="/">Home</a></li>
            <li<?=NavHighlighter('equipment/browse')?>><a href="/equipment/browse">Browse</a></li>
            <li<?=NavHighlighter('admin/loans')?><?=NavHighlighter('admin/equipment_database')?>>
<!--               <a href="/admin/loans">Admin1</a> -->

              <a href="#" class="dropdown-toggle" data-toggle="dropdown">Admin <b class="caret"></b></a>
                  <ul class="dropdown-menu">

                    <li <?=NavHighlighter('admin/loans')?>><a href="/admin/loans">Loan Register</a></li>
                    <li <?=NavHighlighter('admin/equipment_database')?>><a href="/admin/equipment_database">Equipment Database</a></li>

                  </ul>
            </li>


            <li<?=NavHighlighter('equipment/contact')?>><a href="/equipment/contact">Contact</a></li>
            <li<?=NavHighlighter('admin/login')?>><a href="/admin/login"><?LoginButton($usersemail);?></a></li>
          </ul>
        </div><!--/.nav-collapse -->
      </div>
<!--     </div> -->

<?

?>

<div id="wrap"><!--wraps page content, for sticky footer-->
