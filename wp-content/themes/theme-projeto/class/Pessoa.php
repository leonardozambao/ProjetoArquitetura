<?php 
class Pessoa{
    protected $nome;
    protected $cpf;
    protected $email;
    protected $cep;
    protected $cidade;
    protected $estado;
    protected $bairro;
    protected $rua;
    protected $senha;
    protected $telefone;

    public function __construct()
    {
    }

    public function setNome($novoNome){
        $this->nome = $novoNome;
    }

    public function getNome(){
        return $this->nome;
    }
}  