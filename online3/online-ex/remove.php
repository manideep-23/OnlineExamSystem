<?php
$conn=new mysqli("localhost","root","","pro");
$id=$_GET['id'];
$sub=$_GET['sub'];
$t1=$sub.$id;
$t2=$sub.$id."idq";
$t3=$sub.$id."marks";
$t4=$sub.$id."rem";
$sql1="drop table $t1";
$sql2="drop table $t2";
$sql3="drop table $t3";
$sql4="drop table $t4";

$x=$conn->query($sql1);
$y=$conn->query($sql2);
$z=$conn->query($sql3);
$r=$conn->query($sql4);
$sql4="delete from  pdf2 where sub='$sub' and fid='$id'";
$p=$conn->query($sql4);
header("location:myexam.php");
?>