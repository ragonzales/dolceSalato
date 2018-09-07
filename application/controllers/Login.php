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
        $this->load->view('login');
	}
    
    public function BuscarUsuario(){
		echo "asdas";
        /*
        $usuario = $this->input->post("usuario");
        $password = $this->input->post("passsword");
		$resultado = $this->LoginModel->BuscarUsuario($usuario,$password);
		echo json_encode($resultado);
        */
	}
}