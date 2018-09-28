<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Promociones extends CI_Controller {
    
    function __construct()
	{
		parent::__construct();
		$this->load->model('PromocionesModel');	
	}

	public function index()
	{
		$this->load->view('layout/header');
		$this->load->view('layout/menu');
		$this->load->view('Promociones');
		$this->load->view('layout/footer');
	}
	
	public function ListarPromociones(){
		$resultado = $this->PromocionesModel->ListarPromociones();
		echo json_encode($resultado);
	}

	// public function RegistrarCobertura(){
	// 	$params['distrito'] = $this->input->post("distrito");
	// 	$params['usuarioCrea'] = $this->input->post("usuarioCrea");
	// 	$this->CoberturaModel->RegistrarCobertura($params);
	// 	echo json_encode(true);
	// }

	// public function ActualizarCobertura(){
	// 	$cobertura = $_POST;		
	// 	$this->CoberturaModel->ActualizarCobertura($cobertura);
	// 	echo json_encode(true);
	// }

	// public function BuscarCobertura(){
	// 	$IdCobertura = $this->input->post("IdCobertura");	
	// 	$resultado = $this->CoberturaModel->BuscarCobertura($IdCobertura);
	// 	echo json_encode($resultado);
	// }
}