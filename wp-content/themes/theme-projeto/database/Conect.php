<?php
 
class Database {
	private $connection;
	private static $instance; 
	private $host = "localhost";
	private $username = "root";
	private $password = ""; //localhost sem senha
	private $database = "db_projetoarquitetura";

	public static function getInstance() {
		if(!self::$instance) { 
			self::$instance = new self();
		}
		return self::$instance;
	}

	private function __construct() {
		$this->connection = new mysqli($this->host, $this->username, 
			$this->password, $this->database);
	
		if(mysqli_connect_error()) {
			trigger_error("Algo de errado não está certo: " . mysql_connect_error(),
				 E_USER_ERROR);
		}
	}

	// evita duplicação de conexão
	private function __clone() { }

	public function getConnection() {
		return $this->connection;
	}
}