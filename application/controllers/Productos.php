<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Productos extends CI_Controller {
    
    function __construct()
	{
		parent::__construct();
		$this->load->model('ProductoModel');	
	}

	public function index()
	{
		$this->Inicio();
	}    
   
	public function Inicio()
	{
		$this->Postres();
	}
	/*REDIRECCIONES A VISTAS */
	/*POSTRES*/
	public function Postres()
	{
		$this->load->view('layout/header');
		$this->load->view('layout/menu');
		$this->load->view('producto/Postres');
		$this->load->view('layout/footer');
	}

	/*BOCADITOS*/
	public function Bocaditos()
	{
		$this->load->view('layout/header');
		$this->load->view('layout/menu');
		$this->load->view('producto/Bocaditos');
		$this->load->view('layout/footer');
	}

	/*CUPCKES*/
	public function Cupckes()
	{
		$this->load->view('layout/header');
		$this->load->view('layout/menu');
		$this->load->view('producto/Cupckes');
		$this->load->view('layout/footer');
	}

	/*COMBOS*/
	public function Combos()
	{
		$this->load->view('layout/header');
		$this->load->view('layout/menu');
		$this->load->view('producto/Combos');
		$this->load->view('layout/footer');
	}

	/*FESTIVO*/
	public function Festivo()
	{
		$this->load->view('layout/header');
		$this->load->view('layout/menu');
		$this->load->view('producto/Festivo');
		$this->load->view('layout/footer');
	}	

	public function ListarProductos(){
		$categoria = $this->input->post("categoria");
		$resultado = $this->ProductoModel->ListarProductos($categoria);
		echo json_encode($resultado);
	}

	public function RegistrarProductos()
	{
		$usuario = $this->input->post("usuario");
		$IdCategoria = $this->input->post("IdCategoria");
		$nombreProducto = $this->input->post("nombreProducto");		
		$descripcionCorta = $this->input->post("descripcionCorta");
		$descripcionLarga = $this->input->post("descripcionLarga");
		$listadoProporciones = $this->input->post("listadoProporciones");

		$cargaImagen = $this->CargarLibreriaUpload($IdCategoria);	

		if ($cargaImagen == false)
		{
			echo json_encode($error);
		}
		else
		{
			$directorio = $this->ObtenerDirectorio($IdCategoria);
			$IdProducto = $this->ProductoModel->RegistrarProductos($IdCategoria, $nombreProducto, $descripcionCorta, $descripcionLarga, $usuario, $directorio);
			if($listadoProporciones == null)
			 	$cantidadProporciones = 0;
			else
			 	$cantidadProporciones= count($listadoProporciones);
			
			if ($cantidadProporciones > 0) $this->ProductoModel->RegistrarProporcionProducto($IdProducto, $listadoProporciones);
			echo json_encode(true);
			
		}
	}

	public function ObtenerDirectorio($IdCategoria)
	{
		switch ($IdCategoria) {
			case '1':
				$dir = './Upload_Bocaditos/';
				break;
			case '2':
				$dir = './Upload_Combos/';
				break;
			case '3':
				$dir = './Upload_Cupckes/';
				break;
			case '4':
				$dir = './Upload_Festivo/';
				break;
			case '5':
				$dir = './Upload_Postres/';				
				break;
		}
		return $dir;
	}

	public function CargarLibreriaUpload($IdCategoria)
	{
		$dir = $this->ObtenerDirectorio($IdCategoria);
		$config['upload_path'] = $dir;
        $config['allowed_types'] = 'gif|jpg|png';
		$config['max_size'] = 2048;		
		$this->load->library('upload', $config);

		if (!file_exists($dir)) {
			error_reporting(E_ERROR);
			mkdir($dir,0777);
			chmod($dir, 0777);
			error_reporting(E_ERROR | E_WARNING | E_PARSE | E_NOTICE);
		}

		if (!$this->upload->do_upload('foto')) { 
            $error = array('error' => $this->upload->display_errors());
			return false;
        } else {
			//echo json_encode(true);
			return true;
		}
	}
}