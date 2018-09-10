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
		$this->load->view('producto/Postres');
		$this->load->view('layout/footer');
	}

	/*CUPCKES*/
	public function Cupckes()
	{
		$this->load->view('layout/header');
		$this->load->view('layout/menu');
		$this->load->view('producto/Combos');
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

	public function BuscarMonedas(){
		$categoria = $this->input->post("categoria");
		$resultado = $this->ProductoModel->ListarProductos($categoria);
		echo json_encode($resultado);
	}
}