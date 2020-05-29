<?php
require_once("database/Conect.php");
session_start();
$_SESSION["usuario"] = "Leonardo";
$url = "http://$_SERVER[HTTP_HOST]$_SERVER[REQUEST_URI]";

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
        include 'class/Redirect.php';
        $redirect = new Redirect();
        $redirect->RedirectToTarget('home');
    }
}

?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, user-scalable = 0, initial-scale=1.0, maximum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title><?php echo get_bloginfo('name'); ?></title>
    <link rel="stylesheet" href="<?php echo get_template_directory_uri(); ?>/css/login.css">
</head>

<body>
    <section id="login" class="login <?php if(isset($mensagem)) echo 'error'; ?>">
        <img src="<?php echo get_template_directory_uri(); ?>/images/login.jpg" class="banner">
        <div class="box_login">
            <form action="<?php echo $url; ?>" method="POST" class="flex-column">
                <img src="<?php echo get_template_directory_uri(); ?>/images/logo.png" alt="" class="logo">
                <p class="text-center">Bem vindo ao <?php echo get_bloginfo('name'); ?></p>
                <input type="email" name="usuario" id="usuario" placeholder="e-mail" required>
                <input type="password" name="senha" id="senha" placeholder="senha" required>
                <?php if(isset($mensagem)) echo '<span>Usuário não encontrado</span>'; ?>
                <input type="submit" value="Login" class="btn">
            </form>
        </div>
    </section>
</body>

</html>