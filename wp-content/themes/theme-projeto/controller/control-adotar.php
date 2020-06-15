<?php
require_once get_template_directory() . '/database/Conect.php';

if (isset($_GET['filter'])) {
    $filter = $_GET['filter'];
    $consulta = "SELECT * FROM animais WHERE Especie = '" . $filter . "'";
} else {
    $consulta = "SELECT * FROM animais";
}
$animais = mysqli_query($connection, $consulta);
$filter = $_GET['filter'];
