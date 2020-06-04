<?php 
$sub=$_GET['sub'];
$id=$_GET['id'];
$st=$_GET['st'];
$conn=new mysqli("localhost","root","","pro");
if($st=="start")
{
$sql3="update pdf2 set status='stop' where fid='$id' and sub='$sub'";
$x=$conn->query($sql3);
}
if($st=="stop")
{
$sql3="update pdf2 set status='start' where fid='$id' and sub='$sub'";
$conn->query($sql3);
	}
header("location:myexam.php");
?>