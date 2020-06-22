<?php
get_header();
require_once('controller/control-home.php');
?>
<div class="container">
    <h1 class="title_section text-center bebas">
        <?php echo get_bloginfo('name'); ?>
    </h1>
    <section class="vitrine destaque-home" id="vitrine">
        <h2>Animais em destaque para adoção</h2>
        <div class="flex-wrap list_vitrine">
            <?php
            $i = 0;
            while ($registro = mysqli_fetch_assoc($animais)) {
            ?>
                <article class="item_vitrine">
                    <a href="<?php echo get_site_url(); ?>/detalhe?id=<?php echo $registro['ID']; ?>">
                        <figure>
                            <img src="<?php echo get_site_url() . '/' . $registro['Foto'] ?>" alt="<?php echo $registro["Nome"]; ?>">
                        </figure>
                        <h3 class="item_name"><?php echo $registro["Nome"]; ?></h3>
                    </a>
                </article>
            <?php
                $i++;
            }
            if ($i == 0) {
                echo '<h2 class="text-center">Nenhum animado encontrado com esses parâmetros</h2>';
            }
            ?>
        </div>
        <a href="<?php echo get_site_url(); ?>/adotar" class="ver-todos">Veja todos clicando aqui!</a>
    </section>

    <section class="vitrine destaque-home" id="vitrine">
        <div class="container">
            <h2>Animais em situação de emergência</h2>
            <div class="flex-wrap list_vitrine">
                <?php
                $i = 0;
                while ($registro = mysqli_fetch_assoc($animais2)) {
                ?>
                    <article class="item_vitrine">
                        <a href="<?php echo get_site_url(); ?>/detalhe?type=emergencia&id=<?php echo $registro['ID']; ?>">
                            <figure>
                                <img src="<?php echo get_site_url() . '/' . $registro['Foto'] ?>" alt="<?php echo $registro["Nome"]; ?>">
                            </figure>
                            <h3 class="item_name"><?php echo $registro["Nome"]; ?></h3>
                        </a>
                    </article>
                <?php
                    $i++;
                }
                if ($i == 0) {
                    echo '<h2 class="text-center">Nenhum animado encontrado com esses parâmetros</h2>';
                }
                ?>
            </div>
            <a href="<?php echo get_site_url(); ?>/animais-em-emergencia" class="ver-todos">Veja todos clicando aqui!</a>
        </div>
    </section>
</div>
<?php
get_footer();
?>