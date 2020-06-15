<?php
require_once get_template_directory() . '/database/Conect.php';
include get_template_directory() . '/class/Redirect.php';
session_start();

$url = "http://$_SERVER[HTTP_HOST]$_SERVER[REQUEST_URI]";
if (isset($_SESSION['usuario'])) {
    $redirect = new Redirect();
    $redirect->RedirectToHome();
}

if (isset($_POST['usuario'])) {
    $usuario = $_POST['usuario'];
    //verificar se já não existe usuario cadastrado com o email
    $verificacao = "SELECT * FROM usuario WHERE Email = '{$usuario}'";
    $acesso = mysqli_query($connection, $verificacao);
    $informacao = mysqli_fetch_assoc($acesso);
    if (!empty($informacao)) {
        $mensagem = 'já existe um usuário com este email cadastrado';
    } else {
        $nome = $_POST['nome'];
        $senha = $_POST['senha'];
        $telefone = $_POST['telefone'];
        $estado = $_POST['estado'];
        $cidade = $_POST['cidade'];
        $bairro = $_POST['bairro'];
        $rua = $_POST['rua'];

        $cadastrar = "INSERT INTO usuario (Nome, Email, Senha, Telefone, Cidade, Estado, Bairro, Rua)";
        $cadastrar .= "VALUES ('{$nome}', '{$usuario}', '{$senha}', '{$telefone}', '{$cidade}', '{$estado}', '{$bairro}', '{$rua}')";
        $query = mysqli_query($connection, $cadastrar);
        if (!$query) {
            die('erro no banco de dados, não foi possível inserir os dados');
        }
        $_SESSION["usuario"] = $informacao["Nome"];
        $_SESSION["usuarioID"] = $informacao["ID"];
        $redirect = new Redirect();
        $redirect->RedirectToHome();
    }
}
