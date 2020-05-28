<?php
get_header();

require_once("database/Conect.php");
$filter = '';
$filter = $_GET['filter'];
if ($filter != '') {
    $consulta = "SELECT * FROM animais WHERE Espécie = '" . $filter . "'";
} else {
    $consulta = "SELECT * FROM animais";
}
$animais = mysqli_query($connection, $consulta);
$filter = $_GET['filter'];
$postUrl = "http://$_SERVER[HTTP_HOST]$_SERVER[REQUEST_URI]";

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
                <div class="custom_select" :class="expandido ? '' : 'expanded'" :title="expandido ? 'Clique para mostrar mais' : ''" v-on:click="toggleFilter">
                    <a href="" class="act">Todos</a>
                </div>
            </div>
        </div>
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
    </div>
</section>

<script>
    var vitrine = new Vue({
        el: '#vitrine',
        data: {
            posts: [],
            expandido: true,
        },
        methods: {
            toggleFilter() {
                this.expandido = !this.expandido;
            }
        },

    })
</script>

<?php
get_footer();
?>