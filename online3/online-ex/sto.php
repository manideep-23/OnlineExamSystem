<?php

session_start();

$roll=$_SESSION["rollid"];
$id=$_SESSION["id"];
$sub=$_SESSION["sub"];
$sname="localhost";
$uname="root";
$pwd="";
$dname="pro";
$status="";
$conn=new mysqli($sname,$uname,$pwd,$dname);
$sql="select status from pdf2 where sub='$sub' and fid='$id'";
 $result=$conn->query($sql);
if($result->num_rows>0)
{
while($row=$result->fetch_assoc())
{
$status=$row['status'];
}
}
echo $status;
 

?>