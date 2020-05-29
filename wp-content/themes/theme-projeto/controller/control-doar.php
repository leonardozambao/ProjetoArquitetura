<?php 
require_once get_template_directory().'/database/Conect.php';
$url = "http://$_SERVER[HTTP_HOST]$_SERVER[REQUEST_URI]";
session_start();
$userId = $_SESSION["usuarioID"];

if(isset($_POST["nome"])){
    $nome = $_POST["nome"];
    $especie = $_POST["especie"];
    $raca = $_POST["raca"];
    $idade = $_POST["idade"];
    $cor = $_POST["cor"];
    $foto = $_POST["foto"];
    $documentos = $_POST["documentacao"];

    print_r($_POST);

    $inserir = "INSERT INTO animais (Nome, Especie, Raca,Cor,Idade,Foto,Documentos,UsuarioID) ";
    $inserir .= "VALUES ('".$nome."','".$especie."','".$raca."','".$cor."','".$idade."','".$foto."','".$documentos."','".$userId."')";

    $query = mysqli_query($connection, $inserir);
    if(!$query){
        die('erro no banco de dados, não foi possível inserir os dados');
    }
}