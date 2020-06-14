<?php
require_once('controller/control-meu-perfil.php');
get_header();
?>
<div class="container">
    <div class="flex">
        <section class="meus-animais">
            <h2>Meus animais cadastrados</h2>
            <div class="flex-wrap list_vitrine">
                <?php
                $i = 0;
                while ($registro = mysqli_fetch_assoc($animais)) {
                ?>
                    <article class="item_vitrine">
                        <a href="<?php echo get_site_url(); ?>/detalhe?id=<?php echo $registro['ID']; ?>">
                            <figure>
                                <img src="" alt="">
                            </figure>
                            <h2><?php echo $registro["Nome"]; ?></h2>
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
        </section>
    </div>
</div>
<?php
get_footer();
?>