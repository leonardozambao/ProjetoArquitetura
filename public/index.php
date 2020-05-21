<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, user-scalable = 0, initial-scale=1.0, maximum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <meta property="og:url" content="" />
    <meta property="og:type" content="article" />
    <meta property="og:title" content="" />
    <meta property="og:description" content="" />
    <meta property="og:image" content="" />
    <title>Projeto Arquitetura</title>

    <script src="js/jquery-3.4.1.min.js"></script>
    <script src="js/lazysizes.min.js"></script>
    <script src="js/chlebalize.js"></script>
    <link rel="stylesheet" href="css/chlebalize.min.css">
</head>
<body>
<div class="container">
<?php

require_once("Conect/conect.php");

$consulta = "SELECT * FROM animais";
$animais = mysqli_query($conect, $consulta);
// print_r($animais);

echo "<ul>";
while($registro = mysqli_fetch_assoc($animais)){
    echo "<li><span>";
       echo $registro["Nome"];
    echo "</span></li>";
}
echo "</ul>";

mysqli_free_result($animais); //limpar dado da memória do servidor
mysqli_close($conect);

?>
</div>
</body>