<?php
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
    <title><?php echo get_bloginfo( 'name' ); ?></title>

    <script src="<?php echo get_template_directory_uri(); ?>/js/jquery-3.4.1.min.js"></script>
    <script src="<?php echo get_template_directory_uri(); ?>/js/lazysizes.min.js"></script>
    <script src="<?php echo get_template_directory_uri(); ?>/js/axios.min.js"></script>
    <script src="<?php echo get_template_directory_uri(); ?>/js/vue.min.js"></script>
    <script src="<?php echo get_template_directory_uri(); ?>/js/slick.min.js"></script>
    <script src="<?php echo get_template_directory_uri(); ?>/js/chlebalize.js"></script>
    <link rel="stylesheet" href="<?php echo get_template_directory_uri(); ?>/css/style.css">

    <?php wp_head(); ?>
</head>

<body <?php echo body_class(); ?>>
    <header class="">
        <div class="header_line">
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
                    <img src="<?php echo get_template_directory_uri(); ?>/images/logo.png" alt="<?php echo get_bloginfo( 'name' ); ?>" class="header_logo">
                </a>
                <nav class="header_nav">
                    <ul class="flex-center">
                        <li><a href="<?php echo get_site_url(); ?>/doar">Doar</a></li>
                        <li><a href="<?php echo get_site_url(); ?>/adotar">Adotar</a></li>
                        <li><a href="<?php echo get_site_url(); ?>/tenho-emergencia">Tenho Emergência</a></li>
                        <li><a href="<?php echo get_site_url(); ?>/quem-somos">Quem Somos</a></li>
                        <li><a href="<?php echo get_site_url(); ?>/contato">Contato</a></li>
                    </ul>
                </nav>
                <a href="<?php echo get_site_url(); ?>/adotar" class="btn btn--green">
                    Quero Adotar
                </a>
            </div>
        </section>
    </header>
    <main>
            