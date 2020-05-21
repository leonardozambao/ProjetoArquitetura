
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