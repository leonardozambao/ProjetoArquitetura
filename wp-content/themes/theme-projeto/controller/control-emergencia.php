<?php 
session_start();
require get_template_directory().'/class/Emergencia.php';
$url = "http://$_SERVER[HTTP_HOST]$_SERVER[REQUEST_URI]";
$userId = $_SESSION["usuarioID"];
$emergencia = new Emergencia();

if(isset($_POST["nome"])){
    $nome = $_POST["nome"];
    $especie = $_POST["especie"];
    $descricao = $_POST["descricao"];
    require_once get_template_directory().'/class/Upload.php';
    $uploadFoto = new Upload();

    if($_FILES['foto']['error'] == '0'){
        $pathFoto = $uploadFoto->upFoto($_FILES['foto'], 'foto');
        // echo $pathFoto;
    }
    $emergencia->CadastrarEmergencia($nome, $especie, $pathFoto, $userId, $descricao);
}