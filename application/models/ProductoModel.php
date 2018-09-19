<?php
/**
* Clase ProductoModel
*/
class ProductoModel extends CI_Model
{	
	public function ListarProductos($idcategoria)
	{	
		$query = $this->db->get_where('producto', array('idcategoria' => $idcategoria));
		return $query->result();
	}

	public function ActualizarProducto($params){
		$data = array(
						'IdProducto' => $params['IdProducto'],
						'nombre' => $params['nombreProducto'],
						'principioActivo' => $params['principioActivo'],
						'unidad' => $params['unidadMedida'],
						'importador' => $params['importador'],
						'fabricante' => $params['fabricante'],
						'usuario_modifica' => $params['usuario_modifica'],
						'estado' => 1, 
						);
		$this->db->set('fecha_modifica', 'NOW()', FALSE);
		$this->db->where('IdProducto', $params['IdProducto']);
		return $this->db->update('producto', $data);
	}

	public function RegistrarProductos($IdCategoria,$nombreProducto,$descripcionCorta,$descripcionLarga,$usuario,$rutaFoto){
		$data = array(
						'IdCategoria' 			=> $IdCategoria,
						'nombre'	 			=> $nombreProducto,
						'estado' 				=> 1,
						'usuarioCrea' 			=> $usuario,
						'descripcionCorta' 		=> $descripcionCorta,
						'descripcionLarga' 		=> $descripcionLarga,
						'rutaFoto' 				=> $rutaFoto,
					);

		$this->db->set('fechaRegistro', 'NOW()', FALSE);		
		$this->db->set('usuarioBaja', 'NULL', FALSE);
		$this->db->set('fechaBaja', 'NULL', FALSE);
		$this->db->insert('producto', $data);
		return $this->db->insert_id();
	}

	public function RegistrarProporcionProducto($IdProducto, $listadoProporciones)
	{
		foreach ($listadoProporciones as $key => $proporcion) {
			$data = array(
				'IdProducto'		=> $IdProducto,
				'proporcion' 		=> $proporcion['descripcionNota'],
				'precio' 			=> $proporcion['precio'],
				'estado' 			=> 1
				);
			
			$this->db->set('fecha_registro', 'NOW()', FALSE);
			$this->db->insert('notaOrdenCompra', $data);
		}
	}

	public function ActualizarEstadoProducto($IdProducto,$estado,$usuario)
	{
		if($estado == '0'){
			$this->db->set('estado', 0, FALSE);
			$this->db->set('usuarioBaja',"'" . $usuario . "'", FALSE);
			$this->db->set('fechaBaja', 'NOW()', FALSE);
		}else {
			$this->db->set('estado', 1, FALSE);
		}

		$this->db->where('IdProducto', $IdProducto);
		return $this->db->update('producto');	
	}

	public function BuscarProducto($IdProducto)
	{	
		$query = $this->db->get_where('producto', array('IdProducto' => $IdProducto));
		return $query->row();
	}
}
?>