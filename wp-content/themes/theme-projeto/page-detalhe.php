<?php
get_header();

require_once("database/Conect.php");
if (isset($_GET['id'])) {
    $animalId = $_GET['id'];
    $consulta = "SELECT * FROM animais WHERE ID = '" . $animalId . "'";
    $animais = mysqli_query($connection, $consulta);
} else {
    Header("Location: index.php");
}
$postUrl = "http://$_SERVER[HTTP_HOST]$_SERVER[REQUEST_URI]";

?>

<section class="detalhe" id="detalhe">
    <div class="container">
        <?php
        while ($registro = mysqli_fetch_assoc($animais)) {
        ?>
            <article>
                <h1><?php echo $registro["Nome"]; ?></h1>
            </article>
        <?php } ?>
    </div>
</section>

<?php
get_footer();
?>