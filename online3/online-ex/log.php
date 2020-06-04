<?php
session_start();
unset($_SESSION["idfac"]);
header("location:faculty.html");
?>