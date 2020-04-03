<?php
class Speech {
    public $titolo = '';
    public $descrizione = '';

    public function __construct($titolo, $descrizione) {
      $this->titolo = $titolo;
      $this->descrizione = $descrizione;
    }
    public function getTitolo(){
      return $this->titolo;
    }
    public function getDescrizione(){
      return $this->descrizione;
    }

}

?>
