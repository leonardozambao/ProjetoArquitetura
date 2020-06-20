<?php 
session_start();
require_once get_template_directory().'/database/Conect.php';
include get_template_directory() . '/class/Redirect.php';
$url = "http://$_SERVER[HTTP_HOST]$_SERVER[REQUEST_URI]";
$userId = $_SESSION["usuarioID"];

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
    $inserir = "INSERT INTO emergencia (Nome, Especie,Foto,UsuarioID,Descricao) ";
    $inserir .= "VALUES ('".$nome."','".$especie."','".$pathFoto."','".$userId."','".$descricao."')";

    $query = mysqli_query($connection, $inserir);
    if(!$query){
        die('erro no banco de dados, não foi possível inserir os dados');
    }
    $redirect = new Redirect();
    $redirect->RedirectToTarget('meu-perfil');
}