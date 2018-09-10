<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Inicio extends CI_Controller {
    
    function __construct()
	{
		parent::__construct();
		//$this->load->model('LoginModel');	
	}

	public function index()
	{
		$this->load->view('layout/header');
		$this->load->view('layout/menu');
		$this->load->view('Inicio');
		$this->load->view('layout/footer');
	}      
}