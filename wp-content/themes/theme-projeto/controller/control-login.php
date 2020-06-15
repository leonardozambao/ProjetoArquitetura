<?php 

require_once get_template_directory().'/database/Conect.php';
include get_template_directory().'/class/Redirect.php';
session_start();

$url = "http://$_SERVER[HTTP_HOST]$_SERVER[REQUEST_URI]";
if(isset($_SESSION['usuario'])){
    $redirect = new Redirect();
    $redirect->RedirectToHome();
}

if (isset($_POST['usuario'])) {
    $usuario = $_POST['usuario'];
    $senha = $_POST['senha'];

    $login = "SELECT * FROM usuario WHERE Email = '{$usuario}' AND Senha = '{$senha}'";
    $acesso = mysqli_query($connection, $login);
    if (!$acesso) {
        die('Algo de errado não está certo');
    }
    $informacao = mysqli_fetch_assoc($acesso);
    if (empty($informacao)) {
        $mensagem = "Login falhou, nenhum usuario encontrado";
    } else {
        $_SESSION["usuario"] = $informacao["Nome"];
        $_SESSION["usuarioID"] = $informacao["ID"];
        $_SESSION["email"] = $informacao["Email"];
        $_SESSION["senha"] = $informacao["Senha"];
        $_SESSION["telefone"] = $informacao["Telefone"];
        $_SESSION["estado"] = $informacao["Estado"];
        $_SESSION["cidade"] = $informacao["Cidade"];
        $_SESSION["bairro"] = $informacao["Bairro"];
        $_SESSION["rua"] = $informacao["Rua"];
        $redirect = new Redirect();
        $redirect->RedirectToHome();
    }
}