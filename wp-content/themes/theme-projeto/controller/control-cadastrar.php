<?php
session_start();
require get_template_directory() . '/class/Pessoa.php';
require get_template_directory() . '/database/Conect.php';
$pessoa = new Pessoa();

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
        $redeSocial = $_POST['rede-social'];
        $telefone = $_POST['telefone'];
        $estado = $_POST['estado'];
        $cidade = $_POST['cidade'];
        $bairro = $_POST['bairro'];
        $rua = $_POST['rua'];

       $pessoa->CadastrarUsuario($nome,$usuario,$senha,$redeSocial,$telefone,$estado,$cidade,$bairro,$rua);
    }
}
