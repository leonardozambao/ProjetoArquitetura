<?php
require_once("database/Conect.php");
$url = "http://$_SERVER[HTTP_HOST]$_SERVER[REQUEST_URI]";
session_start();
$userId = $_SESSION["usuarioID"];

if(isset($_POST["nome"])){
    $nome = $_POST["nome"];
    $especie = $_POST["especie"];
    $raca = $_POST["raca"];
    $idade = $_POST["idade"];
    $cor = $_POST["cor"];
    $foto = $_POST["foto"];
    $documentos = $_POST["documentacao"];

    print_r($_POST);

    $inserir = "INSERT INTO animais (Nome, Especie, Raca,Cor,Idade,Foto,Documentos,UsuarioID) ";
    $inserir .= "VALUES ('".$nome."','".$especie."','".$raca."','".$cor."','".$idade."','".$foto."','".$documentos."','".$userId."')";

    $query = mysqli_query($connection, $inserir);
    if(!$query){
        die('erro no banco de dados, não foi possível inserir os dados');
    }
}


get_header();
?>
<section class="banner_page">
    <h1 class="title_banner text-center">
        <?php echo get_post_meta(get_the_ID(), 'title_banner', true); ?>
    </h1>
    <?php echo get_the_post_thumbnail(); ?>
</section>

<section class="form form_doacao">
    <div class="container">
        <p class="text-center text_disclaimer">Preencha o formulário abaixo com os dados do seu pet para listar ele em nosso site</p>
        <form class="box_form" id="form_doacao" method="POST" action="<?php echo $url; ?>">
            <label for="" class="full">
                Nome do animal: *
                <input type="text" name="nome" id="nome">
            </label>
            <label for="" class="full">
                Espécie: *
                <select name="especie" id="especie">
                    <option value="">Selecione</option>
                    <option value="cachorro">Cachorro</option>
                    <option value="gato">Gato</option>
                    <option value="passaro">Pássaro</option>
                    <option value="coelho">Coelho</option>
                    <option value="outro">Outro</option>
                </select>
            </label>
            <label for="" class="full">
                Raça:
                <input type="text" name="raca" id="raca">
            </label>
            <label for="" class="full">
                Idade:
                <input type="number" name="idade" id="idade" min="0" max="150">
            </label>
            <label for="" class="full">
                Cor:
                <input type="text" name="cor" id="cor">
            </label>
            <label for="" class="full">
                Foto:
                <input type="file" name="foto" id="foto" accept=".png, .jpg, .jpeg, .svg, .pdf">
            </label>
            <label for="" class="full">
                Documentação:
                <input type="file" name="documentacao" id="documentacao" accept=".png, .jpg, .jpeg, .svg, .pdf">
            </label>
            <small>* campos obrigatórios</small>
            <button class="btn btn--green">Enviar</button>
        </form>
    </div>
</section>

<?php


get_footer();
?>