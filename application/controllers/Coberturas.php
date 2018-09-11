<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Coberturas extends CI_Controller {
    
    function __construct()
	{
		parent::__construct();
		$this->load->model('CoberturaModel');	
	}

	public function index()
	{
		//$this->Inicio();
	}    
   
	// public function Inicio()
	// {		
	// }
	
	public function ListarCoberturas(){
		$resultado = $this->ProductoModel->ListarCoberturas();
		echo json_encode($resultado);
	}
}