<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8" />
	<title>Color Admin | Managed Tables - Responsive</title>
	<meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" name="viewport" />
	<meta content="" name="description" />
	<meta content="" name="author" />
	
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>	
	<link href="http://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet" />	
	<link href="<?php echo base_url();?>assets/plugins/fileinput/fileinput.css" media="all" rel="stylesheet" type="text/css"/>	
	<link href="<?php echo base_url();?>assets/plugins/jquery-ui/jquery-ui.min.css" rel="stylesheet" />
	<link href="<?php echo base_url();?>assets/plugins/bootstrap/4.1.0/css/bootstrap.min.css" rel="stylesheet" />
	<link href="<?php echo base_url();?>assets/plugins/font-awesome/5.0/css/fontawesome-all.min.css" rel="stylesheet" />
	<link href="<?php echo base_url();?>assets/plugins/animate/animate.min.css" rel="stylesheet" />
	<link href="<?php echo base_url();?>assets/css/default/style.min.css" rel="stylesheet" />
	<link href="<?php echo base_url();?>assets/css/default/style-responsive.min.css" rel="stylesheet" />
	<link href="<?php echo base_url();?>assets/css/default/theme/default.css" rel="stylesheet" id="theme" />
	<link href="<?php echo base_url();?>assets/plugins/DataTables/media/css/dataTables.bootstrap.min.css" rel="stylesheet" />
	<link href="<?php echo base_url();?>assets/plugins/DataTables/extensions/Responsive/css/responsive.bootstrap.min.css" rel="stylesheet" />
	<link href="<?php echo base_url();?>assets/plugins/jquery-file-upload/blueimp-gallery/blueimp-gallery.min.css" rel="stylesheet" />
	<script src="<?php echo base_url();?>assets/plugins/pace/pace.min.js"></script>
	
	<style>
		.kv-avatar .krajee-default.file-preview-frame,.kv-avatar .krajee-default.file-preview-frame:hover {
			margin: 0;
			padding: 0;
			border: none;
			box-shadow: none;
			text-align: center;
		}
		.kv-avatar {
			display: inline-block;
		}
		.kv-avatar .file-input {
			display: table-cell;
			width: 213px;
		}
		.kv-reqd {
			color: red;
			font-family: monospace;
			font-weight: normal;
		}
		
		.bg-danger, .bg-red {
			background-color: #ff5b57!important;
			color: white;
		}

		.text-theme, .sidebar .nav > li.active > a i {
			color: #f59c1a;
		}

		.header .navbar-logo, .login .login-header .brand .logo, .header .navbar-nav > li > a .label, .label.label-theme, .btn.btn-scroll-to-top {
			background: #f59c1a;
		}
	</style>
</head>
<body>
	<div id="page-loader" class="fade"><span class="spinner"></span></div>
	<div id="page-container" class="fade in page-sidebar-fixed page-header-fixed">
		<div id="header" class="header navbar-default">
			<div class="navbar-header">
				<a href="index.html" class="navbar-brand"><span class="navbar-logo"></span> <b>Dolce</b> Salato</a>
				<button type="button" class="navbar-toggle" data-click="sidebar-toggled">
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
			</div>
			<ul class="navbar-nav navbar-right">				
				<li class="dropdown navbar-user">
					<a href="javascript:;" class="dropdown-toggle" data-toggle="dropdown">
						<img src="<?php echo base_url();?>assets/img/user/user-13.jpg" alt="" /> 
						<span class="d-none d-md-inline" id="spanNombreUsuario"></span> <b class="caret"></b>
					</a>
					<div class="dropdown-menu dropdown-menu-right">
						<a href="#" id="btnSalir" class="dropdown-item">Salir</a>
					</div>
				</li>
			</ul>
		</div>