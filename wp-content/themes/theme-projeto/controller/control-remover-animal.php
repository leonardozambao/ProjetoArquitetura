<?php
session_start();
include '../../../../wp-load.php';
require_once get_template_directory() . '/database/Conect.php';
$animal = $_GET['animal'];
$userId = $_SESSION["usuarioID"];

$remover = "DELETE FROM animais WHERE ID = '{$animal}' AND UsuarioID = '{$userId}'";

if (mysqli_query($connection, $remover)) {
    echo "Record deleted successfully";
 } else {
    echo "Error deleting record: " . mysqli_error($connection);
 }
 mysqli_close($connection);