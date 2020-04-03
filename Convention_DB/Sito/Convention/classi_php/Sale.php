<?php
class Sale {
    public $nome = '';
    public $capacita = '';

    public function __construct($nome, $capacita) {
      $this->nome = $nome;
      $this->capacita = $capacita;
    }
    public function getNome(){
      return $this->nome;
    }
    public function getCapacita(){
      return $this->capacita;
    }

}

?>
