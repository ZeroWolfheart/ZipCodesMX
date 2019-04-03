<?php
require_once('../class/conexion.php');

class Postal{
	private $idcps; 
	private $idmunicipio;
	private $idestado; 
	private $cp;
	private $colonias;
	private $municipio;
	private $estado;

	private $conexion;

	//GETS AND SETS
	public function getIdcps(){
		return $this->idcps;
	}
	public function setIdcps($param1){
		$this->idcps = $param1;
	}
	public function getIdmunicipio(){
		return $this->idmunicipio;
	}
	public function getIdestado(){
		return $this->idestado;
	} 
	public function getCp(){
		return $this->cp;
	}
	public function setCp($param1){
		$this->cp = $param1;
	}
	public function getColonias(){
		return $this->colonias;
	}
	public function getMunicipio(){
		return $this->municipio;
	}
	public function getEstado(){
		return $this->estado;
	}
	public function createConexion(){
		$this->conexion = new Conexion();
	}
	private function destroyConexion(){
		$this->conexion = null;
	}

	//METODOS R

	public function readByCp(){
		$this->createConexion();
		$pstm=$this->conexion->prepare("CALL readCpByCP(:cp)");
		$pstm->bindParam(':cp',	$this->cp,	PDO::PARAM_INT);
		$pstm->execute();
		$x=0;
		while($fila = $pstm ->fetch(PDO::FETCH_ASSOC, PDO::FETCH_ORI_NEXT)){
			$this->idcps[$x] 	= $fila['idcp'];
			$this->colonias[$x] = $fila['colonia'];
			$this->municipio 	= $fila['municipio'];
			$this->estado 	 	= $fila['estado'];
			$x++;
		}
		$this->destroyConexion();
	}
	
	public function readByIdcp(){
		$this->createConexion();
		$pstm=$this->conexion->prepare("CALL readCpByIdCP(:idcp)");
		$pstm->bindParam(':cp',	$this->cp,	PDO::PARAM_INT);
		$pstm->execute();
		while($fila = $pstm ->fetch(PDO::FETCH_ASSOC, PDO::FETCH_ORI_NEXT)){
			$this->idcps 	 	= $fila['cp'];
			$this->colonias 	= $fila['colonia'];
			$this->municipio 	= $fila['municipio'];
			$this->estado 	 	= $fila['estado'];
		}
		$this->destroyConexion();
	}
}
?>