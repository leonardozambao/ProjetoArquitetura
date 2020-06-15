<?php 
session_start();
require_once get_template_directory().'/database/Conect.php';
include get_template_directory() . '/class/Redirect.php';
$url = "http://$_SERVER[HTTP_HOST]$_SERVER[REQUEST_URI]";
$userId = $_SESSION["usuarioID"];

if(isset($_POST["nome"])){
    $nome = $_POST["nome"];
    $especie = $_POST["especie"];
    $raca = $_POST["raca"];
    $idade = $_POST["idade"];
    $descricao = $_POST["descricao"];
    require_once get_template_directory().'/class/Upload.php';
    $uploadFoto = new Upload();
    $uploadDoc = new Upload();

    if($_FILES['foto']['error'] == '0'){
        $pathFoto = $uploadFoto->upFoto($_FILES['foto'], 'foto');
        // echo $pathFoto;
    }
    if($_FILES['documentacao']['error'] == '0'){
        $pathDocumento = $uploadDoc->upFoto($_FILES['documentacao'], 'documento');
        // echo $pathDocumento;
    }

    $inserir = "INSERT INTO animais (Nome, Especie, Raca,Idade,Foto,Documentos,UsuarioID,Descricao) ";
    $inserir .= "VALUES ('".$nome."','".$especie."','".$raca."','".$idade."','".$pathFoto."','".$pathDocumento."','".$userId."','".$descricao."')";

    $query = mysqli_query($connection, $inserir);
    if(!$query){
        die('erro no banco de dados, não foi possível inserir os dados');
    }
    $redirect = new Redirect();
    $redirect->RedirectToTarget('meu-perfil');
}