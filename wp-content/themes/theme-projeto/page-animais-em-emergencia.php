<?php
get_header();
require_once('controller/control-animais-em-emergencia.php');
?>
<section class="banner_page">
    <h1 class="title_banner text-center">
        <?php echo get_post_meta(get_the_ID(), 'title_banner', true); ?>
    </h1>
    <?php echo get_the_post_thumbnail(); ?>
</section>
<section class="vitrine" id="vitrine">
    <div class="container">
        <div class="">
            <div class="filter flex-column">
                <span>Ou filtre por categoria</span>
                <div class="flex">
                    <a href="<?php echo get_site_url().'/animais-em-emergencia' ?>" class="act">Todos</a>
                    <a href="<?php echo get_site_url().'/animais-em-emergencia?filter=cachorro' ?>" class="act">Cachorros</a>
                    <a href="<?php echo get_site_url().'/animais-em-emergencia?filter=gato' ?>" class="act">Gatos</a>
                    <a href="<?php echo get_site_url().'/animais-em-emergencia?filter=passaro' ?>" class="act">Pássaros</a>
                    <a href="<?php echo get_site_url().'/animais-em-emergencia?filter=coelho' ?>" class="act">Coelhos</a>
                    <a href="<?php echo get_site_url().'/animais-em-emergencia?filter=outro' ?>" class="act">Outros</a>
                </div>
            </div>
        </div>
        <div class="flex-wrap list_vitrine">
            <?php
            $i = 0;
            while ($registro = mysqli_fetch_assoc($animais)) {
            ?>
                <article class="item_vitrine">
                    <a href="<?php echo get_site_url(); ?>/detalhe?type=emergencia&id=<?php echo $registro['ID']; ?>">
                        <figure>
                            <img src="<?php echo get_site_url() . '/' . $registro['Foto'] ?>" alt="">
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
    </div>
</section>

<?php
get_footer();
?>