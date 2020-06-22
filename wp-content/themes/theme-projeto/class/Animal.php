<?php
class Animal
{
    function CadastraAnimal($nome, $especie, $raca, $idade, $descricao, $pathFoto, $pathDocumento, $userId)
    {
        require get_template_directory() . '/database/Conect.php';
        require get_template_directory() . '/class/Redirect.php';

        $inserir = "INSERT INTO animais (Nome,Especie,Raca,Idade,Descricao,Foto,Documentos,UsuarioID) ";
        $inserir .= "VALUES ('" . $nome . "','" . $especie . "','" . $raca . "','" . $idade . "','" . $descricao . "','" . $pathFoto . "','" . $pathDocumento . "','" . $userId . "')";

        $query = mysqli_query($connection, $inserir);
        if (!$query) {
            die('erro no banco de dados, não foi possível inserir os dados');
        }
        $redirect = new Redirect();
        $redirect->RedirectToTarget('meu-perfil');
    }
}
?>