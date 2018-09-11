<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en">
<!--<![endif]-->
<head>
	<meta charset="utf-8" />
	<title>Panel Administrador | Dolce Salato</title>
	<meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" name="viewport" />
	<meta content="" name="description" />
	<meta content="" name="author" />
	
	<link href="http://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet" />
	<link href="<?php echo base_url();?>assets/plugins/jquery-ui/jquery-ui.min.css" rel="stylesheet" />
	<link href="<?php echo base_url();?>assets/plugins/bootstrap/4.1.0/css/bootstrap.min.css" rel="stylesheet" />
	<link href="<?php echo base_url();?>assets/plugins/font-awesome/5.0/css/fontawesome-all.min.css" rel="stylesheet" />
	<link href="<?php echo base_url();?>/assets/plugins/animate/animate.min.css" rel="stylesheet" />
	<link href="<?php echo base_url();?>assets/css/default/style.min.css" rel="stylesheet" />
	<link href="<?php echo base_url();?>assets/css/default/style-responsive.min.css" rel="stylesheet" />
	<link href="<?php echo base_url();?>assets/css/default/theme/default.css" rel="stylesheet" id="theme" />
	<script src="<?php echo base_url();?>assets/plugins/pace/pace.min.js"></script>

    <style>
        .header .navbar-logo, .login .login-header .brand .logo, .header .navbar-nav > li > a .label, .label.label-theme, .btn.btn-scroll-to-top {
            background: #f59c1a;
        }
    </style>
    
</head>
<body class="pace-top bg-white">
	<div id="page-loader" class="fade show"><span class="spinner"></span></div>
	<div id="page-container" class="fade">
        <div class="login login-with-news-feed">
            <div class="news-feed">
                <div class="news-image" style="background-image: url(<?php echo base_url();?>assets/img/login-bg/login-bg-11.jpg)"></div>
                <div class="news-caption">
                    <h4 class="caption-title"><b>Dolce</b> Salato</h4>
                    <p>Panel Administrador</p>
                </div>
            </div>
            <div class="right-content">
                <div class="login-header">
                    <div class="brand">
                        <span class="logo"></span> <b>Dolce</b> Salato
                        <small>Panel Administrador</small>
                    </div>
                    <div class="icon">
                        <i class="fa fa-sign-in"></i>
                    </div>
                </div>
                <div class="login-content">                    
                    <div class="form-group m-b-15">
                        <input type="text" id="txtUsuario" class="form-control form-control-lg" placeholder="Usuario" required />
                    </div>
                    <div class="form-group m-b-15">
                        <input type="password" id="txtPassword" class="form-control form-control-lg" placeholder="Password" required />
                    </div>
                    
                    <div class="alert alert-danger" style="display:none" id="divMensaje">
                        <label id="lblMensaje"></label>
                    </div>

                    <div class="login-buttons">
                        <button type="submit" id="btnBuscarUsuario" class="btn btn-warning btn-block btn-lg">Ingresar</button>
                    </div>                        
                    <hr />
                    <p class="text-center text-grey-darker">
                        &copy; SoidSolutions All Right Reserved 2018
                    </p>                    
                </div>
            </div>
        </div>
	</div>
	
	<script src="<?php echo base_url();?>assets/plugins/jquery/jquery-3.2.1.min.js"></script>
	<script src="<?php echo base_url();?>assets/plugins/jquery-ui/jquery-ui.min.js"></script>
	<script src="<?php echo base_url();?>assets/plugins/bootstrap/4.1.0/js/bootstrap.bundle.min.js"></script>
	<script src="<?php echo base_url();?>assets/plugins/slimscroll/jquery.slimscroll.min.js"></script>
	<script src="<?php echo base_url();?>assets/plugins/js-cookie/js.cookie.js"></script>
	<script src="<?php echo base_url();?>assets/js/theme/default.min.js"></script>	
    <script src="<?php echo base_url();?>assets/js/panelAdministrador/generico.js"></script>
    <script src="<?php echo base_url();?>assets/js/panelAdministrador/login.js"></script>    
    <script src="<?php echo base_url();?>assets/js/apps.min.js"></script>
	
    <script type="text/javascript">
        /*INICIALIZAR VARIABLES GLOBALES*/        
        var BASE_URL = "<?php echo base_url();?>";    
        $(document).ready(function() {
            App.init();
        });
	</script>
</body>
</html>
