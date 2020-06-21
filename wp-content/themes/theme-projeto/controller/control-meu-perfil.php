<?php
session_start();
$userId = $_SESSION["usuarioID"];
$nome = $_SESSION["usuario"];

require_once get_template_directory() . '/database/Conect.php';
$consulta = "SELECT * FROM animais WHERE UsuarioID = '" . $userId . "'";
$animais = mysqli_query($connection, $consulta);

$consulta2 = "SELECT * FROM emergencia WHERE UsuarioID = '" . $userId . "'";
$animais2 = mysqli_query($connection, $consulta2);

$url = "http://$_SERVER[HTTP_HOST]$_SERVER[REQUEST_URI]";

if (isset($_POST['nome'])) {
    $usuario = $_POST['usuario'];
    $nome = $_POST['nome'];
    $senha = $_POST['senha'];
    $redeSocial = $_POST['rede-social'];
    $telefone = $_POST['telefone'];
    $estado = $_POST['estado'];
    $cidade = $_POST['cidade'];
    $bairro = $_POST['bairro'];
    $rua = $_POST['rua'];
    //verificar se já não existe usuario cadastrado com o email
    $verificacao = "SELECT * FROM usuario WHERE Email = '{$usuario}'";
    $acesso = mysqli_query($connection, $verificacao);
    $informacao = mysqli_fetch_assoc($acesso);
    if (empty($informacao) || $informacao["ID"] == $userId) {
        $alterar = "UPDATE usuario SET Nome='{$nome}', Email='{$usuario}',Senha='{$senha}',RedeSocial='{$redeSocial}',Telefone='{$telefone}',Estado='{$estado}',Cidade='{$cidade}',Bairro='{$bairro}',Rua='{$rua}' WHERE ID = '{$userId}'";
        $query = mysqli_query($connection, $alterar);
        $_SESSION["usuario"] = $nome;
        $_SESSION["email"] = $usuario;
        $_SESSION["senha"] = $senha;
        $_SESSION["rede-social"] = $redeSocial;
        $_SESSION["telefone"] = $telefone;
        $_SESSION["estado"] = $estado;
        $_SESSION["cidade"] = $cidade;
        $_SESSION["bairro"] = $bairro;
        $_SESSION["rua"] = $rua;
    } else {
        $mensagem = 'já existe um usuário com este email cadastrado';
    }
}
