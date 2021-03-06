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

	/*BOCADITOS DULCES*/
	public function BocaditosDulces()
	{
		$this->load->view('layout/header');
		$this->load->view('layout/menu');
		$this->load->view('producto/BocaditosDulces');
		$this->load->view('layout/footer');
	}

	/*BOCADITOS SALADOS*/
	public function BocaditosSalados()
	{
		$this->load->view('layout/header');
		$this->load->view('layout/menu');
		$this->load->view('producto/BocaditosSalados');
		$this->load->view('layout/footer');
	}

	/*PIQUEOS*/
	public function Piqueos()
	{
		$this->load->view('layout/header');
		$this->load->view('layout/menu');
		$this->load->view('producto/Piqueos');
		$this->load->view('layout/footer');
	}

	/*PIQUEOS PERUANOS*/
	public function PiqueosPeruanos()
	{
		$this->load->view('layout/header');
		$this->load->view('layout/menu');
		$this->load->view('producto/PiqueosPeruanos');
		$this->load->view('layout/footer');
	}

	/*CUPCKES TRADICIONALES*/
	public function CupckesTradicionales()
	{
		$this->load->view('layout/header');
		$this->load->view('layout/menu');
		$this->load->view('producto/CupckesTradicionales');
		$this->load->view('layout/footer');
	}

	/*CUPCKES GIGANTES*/
	public function CupckesGigantes()
	{
		$this->load->view('layout/header');
		$this->load->view('layout/menu');
		$this->load->view('producto/CupckesGigantes');
		$this->load->view('layout/footer');
	}

	/*CUPCKES FRUTA*/
	public function CupckesFruta()
	{
		$this->load->view('layout/header');
		$this->load->view('layout/menu');
		$this->load->view('producto/CupckesFruta');
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
		$destacado = $this->input->post("destacado");
		$descuento = $this->input->post("descuento");
		$listadoProporciones = json_decode ($this->input->post("listadoProporciones"));		
		$cargaImagen = $this->CargarLibreriaUpload($IdCategoria,$nombreArchivo);
		
		if ($cargaImagen == false)
		{
			echo json_encode($error);
		}
		else
		{
			$directorio = $this->ObtenerDirectorio($IdCategoria) . $nombreArchivo;
			$directorio = base_url() . substr($directorio, 2);
			$IdProducto = $this->ProductoModel->RegistrarProductos($IdCategoria, $nombreProducto, $descripcionCorta, $descripcionLarga, $usuario, $directorio, $destacado, $descuento);
			if ($listadoProporciones != null) $this->ProductoModel->RegistrarProporcionProducto($IdProducto, $listadoProporciones,$usuario);
			echo json_encode(true);			
		}
	}

	public function ModificarProductos()
	{
		$usuario = $this->input->post("usuario");
		$IdProducto = $this->input->post("IdProducto");
		$IdCategoria = $this->input->post("IdCategoria");
		$nombreProducto = $this->input->post("nombreProducto");		
		$descripcionCorta = $this->input->post("descripcionCorta");
		$descripcionLarga = $this->input->post("descripcionLarga");
		$destacado = $this->input->post("destacado");
		$descuento = $this->input->post("descuento");
		$listadoProporciones = json_decode ($this->input->post("listadoProporciones"));		
		
		if($this->input->post("foto") == null){
			//ELIMINAR IMAGEN EXISTENTE
			$producto = $this->ProductoModel->BuscarProducto($IdProducto);				
			$archivoAnterior =  $producto->rutafoto;
			$this->EliminarCarpeta($archivoAnterior);
			
			$cargaImagen = $this->CargarLibreriaUpload($IdCategoria,$nombreArchivo);
			if ($cargaImagen == false)
			{
				echo json_encode($error);
			}
			else
			{
				//ACTUALIZACION DE INFORMACION 
				$rutaFoto = $this->ObtenerDirectorio($IdCategoria) . $nombreArchivo;
				$rutaFoto = base_url() . substr($rutaFoto, 2);

				$this->ProductoModel->ModificarProductos($IdProducto,$IdCategoria, $nombreProducto, $descripcionCorta, $descripcionLarga, $usuario, $rutaFoto, $destacado, $descuento);
				$this->ProductoModel->EliminarProporcionProducto($IdProducto);
				if ($listadoProporciones != null) $this->ProductoModel->RegistrarProporcionProducto($IdProducto, $listadoProporciones,$usuario);
				echo json_encode(true);
			}
		}
		else {
			$rutaFoto = null;
			$this->ProductoModel->ModificarProductos($IdProducto,$IdCategoria, $nombreProducto, $descripcionCorta, $descripcionLarga, $usuario, $rutaFoto, $destacado, $descuento);
			$this->ProductoModel->EliminarProporcionProducto($IdProducto);
			if ($listadoProporciones != null) $this->ProductoModel->RegistrarProporcionProducto($IdProducto, $listadoProporciones,$usuario);
			echo json_encode(true);
		}
	}

	public function ActualizarEstadoProducto()
	{
		$IdProducto = $this->input->post("IdProducto");
		$estado = $this->input->post("estado");
		$usuario = $this->input->post("usuario");
		$resultado = $this->ProductoModel->ActualizarEstadoProducto($IdProducto,$estado,$usuario);
		echo json_encode($resultado);
	}

	public function BuscarProducto()
	{
		$IdProducto = $this->input->post("IdProducto");
		$resultado = $this->ProductoModel->BuscarProducto($IdProducto);
		echo json_encode($resultado);
	}

	public function BuscarProductoProporciones()
	{
		$IdProducto = $this->input->post("IdProducto");
		$resultado = $this->ProductoModel->BuscarProductoProporciones($IdProducto);
		echo json_encode($resultado);
	}

	public function CargarLibreriaUpload($IdCategoria,&$nombreArchivo)
	{
		try
		{
			$dir = $this->ObtenerDirectorio($IdCategoria);
			$config['upload_path'] = $dir;
			$config['allowed_types'] = 'gif|jpg|png';
			$config['max_size'] = 2048;		
			$this->load->library('upload', $config);

			if (!file_exists($dir)) 
			{
				error_reporting(E_ERROR);
				mkdir($dir,0777);
				chmod($dir, 0777);
				error_reporting(E_ERROR | E_WARNING | E_PARSE | E_NOTICE);
			}

			if (!$this->upload->do_upload('foto')) 
			{ 
				$error = array('error' => $this->upload->display_errors());
				return false;
			}
			else
			{
				$data = $this->upload->data();
				echo  json_encode($data);
				$nombreArchivo = $data["file_name"];
				return true;
			}						
		} catch (Exception $e) {
			echo 'Excepción capturada: ',  $e->getMessage(), "\n";
		}
	}

	public function ObtenerDirectorio($IdCategoria)
	{
		switch ($IdCategoria) {
			case '1':
				$dir = './Upload_Postres/';
				break;
			case '2':
				$dir = './Upload_Bocaditos_Salados/';
				break;
			case '3':
				$dir = './Upload_Bocaditos_Dulces/';	
				break;
			case '4':
				$dir = './Upload_Piqueos_Tradicionales/';
				break;
			case '5':
				$dir = './Upload_Piqueos_Peruanos/';
				break;
			case '6':
				$dir = './Upload_Cupckes_Tradicionales/';
				break;
			case '7':
				$dir = './Upload_Cupckes_Gigantes/';
				break;
			case '8':
				$dir = './Upload_Combos/';
				break;
			case '9':
				$dir = './Upload_Tendencias/';
				break;
			case '10':
				$dir = './Upload_Festivo/';
				break;
			case '11':
				$dir = './Upload_Cupckes_Fruta/';
				break;				
		}
		return $dir;
	}

	public function EliminarCarpeta($archivo)
	{
		try 
		{	
			$RutaArchivo = base_url() . substr($archivo, 1) ;
			$this->load->helper("file");
			/*
			if (file_exists(unlink($archivo))){
				delete_files(unlink($archivo));
			}
			*/
			if (file_exists($RutaArchivo)){
				delete_files($RutaArchivo);
			}
		} catch (Exception $e) 
		{
			echo json_encode($e->getMessage());
		}
	}
}