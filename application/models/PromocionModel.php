<?php
/**
* Clase CoberturaModel
*/
class PromocionModel extends CI_Model
{	
	public function ListarPromociones()
	{	
		$query = $this->db->get('promocion');		
		return $query->result();
	}

	public function BuscarPromocion($IdPromocion)
	{	
		$query = $this->db->get_where('promocion', array('Idpromocion' => $IdPromocion));
		return $query->row();
	}

	public function RegistrarPromocion($titulo, $descripcionCorta, $mensaje, $usuario, $rutaFoto, $alineacion){
		$data = array(
						'titulo' 				=> $titulo,
						'estado' 				=> 1,
						'usuarioregistro'		=> $usuario,
						'descripcionCorta' 		=> $descripcionCorta,
						'mensaje' 				=> $mensaje,
						'rutafoto' 				=> $rutaFoto,
						'alineacion' 			=> $alineacion					
					);

		$this->db->set('fecharegistro', 'NOW()', FALSE);		
		$this->db->set('usuariobaja', 'NULL', FALSE);
		$this->db->set('fechabaja', 'NULL', FALSE);
		$this->db->insert('promocion', $data);
		return $this->db->insert_id();
	}

	public function ModificarPromocion($IdPromocion, $titulo, $descripcionCorta, $mensaje, $usuario, $rutaFoto, $alineacion){
		$data = array(
						'titulo' 				=> $titulo,
						'usuarioregistro'		=> $usuario,
						'descripcionCorta' 		=> $descripcionCorta,
						'mensaje' 				=> $mensaje,
						'alineacion' 			=> $alineacion
					);
		
		if($rutaFoto !=null){
			$this->db->set('rutaFoto', "'" . $rutaFoto . "'", FALSE);
		}
		$this->db->set('fechaRegistro', 'NOW()', FALSE);
		$this->db->set('usuarioBaja', 'NULL', FALSE);
		$this->db->set('fechaBaja', 'NULL', FALSE);
		$this->db->where('IdPromocion', $IdPromocion);
		return $this->db->update('promocion', $data);
	}

	public function ActualizarEstadoPromocion($IdPromocion,$estado,$usuario)
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

		$this->db->where('IdPromocion', $IdPromocion);
		return $this->db->update('promocion');	
	}
}
?>