<?php
get_header();
require_once('controller/control-emergencia.php');
?>
<section class="banner_page">
    <h1 class="title_banner text-center">
        <?php echo get_post_meta(get_the_ID(), 'title_banner', true); ?>
    </h1>
    <?php echo get_the_post_thumbnail(); ?>
</section>

<section class="form form_doacao">
    <div class="container">
        <p class="text-center text_disclaimer">Preencha o formulário abaixo com os dados do animal que se encontra em situação de emergência para listar ele em nosso site</p>
        <?php if(isset($mensagem)) echo '<p class="sucess">' . $mensagem . '</p>'; ?>
        <form class="box_form" id="form_doacao" method="POST" action="<?php echo $url; ?>" enctype="multipart/form-data">
            <label for="" class="full">
                Nome do animal: *
                <input type="text" name="nome" id="nome" required>
            </label>
            <label for="" class="full">
                Espécie: *
                <select name="especie" id="especie" required>
                    <option value="">Selecione</option>
                    <option value="cachorro">Cachorro</option>
                    <option value="gato">Gato</option>
                    <option value="passaro">Pássaro</option>
                    <option value="coelho">Coelho</option>
                    <option value="outro">Outro</option>
                </select>
            </label>
            <label for="" class="full">
                Foto:
                <input type="file" name="foto" id="foto" accept=".png, .jpg, .jpeg, .svg, .webp">
            </label>
            <label for="" class="full">
                Descreva a emergência do seu animal:
                <textarea name="descricao" id="descricao" rows="3"></textarea>
            </label>
            <small>* campos obrigatórios</small>
            <button class="btn btn--green">Enviar</button>
        </form>
    </div>
</section>

<?php

get_footer();

?>