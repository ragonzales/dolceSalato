<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Login extends CI_Controller {
    
    function __construct()
	{
		parent::__construct();
		$this->load->model('LoginModel');	
	}

	public function index()
	{
        $this->load->view('Login');
	}
    
    public function BuscarUsuario(){
        $usuario = $this->input->post("usuario");
		$contrasena = $this->input->post("contrasena");
		//echo json_encode('Ingreso BuscarUsuario');

		// echo json_encode('usuario => ' + $usuario);
		// echo json_encode('contrasena => ' + $contrasena);

		$resultado = $this->LoginModel->BuscarUsuario($usuario,$contrasena);

		if ($resultado == false)
		{
			echo json_encode('Usuario o contraseña incorrectos');
		}
		else{
			echo json_encode($resultado);			
		}
	}

	public function RedireccionarInicio(){
		if($this->session->userdata('usuario')==null){
			redirect(Login);
		}
		else
		{
			$this->load->view('layout/header');
			$this->load->view('layout/menu');
			$this->load->view('Inicio');
			$this->load->view('layout/footer');
		}
	}

	public function cerrarSesion()
	{
		$this->session->sess_destroy();
		$this->load->view('Login');
	}
}