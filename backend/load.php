<?php

require "connect.php";

$pdo = new ConnectDatabase(constant("HOST"), constant("USER"), constant("PASSWORD"), constant("DATABASE"));

$myJSON = null;

if (isset($_GET['startload']) && isset($_GET['endload'])) {
    $startload = $_GET['startload'];
    $endload = $_GET['endload'];

    $stmt = $pdo->conn->prepare("SELECT * FROM news WHERE sequence > ? AND sequence <= ? ");
    
    $stmt->bindParam(1, $startload);
    $stmt->bindParam(2, $endload);
    $stmt->execute();
    $data = $stmt->fetchAll();
    
    $dataSave = [];
    
    foreach ($data as $row) {
        array_push($dataSave, ['id' => $row['id'], 'sequence' => $row['sequence'], 'title' => $row['title'],  'text' => $row['text']]);
    }
    
    $myJSON = json_encode($dataSave);
}

echo $myJSON;
?>