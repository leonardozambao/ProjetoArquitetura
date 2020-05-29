<?php 
session_start();
unset($_SESSION["usuario"]);
unset($_SESSION["usuarioID"]);

include 'class/Redirect.php';
$redirect = new Redirect();
$redirect->RedirectToTarget('login');