<?php
require_once('controller/control-header.php');
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, user-scalable = 0, initial-scale=1.0, maximum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <meta property="og:url" content="" />
    <meta property="og:type" content="article" />
    <meta property="og:title" content="" />
    <meta property="og:description" content="" />
    <meta property="og:image" content="" />
    <title><?php echo get_bloginfo('name'); ?></title>

    <script src="<?php echo get_template_directory_uri(); ?>/js/jquery-3.4.1.min.js"></script>
    <script src="<?php echo get_template_directory_uri(); ?>/js/lazysizes.min.js"></script>
    <script src="<?php echo get_template_directory_uri(); ?>/js/axios.min.js"></script>
    <script src="<?php echo get_template_directory_uri(); ?>/js/vue.min.js"></script>
    <script src="<?php echo get_template_directory_uri(); ?>/js/slick.min.js"></script>
    <script src="<?php echo get_template_directory_uri(); ?>/js/chlebalize.js"></script>
    <link rel="stylesheet" href="<?php echo get_template_directory_uri(); ?>/css/style.css">

    <?php ?>
</head>

<body <?php echo body_class(); ?>>
    <header class="">
        <div class="header_line only-desktop">
            <div class="container flex-between">
                <a href="">
                    <img src="<?php echo get_template_directory_uri(); ?>/images/ico-email.svg" alt="E-mail">
                    loremipsum@live.com
                </a>
                <a href="">
                    <img src="<?php echo get_template_directory_uri(); ?>/images/ico-tel.svg" alt="Telefone">
                    (11) 4002-8922
                </a>
            </div>
        </div>
        <section class="header_main">
            <div class="container flex-between flex-align-center">
                <a href="<?php echo get_site_url(); ?>">
                    <img src="<?php echo get_template_directory_uri(); ?>/images/logo.png" alt="<?php echo get_bloginfo('name'); ?>" class="header_logo">
                </a>
                <nav class="header_nav only-desktop">
                    <ul class="flex-center">
                        <li><a href="<?php echo get_site_url(); ?>/doar">Doar</a></li>
                        <li><a href="<?php echo get_site_url(); ?>/adotar">Adotar</a></li>
                        <li><a href="<?php echo get_site_url(); ?>/emergencia">Tenho Emergência</a></li>
                        <li><a href="<?php echo get_site_url(); ?>/animais-em-emergencia">Ver animais em emergência</a></li>
                    </ul>
                </nav>
                <div class="flex-column flex-align-center only-desktop user">
                    <a href="<?php echo get_site_url(); ?>/meu-perfil" class="btn btn--green" title="Visualizar meu perfil">
                        Olá, <?php echo $primeiroNome[0]; ?>
                    </a>
                    <a href="javascript:void(0);" onclick="logout();" class="logout_link">Logout</a>
                </div>
                <a href="javascript:void(0);" class="menu-button only-mobile">
                    <span></span>
                    <span></span>
                    <span></span>
                </a>
            </div>
        </section>
    </header>
    <?php if(!is_page('home')){ ?>
    <section class="breadcrumb">
        <div class="container">
            <ul class="flex">
                <li><a href="<?php echo get_site_url(); ?>">Home</a></li>
                <li>></li>
                <li><?php echo get_the_title(); ?></li>
            </ul>
        </div>
    </section>
    <?php } ?>
    <script>
        function logout() {
            $.ajax({
                url: "<?php echo get_template_directory_uri(); ?>/controller/control-logout.php",
            }).done(function() {
                console.log('deslogou');
                location.reload();
            });
        }
    </script>
    <main>