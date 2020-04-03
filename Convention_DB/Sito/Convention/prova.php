<?php
class SlideShow {
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
<?php
  include 'connessione_DB/connessione_DB.php';
  $query = "SELECT Speech.CodiceSpeech, Speech.Titolo, Speech.Descrizione, COUNT(MN_Partecipano.MatricolaPersona) AS nPartecipanti FROM MN_Partecipano, Programma, Speech WHERE Speech.CodiceSpeech = Programma.CodiceSpeech AND Programma.CodiceProgramma = MN_Partecipano.CodiceProgramma GROUP BY Speech.CodiceSpeech ORDER BY nPartecipanti DESC";
  $risultato = $connessione->query($query);
  $listaSlideShow = array();

  while ($row = $risultato->fetch_assoc()) {
    $tmpT = $row["Titolo"];
    $tmpD = $row["Descrizione"];
    $oggetto = new SlideShow($tmpT, $tmpD);
    array_push($listaSlideShow, $oggetto);
  }
  echo $listaSlideShow[0]->getTitolo();

?>
