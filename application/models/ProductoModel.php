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

	public function BuscarProductoProporciones($IdProducto)
	{	
		$query = $this->db->get_where('proporcionproductos', array('IdProducto' => $IdProducto));
		return $query->result();
	}

	public function ModificarProductos($IdProducto,$IdCategoria, $nombreProducto, $descripcionCorta, $descripcionLarga, $usuario, $rutaFoto){
		$data = array(
						'IdCategoria' 			=> $IdCategoria,
						'nombre'	 			=> $nombreProducto,
						'descripcionCorta' 		=> $descripcionCorta,
						'descripcionLarga' 		=> $descripcionLarga,
						'rutaFoto' 				=> $rutaFoto,
					);
		
		if($rutaFoto !=null){
			$this->db->set('rutaFoto', "'" . $rutaFoto . "'", FALSE);
		}
		$this->db->set('fechaRegistro', 'NOW()', FALSE);
		$this->db->set('usuarioBaja', 'NULL', FALSE);
		$this->db->set('fechaBaja', 'NULL', FALSE);
		$this->db->where('IdProducto', $IdProducto);
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

	public function RegistrarProporcionProducto($IdProducto, $listadoProporciones,$usuario)
	{
		foreach ($listadoProporciones as $key => $proporcion) {
			$data = array(						
			 			'IdProducto'		=> $IdProducto,
			 			'proporcion'		=> $proporcion->proporcion,
			 			'precio' 			=> $proporcion->precio,					
			 			'estado' 			=> 1,
			 			);
			$this->db->set('usuarioRegistro', "'" . $usuario . "'" , FALSE);
			$this->db->set('fecharegistro', 'NOW()', FALSE);
			$this->db->insert('proporcionproductos', $data);
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
			$this->db->set('usuarioBaja',"''", FALSE);
			$this->db->set('fechaBaja',"NULL", FALSE);
		}

		$this->db->where('IdProducto', $IdProducto);
		return $this->db->update('producto');	
	}

	public function BuscarProducto($IdProducto)
	{	
		$query = $this->db->get_where('producto', array('IdProducto' => $IdProducto));
		return $query->row();
	}

	public function EliminarProporcionProducto($IdProducto)
	{	
		$query = $this->db->delete('proporcionproductos', array('IdProducto' => $IdProducto));
	}
	
}
?>