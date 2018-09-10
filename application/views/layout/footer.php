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
	<script src="<?php echo base_url();?>assets/plugins/DataTables/media/js/jquery.dataTables.js"></script>
	<script src="<?php echo base_url();?>assets/plugins/DataTables/media/js/dataTables.bootstrap.min.js"></script>
	<script src="<?php echo base_url();?>assets/plugins/DataTables/extensions/Responsive/js/dataTables.responsive.min.js"></script>	
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" type="text/javascript"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" type="text/javascript"></script>
	<script src="<?php echo base_url();?>assets/js/moment.js"></script>
	<script src="<?php echo base_url();?>assets/js/panelAdministrador/generico.js"></script>
	<script src="<?php echo base_url();?>assets/js/panelAdministrador/inicio.js"></script>

	<?php if($this->uri->segment(2)=='Bocaditos'){?>
		<script src="<?php echo base_url();?>assets/js/panelAdministrador/producto/bocaditos.js"></script>
	<?php }?>

	<?php if($this->uri->segment(2)=='Combos'){?>
		<script src="<?php echo base_url();?>assets/js/panelAdministrador/producto/combos.js"></script>
	<?php }?>

	<?php if($this->uri->segment(2)=='Cupckes'){?>
		<script src="<?php echo base_url();?>assets/js/panelAdministrador/producto/cupckes.js"></script>
	<?php }?>

	<?php if($this->uri->segment(2)=='Festivo'){?>
		<script src="<?php echo base_url();?>assets/js/panelAdministrador/producto/festivo.js"></script>
	<?php }?>

	<?php if($this->uri->segment(2)=='Postres'){?>
		<script src="<?php echo base_url();?>assets/js/panelAdministrador/producto/postres.js"></script>
	<?php }?>


	<script type="text/javascript">
		/*INICIALIZAR VARIABLES GLOBALES*/        
		var BASE_URL = "<?php echo base_url();?>";
		var tblProductos = null;
		$(document).ready(function() {
			App.init();
			"use strict";
			if($("#tblProductos").length !== 0 ){
				tblProductos =  $("#tblProductos").DataTable({responsive:true})
			}
		});
		var btnCust = '';
		$("#avatar-1").fileinput({
			overwriteInitial: true,
			maxFileSize: 1500,
			showClose: false,
			showCaption: false,
			browseLabel: '',
			removeLabel: '',
			browseIcon: '<i class="glyphicon glyphicon-folder-open"></i>',
			removeIcon: '<i class="glyphicon glyphicon-remove"></i>',
			removeTitle: 'Cancel or reset changes',
			elErrorContainer: '#kv-avatar-errors-1',
			msgErrorClass: 'alert alert-block alert-danger',
			defaultPreviewContent: '<img src="' + BASE_URL +  'assets/img/product/postres.png" alt="Producto" id="imgProducto">',
			layoutTemplates: {main2: '{preview} ' +  btnCust + ' {remove} {browse}'},
			allowedFileExtensions: ["jpg", "png", "gif"]
		});
	</script>
</body>
</html>
