<?php
session_start();
if (!isset($_SESSION["usuario"])) {
    include get_template_directory().'/class/Redirect.php';
    $redirect = new Redirect();
    $redirect->RedirectToTarget('login');
} else {
    $userNome = $_SESSION["usuario"];
    $primeiroNome = explode(" ", $userNome);
    $userId = $_SESSION["usuarioID"];
}
?>