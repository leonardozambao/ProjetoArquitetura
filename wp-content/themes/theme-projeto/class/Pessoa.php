<?php
class Pessoa
{
    function CadastrarUsuario($nome, $usuario, $senha, $redeSocial, $telefone, $estado, $cidade, $bairro, $rua)
    {
        require get_template_directory() . '/database/Conect.php';
        require get_template_directory() . '/class/Redirect.php';
        $cadastrar = "INSERT INTO usuario (Nome, Email, Senha, RedeSocial,Telefone, Cidade, Estado, Bairro, Rua)";
        $cadastrar .= "VALUES ('{$nome}', '{$usuario}', '{$senha}', '{$redeSocial}', '{$telefone}', '{$cidade}', '{$estado}', '{$bairro}', '{$rua}')";
        $query = mysqli_query($connection, $cadastrar);
        if (!$query) {
            die('erro no banco de dados, não foi possível inserir os dados');
        } else {
            $redirect = new Redirect();
            $redirect->RedirectToTarget('login?newcadastro=true');
        }
    }
}
