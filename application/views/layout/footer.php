        <a href="javascript:;" class="btn btn-icon btn-circle btn-success btn-scroll-to-top fade" data-click="scroll-top"><i class="fa fa-angle-up"></i></a>
	</div>
	<script src="<?php echo base_url();?>assets/plugins/jquery/jquery-3.2.1.min.js"></script>
	<script src="<?php echo base_url();?>assets/plugins/jquery-ui/jquery-ui.min.js"></script>	
	<script src="<?php echo base_url();?>assets/plugins/fileinput/fileinput.js"></script>
	<script src="<?php echo base_url();?>assets/plugins/fileinput/fileinput.min.js"></script>	
	<script src="<?php echo base_url();?>assets/plugins/locales/fr.js"></script>
	<script src="<?php echo base_url();?>assets/plugins/locales/es.js"></script>
	<script src="<?php echo base_url();?>assets/plugins/bootstrap/4.1.0/js/bootstrap.bundle.min.js"></script>
	<script src="<?php echo base_url();?>assets/plugins/slimscroll/jquery.slimscroll.min.js"></script>
	<script src="<?php echo base_url();?>assets/plugins/js-cookie/js.cookie.js"></script>
	<script src="<?php echo base_url();?>assets/js/theme/default.min.js"></script>
	<script src="<?php echo base_url();?>assets/js/apps.min.js"></script>
	<script src="<?php echo base_url();?>assets/plugins/gritter/js/jquery.gritter.js"></script>
	<script src="<?php echo base_url();?>assets/plugins/bootstrap-sweetalert/sweetalert.min.js"></script>
	<script src="<?php echo base_url();?>assets/js/demo/ui-modal-notification.demo.min.js"></script>
	<script src="<?php echo base_url();?>assets/plugins/DataTables/media/js/jquery.dataTables.js"></script>
	<script src="<?php echo base_url();?>assets/plugins/DataTables/media/js/dataTables.bootstrap.min.js"></script>
	<script src="<?php echo base_url();?>assets/plugins/DataTables/extensions/Responsive/js/dataTables.responsive.min.js"></script>	
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" type="text/javascript"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" type="text/javascript"></script>
	<script src="<?php echo base_url();?>assets/js/moment.js"></script>
	<script src="<?php echo base_url();?>assets/js/panelAdministrador/generico.js"></script>
	<script src="<?php echo base_url();?>assets/js/panelAdministrador/inicio.js"></script>
	
	<!--INICIALIZAR VARIABLES GLOBALES-->
	<script type="text/javascript">
		var BASE_URL = "<?php echo base_url();?>";
		var NOMBRE_IMAGEN = null;
	</script>

	<!--COBERTURAS-->
	<?php if($this->uri->segment(1)=='Coberturas'){?>
		<script src="<?php echo base_url();?>assets/js/panelAdministrador/cobertura.js"></script>
		<script type="text/javascript">
			console.log("asdsad");
		</script>
	<?php }?>

	<!--BOCADITOS-->
	<?php if($this->uri->segment(2)=='Bocaditos'){?>
		<script src="<?php echo base_url();?>assets/js/panelAdministrador/producto/producto.js"></script>
		<script src="<?php echo base_url();?>assets/js/panelAdministrador/producto/bocaditos.js"></script>
		<script type="text/javascript">
			NOMBRE_IMAGEN = 'product/Bocaditos.png';
		</script>
	<?php }?>

	<!--COMBOS-->
	<?php if($this->uri->segment(2)=='Combos'){?>
		<script src="<?php echo base_url();?>assets/js/panelAdministrador/producto/producto.js"></script>
		<script src="<?php echo base_url();?>assets/js/panelAdministrador/producto/combos.js"></script>
		<script type="text/javascript">
			NOMBRE_IMAGEN = 'product/Combos.png';
		</script>
	<?php }?>

	<!--CUPCKES-->
	<?php if($this->uri->segment(2)=='Cupckes'){?>
		<script src="<?php echo base_url();?>assets/js/panelAdministrador/producto/producto.js"></script>
		<script src="<?php echo base_url();?>assets/js/panelAdministrador/producto/cupckes.js"></script>
		<script type="text/javascript">
			NOMBRE_IMAGEN = 'product/Cupckes.png';
		</script>
	<?php }?>

	<!--FESTIVO-->
	<?php if($this->uri->segment(2)=='Festivo'){?>
		<script src="<?php echo base_url();?>assets/js/panelAdministrador/producto/producto.js"></script>
		<script src="<?php echo base_url();?>assets/js/panelAdministrador/producto/festivo.js"></script>
		<script type="text/javascript">
			NOMBRE_IMAGEN = 'product/Festivo.png';
		</script>
	<?php }?>

	<!--POSTRES-->
	<?php if($this->uri->segment(2)=='Postres'){?>
		<script src="<?php echo base_url();?>assets/js/panelAdministrador/producto/producto.js"></script>
		<script src="<?php echo base_url();?>assets/js/panelAdministrador/producto/postres.js"></script>
		<script type="text/javascript">
			NOMBRE_IMAGEN = 'product/Postres.png';
		</script>
	<?php }?>

	<!--PROMOCIÓN-->
	<?php if($this->uri->segment(1)=='Promocion'){?>
		<script src="<?php echo base_url();?>assets/js/panelAdministrador/promocion.js"></script>
		<script type="text/javascript">
			NOMBRE_IMAGEN = 'product/Postres.png';
		</script>
	<?php }?>

	<!--MÓDULO DE PRODUCTOS Y PROMOCIÓN(BANNER)-->
	<?php if($this->uri->segment(1)=='Productos' || $this->uri->segment(1)=='Promocion'){?>
		<script type="text/javascript">
			$("#avatar-1").fileinput({
				overwriteInitial: false,
				maxFileSize: 2048,
				showClose: false,	
				showCaption: false,
				browseLabel: '',
				removeLabel: '',
				browseIcon: '<i class="glyphicon glyphicon-folder-open"></i>',
				removeIcon: '<i class="glyphicon glyphicon-remove"></i>',
				removeTitle: 'Cancel or reset changes',
				elErrorContainer: '#kv-avatar-errors-1',
				msgErrorClass: 'alert alert-block alert-danger',
				defaultPreviewContent: '<img src="' + BASE_URL +  'assets/img/' + NOMBRE_IMAGEN +'" alt="Producto" id="imgProducto">',
				layoutTemplates: {main2: '{preview} {remove} {browse}'},
				allowedFileExtensions: ["jpg", "png", "gif"]
			});
		</script>
	<?php }?>


	<script type="text/javascript">		
		$(document).ready(function() {
			App.init();
		});
	</script>
</body>
</html>
