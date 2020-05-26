<?php 
get_header();
?>
<section class="banner_page">
    <h1 class="title_banner">
        <?php echo get_post_meta(get_the_ID(), 'title_banner', true); ?>
    </h1>
    <?php echo get_the_post_thumbnail(); ?>
</section>

<section class="form form_doacao">
    <div class="container">
        <p class="text-center text_disclaimer">Preencha o formulário abaixo com os dados do seu pet para listar ele em nosso site</p>
        <div class="box_form" id="form_doacao">
            <label for="" class="full">
                Nome do animal
                <input type="text" name="nome" id="nome">
            </label>
            <label for="" class="full">
                Espécie:
                <select name="especie" id="especie">
                    <option value="">Selecione</option>
                    <option value="cachorro">Cachorro</option>
                    <option value="gato">Gato</option>
                    <option value="passaro">Pássaro</option>
                    <option value="coelho">Coelho</option>
                    <option value="outro">Outro</option>
                </select>
            </label>
        </div>
    </div>
</section>

<?php 
get_footer();
?>