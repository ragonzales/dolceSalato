<?php
/**
* Clase LoginModel
*/
class LoginModel extends CI_Model
{	
	public function BuscarUsuario($usuario,$passworrd)
	{	        
        $query = $this->db->get_where('usuaio', array(
                                                        'usuario'   => $usuario,
                                                        'passworrd' => $passworrd,
                                                        'activo'    => 1,
                                                     ), $limit, $offset);
        return $query->row();
	}
}
?>