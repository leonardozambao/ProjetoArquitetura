<?php
require_once get_template_directory() . '/database/Conect.php';
if (isset($_GET['id'])) {
    $animalId = $_GET['id'];
    $consulta = "SELECT * FROM animais WHERE ID = '" . $animalId . "'";
    $animais = mysqli_query($connection, $consulta);
    $registro = mysqli_fetch_assoc($animais);

    $donoId = $registro['UsuarioID'];
    $consultaDono = "SELECT * FROM usuario WHERE ID = '" . $donoId . "'";
    $usuario = mysqli_query($connection, $consultaDono);
    $registroDono = mysqli_fetch_assoc($usuario);
    
} else {
    include get_template_directory() . '/class/Redirect.php';
    $redirect = new Redirect();
    $redirect->RedirectToHome();
}
