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
}
?>