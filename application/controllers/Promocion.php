<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Promocion extends CI_Controller {
	
    function __construct()
	{
		parent::__construct();
		$this->load->model('PromocionModel');
	}

	public function index()
	{
		$this->load->view('layout/header');
		$this->load->view('layout/menu');
		$this->load->view('Promocion');
		$this->load->view('layout/footer');
	}
	
	public function ListarPromociones(){
		$resultado = $this->PromocionModel->ListarPromociones();
		echo json_encode($resultado);
	}

	public function RegistrarPromocion()
	{
		$usuario = $this->input->post("usuario");
		$titulo = $this->input->post("titulo");
		$nombreProducto = $this->input->post("nombreProducto");		
		$descripcionCorta = $this->input->post("descripcionCorta");
		$mensaje = $this->input->post("mensaje");
		$alineacion = $this->input->post("alineacion");
		$cargaImagen = $this->CargarLibreriaUpload($nombreArchivo);
		
		if ($cargaImagen == false)
		{
			echo json_encode($error);
		}
		else
		{
			$rutaCompleta = './Upload_Promociones/' . $nombreArchivo;
			$rutaCompleta = base_url() . substr($rutaCompleta, 2);
			$IdProducto = $this->PromocionModel->RegistrarPromocion($titulo, $descripcionCorta, $mensaje, $usuario, $rutaCompleta, $alineacion);
			echo json_encode(true);
		}
	}

	public function ModificarPromocion()
	{
		$IdPromocion = $this->input->post("IdPromocion");
		$usuario = $this->input->post("usuario");
		$titulo = $this->input->post("titulo");
		$nombreProducto = $this->input->post("nombreProducto");		
		$descripcionCorta = $this->input->post("descripcionCorta");
		$mensaje = $this->input->post("mensaje");
		$alineacion = $this->input->post("alineacion");
		
		/*
		$promocion = $this->PromocionModel->BuscarPromocion($IdPromocion);			
		echo json_encode($promocion->rutafoto);
		*/

		if($this->input->post("foto") == null){
			$promocion = $this->PromocionModel->BuscarPromocion($IdPromocion);				
			$archivoAnterior =  $promocion->rutafoto;
			$this->EliminarCarpeta($archivoAnterior);
			// echo json_encode('RUTA ARCHIVO ANTERIOR ' . $archivoAnterior);
			
			$cargaImagen = $this->CargarLibreriaUpload($nombreArchivo);
			if ($cargaImagen == false)
			{
				echo json_encode($error);
			}
			else
			{
				$rutaCompleta = './Upload_Promociones/' . $nombreArchivo;
				$rutaCompleta = base_url() . substr($rutaCompleta, 2);

				// echo json_encode('RUTA ARCHIVO NUEVA ' . $rutaCompleta);
				$this->PromocionModel->ModificarPromocion($IdPromocion, $titulo, $descripcionCorta, $mensaje, $usuario, $rutaCompleta, $alineacion);
				echo json_encode(true);
			}
		}
		else {
			$rutaCompleta = null;
			$this->PromocionModel->ModificarPromocion($IdPromocion, $titulo, $descripcionCorta, $mensaje, $usuario, $rutaCompleta, $alineacion);
			echo json_encode(true);
		}
		
	}

	public function BuscarPromocion()
	{
		$IdPromocion = $this->input->post("IdPromocion");
		$resultado = $this->PromocionModel->BuscarPromocion($IdPromocion);
		echo json_encode($resultado);
	}

	public function CargarLibreriaUpload(&$nombreArchivo)
	{
		try
		{
			$dir = './Upload_Promociones/';
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

	public function ActualizarEstadoPromocion()
	{
		$IdPromocion = $this->input->post("IdPromocion");
		$estado = $this->input->post("estado");
		$usuario = $this->input->post("usuario");
		$resultado = $this->PromocionModel->ActualizarEstadoPromocion($IdPromocion,$estado,$usuario);
		echo json_encode($resultado);
	}



}