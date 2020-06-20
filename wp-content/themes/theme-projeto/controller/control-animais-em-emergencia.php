<?php
require_once get_template_directory() . '/database/Conect.php';

if (isset($_GET['filter'])) {
    $filter = $_GET['filter'];
    $consulta = "SELECT * FROM emergencia WHERE Especie = '" . $filter . "'";
} else {
    $consulta = "SELECT * FROM emergencia";
}
$animais = mysqli_query($connection, $consulta);
$filter = $_GET['filter'];
