<?php
require_once('controller/control-login.php');
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, user-scalable = 0, initial-scale=1.0, maximum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title><?php echo get_bloginfo('name'); ?> - Login</title>
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
                <a class="text-center sem-conta" href="<?php echo get_site_url(); ?>/cadastrar">Ainda não tenho uma conta</a>
            </form>
        </div>
    </section>
    <?php 
    if(isset($_GET['newcadastro'])){
        ?>
        <script>
            alert("Conta criada com sucesso! faça seu login");
        </script>
        <?php
    }
    ?>
</body>

</html>