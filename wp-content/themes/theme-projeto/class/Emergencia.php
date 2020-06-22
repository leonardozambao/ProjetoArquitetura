<?php
class Emergencia
{
    function CadastrarEmergencia($nome, $especie, $pathFoto, $userId, $descricao)
    {
        require get_template_directory() . '/database/Conect.php';
        require get_template_directory() . '/class/Redirect.php';

        $inserir = "INSERT INTO emergencia (Nome, Especie,Foto,UsuarioID,Descricao) ";
        $inserir .= "VALUES ('" . $nome . "','" . $especie . "','" . $pathFoto . "','" . $userId . "','" . $descricao . "')";

        $query = mysqli_query($connection, $inserir);
        if (!$query) {
            die('erro no banco de dados, não foi possível inserir os dados');
        }
        $redirect = new Redirect();
        $redirect->RedirectToTarget('meu-perfil');
    }
}
