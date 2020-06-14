<?php 
session_start();
$userId = $_SESSION["usuarioID"];
require_once get_template_directory().'/database/Conect.php';
$consulta = "SELECT * FROM animais WHERE UsuarioID = '" . $userId . "'";
$animais = mysqli_query($connection, $consulta);