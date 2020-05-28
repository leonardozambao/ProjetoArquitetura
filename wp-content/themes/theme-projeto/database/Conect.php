<?php

$host = "localhost";
$username = "root";
$password = ""; //localhost sem senha
$database = "db_projetoarquitetura";

$connection = mysqli_connect($host, $username, $password, $database);

	// public static function getInstance() {
	// 	if(!self::$instance) { 
	// 		self::$instance = new self();
	// 	}
	// 	return self::$instance;
	// }

	// private function __construct() {
	// 	$this->connection = new mysqli($this->host, $this->username, 
	// 		$this->password, $this->database);
	
	// 	if(mysqli_connect_error()) {
	// 		trigger_error("Algo de errado não está certo: " . mysql_connect_error(),
	// 			 E_USER_ERROR);
	// 	}
	// }

	// // evita duplicação de conexão
	// private function __clone() { }

	// public function getConnection() {
	// 	echo 'conectou';
	// 	return $this->connection;
	// }
