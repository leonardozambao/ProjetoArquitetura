<?php 
class Pessoa{
    protected $nome;
    const ESPECIE = "Humano";

    public function __construct($tmpNome)
    {
        $this->nome = $tmpNome;
    }

    public function setNome($novoNome){
        $this->nome = $novoNome;
    }

    public function getNome(){
        return $this->nome;
    }
}