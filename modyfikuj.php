<?php


include("connect.php");

$header = $_POST['header'];
$text = $_POST['text'];
$id = $_POST['id'];


$q = "UPDATE posty SET header = '$header', text = '$text' WHERE id = '$id'";

$zap = $conn->query($q);

header("Location:index.php");



?>