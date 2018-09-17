<?php
/**
* Clase ProductoModel
*/
class ProductoModel extends CI_Model
{	
	public function ListarProductos($idcategoria)
	{	
		$sql = "Select *";
		$sql .= " From producto";
		$sql .= " Where idcategoria = ?";
		$query = $this->db->query($sql, array($idcategoria));
		return $query->result();
	}

	public function BuscarProducto($IdProducto)
	{	
		$sql = "SELECT *";
		$sql .= " FROM producto";
		$sql .= " Where idProducto = ?";
		$query = $this->db->query($sql, array($IdProducto));
		return $query->row();
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

	public function RegistrarProporcionProducto($IdProducto, $listadoProporciones)
	{
		foreach ($listadoProporciones as $key => $proporcion) {
			$data = array(
				'IdProducto'		=> $IdProducto,
				'proporcion' 		=> $proporcion['descripcionNota'],
				'precio' 			=> $proporcion['precio'],
				'estado' 			=> 1
				);
			
			$this->db->set('fecha_modifica', 'NOW()', FALSE);
			$this->db->insert('notaOrdenCompra', $data);
		}
	}
}
?>