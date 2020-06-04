<?php
session_start();
$_SESSION["idfac"]=$_POST['id'];
header("location:fstore.php");
?>
