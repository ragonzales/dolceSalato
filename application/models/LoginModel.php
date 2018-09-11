<?php
/**
* Clase LoginModel
*/
class LoginModel extends CI_Model
{	
	public function BuscarUsuario($usuario,$contrasena)
	{	
		$sql = "Select *";
		$sql .= " From usuario";
		$sql .= " Where usuario = ?";
		$sql .= " And contrasena = ?";
		$sql .= " And activo = ?";
		$query = $this->db->query($sql, array($usuario,$contrasena, 1));
		if ($query->num_rows() == 1)
		{
			return $query->row();
		}
		else
		{
			return false;
		}
	}
}
?>