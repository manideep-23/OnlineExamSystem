<?php
session_start();
unset($_SESSION["start_exam"]);
unset($_SESSION["rollid"]);
unset($_SESSION["id"]);
unset($_SESSION["sub"]);
unset($_SESSION["mar"]);
unset($_SESSION['timer']);
unset($_SESSION['start_time']);
unset($_SESSION['end_time']);


header("location:exam.html");
?>