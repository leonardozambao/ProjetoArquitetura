<?php
require_once get_template_directory() . '/database/Conect.php';


$consulta = "SELECT * FROM animais LIMIT 3";
$animais = mysqli_query($connection, $consulta);
