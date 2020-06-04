<?php
session_start();

$roll=$_SESSION["rollid"];
$id=$_SESSION["id"];
$sub=$_SESSION["sub"];
$sname="localhost";
$uname="root";
$pwd="";
$dname="pro";
$quest="";
$idq=$sub.$id."idq";
$timeleft="";
$stt="";
$conn=new mysqli($sname,$uname,$pwd,$dname);
$sql="select timeleft,sttimeleft from $idq where id='$roll'";
 $result=$conn->query($sql);
if($result->num_rows>0)
{
while($row=$result->fetch_assoc())
{
$timeleft=$row['timeleft'];
$stt=$row['sttimeleft'];
}
}

$conn=new mysqli($sname,$uname,$pwd,$dname);
$end=$timeleft;
$ftime1=date("Y-m-d H:i:s");

$p=strtotime($ftime1);
$q=strtotime($end);
$dif=$q-$p;

if($p>=$stt && $p<=$q)
{
echo gmdate("H:i:s",$dif);
}
else
	echo "exp";
?>