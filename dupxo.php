<?php


include("connect.php");

$header = $_POST['header'];
$text = $_POST['text'];
$data = date(d.m.Y);

$q = "INSERT INTO posty (header, text, date) VALUES ('$header', '$text', '$data')";

$zap = $conn->query($q);

header("Location:index.php");



?>