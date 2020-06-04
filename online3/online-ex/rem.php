<?php
session_start();
$roll=$_SESSION["rollid"];
$id=$_SESSION["id"];
$sub=$_SESSION["sub"];
$remid=$_GET['remid'];
$rem=$sub.$id."rem";
$qus="";
$conn=new mysqli("localhost","root","","pro");


$g=substr($remid,1,strlen($remid)-2);
$g2=substr($remid,1,strlen($remid)-1);

$lef=$g+1;
$sqlre="update $rem set q".$lef."='".$remid."'"."where id='".$roll."'";
//echo $sqlre;
//echo "<br>";
$result=$conn->query($sqlre);
//echo $result;
?>