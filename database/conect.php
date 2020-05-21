<?php
$conect = mysqli_connect(
    "localhost", //host
    "root", //user
    "",  //password
    "db_projetoarquitetura" //nome do banco
);

if(mysqli_connect_errno()){
    die("Conexão falhou: ".mysqli_connect_errno());
}