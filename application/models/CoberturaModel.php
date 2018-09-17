<?php
/**
* Clase CoberturaModel
*/
class CoberturaModel extends CI_Model
{	
	public function ListarCoberturas()
	{	
		$query = $this->db->get('cobertura');		
		return $query->result();
	}

	public function RegistrarCobertura($cobertura){
		$data = array(
					'distrito' 			=> $cobertura['distrito'],
					'activo' 			=> 1,
					'usuarioCrea' 		=> $cobertura['usuarioCrea'],
				);
		$this->db->set('fechaCrea', 'NOW()', FALSE);		
		$this->db->set('usuarioBaja', 'NULL', FALSE);
		$this->db->set('fechaBaja', 'NULL', FALSE);
		$this->db->insert('cobertura', $data);
		return $this->db->insert_id();
	}

	public function ActualizarCobertura($cobertura)
	{
		$data = array(
						'distrito' => $cobertura['cobertura'],
					);

		if($cobertura['estado'] == '0'){
			$this->db->set('activo', 0, FALSE);
			$this->db->set('usuarioBaja', "'" . $cobertura['usuario'] . "'" , FALSE);			
		 	$this->db->set('fechaBaja', 'NOW()', FALSE);
		}
		else{
			$this->db->set('activo', 1, FALSE);
		}
		$this->db->where('Idcobertura', $cobertura['IdCobertura']);
		return $this->db->update('cobertura', $data);	
	}

	public function BuscarCobertura($IdCobertura)
	{	
		$query = $this->db->get_where('cobertura', array('IdCobertura' => $IdCobertura));
		return $query->row();
	}
}
?>