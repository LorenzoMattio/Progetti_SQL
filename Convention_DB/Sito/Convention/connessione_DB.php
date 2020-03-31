<?php

$host = "localhost";

// username dell'utente in connessione
$user = "root";

// password dell'utente
$password = "";

// db scelto
$db = "Convention";

// connessione al DB
$connessione = new mysqli($host, $user, $password, $db);

// verifica su eventuali errori di connessione
if ($connessione->connect_error) {
    echo "Connessione fallita: ". $connessione->connect_error . ".";
}

$connessione->query("SET NAMES 'utf8'");

?>
