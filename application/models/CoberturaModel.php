<?php
/**
* Clase CoberturaModel
*/
class CoberturaModel extends CI_Model
{	
	public function ListarCoberturas()
	{	
		$query = $this->db->get('coberturas');		
		return $query->result();
	}
}
?>