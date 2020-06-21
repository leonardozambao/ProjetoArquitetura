<?php
require_once get_template_directory() . '/database/Conect.php';
if (isset($_GET['id'])) {
    $type ='animais';
    if(isset($_GET['type'])) $type = 'emergencia';
    
    $animalId = $_GET['id'];
    $consulta = "SELECT * FROM ".$type." WHERE ID = '" . $animalId . "'";
    $animais = mysqli_query($connection, $consulta);
    $registro = mysqli_fetch_assoc($animais);

    $donoId = $registro['UsuarioID'];
    $consultaDono = "SELECT * FROM usuario WHERE ID = '" . $donoId . "'";
    $usuario = mysqli_query($connection, $consultaDono);
    $registroDono = mysqli_fetch_assoc($usuario);

    $numeroLimpo = $registroDono["Telefone"];
    $numeroLimpo = str_replace("(","", $numeroLimpo);
    $numeroLimpo = str_replace(")","", $numeroLimpo);
    $numeroLimpo = str_replace("-","", $numeroLimpo);
    $numeroLimpo = str_replace(" ","", $numeroLimpo);
    
} else {
    include get_template_directory() . '/class/Redirect.php';
    $redirect = new Redirect();
    $redirect->RedirectToHome();
}
