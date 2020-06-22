<?php
session_start();
require_once get_template_directory() . '/class/Animal.php';
require_once get_template_directory() . '/class/Upload.php';
$animal = new Animal();
$url = "http://$_SERVER[HTTP_HOST]$_SERVER[REQUEST_URI]";
$userId = $_SESSION["usuarioID"];

if (isset($_POST["nome"])) {
    $pathDocumento = '';
    $pathFoto = '';
    $nome = $_POST["nome"];
    $especie = $_POST["especie"];
    $raca = $_POST["raca"];
    $idade = $_POST["idade"];
    $descricao = $_POST["descricao"];
    $uploadFoto = new Upload();
    $uploadDoc = new Upload();

    if ($_FILES['foto']['error'] == '0') {
        $pathFoto = $uploadFoto->upFoto($_FILES['foto'], 'foto');
    }
    if ($_FILES['documentacao']['error'] == '0') {
        $pathDocumento = $uploadDoc->upFoto($_FILES['documentacao'], 'documento');
    }

    $animal->CadastraAnimal($nome, $especie, $raca, $idade, $descricao, $pathFoto, $pathDocumento, $userId);
}
