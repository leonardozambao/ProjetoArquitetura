<?php 
class Animal{
    protected $nome;
    protected $especie;
    protected $raca;
    protected $idade;
    protected $cor;
    protected $foto;
    protected $documentacao;
    
    public function __construct()
    {

    }

    public function setNome($nome){
        $this->nome = $nome;
    }
    public function getNome(){
        return $this->nome;
    }

    public function setEspecie($especie){
        $this->especie = $especie;
    }
    public function getEspecie(){
        return $this->especie;
    }

    public function setRaca($raca){
        $this->raca = $raca;
    }
    public function getRaca(){
        return $this->raca;
    }

}