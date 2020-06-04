<?php

$sub=$_POST['sub'];
$c=0;
$msg="";
$id=$_POST['i'];
$time=$_POST['time'];
$ques=$_POST['qu'];
if($_FILES["f"]["error"]==0)
{

$filename = $_FILES["f"]["name"];
$tempname = $_FILES["f"]["tmp_name"];
$folder = "Inner/".$filename;
$total="C:/xam/htdocs/online3/online-ex/".$folder;
move_uploaded_file($tempname,$folder);
$conn=new mysqli("localhost","root","","pro");
$tname=$sub.$id;
$tmk=$sub.$id."marks";
$idq=$sub.$id."idq";
$rem=$sub.$id."rem";
$sql="create table $tname(qu text(200),op1 text(200),op2 text(200),op3 text(200),op4 text(200),ans text(200))" ;
$conn->query($sql);
$sql3="create table $tmk(id varchar(10) primary key,marks int(3))" ;
$conn->query($sql3);
$sql5="create table $rem(id varchar(10) primary key)" ;
$conn->query($sql5);

$sql4="create table $idq(id varchar(10) primary key)" ;
$conn->query($sql4);

for($i=1;$i<=$ques;$i++)
{
	$q="q".$i;
	
	$sql="ALTER TABLE $idq ADD $q INT(5)";
    $x=$conn->query($sql);
	
}
	$sql="ALTER TABLE $idq ADD timeleft datetime";
    $x=$conn->query($sql);

	$sql="ALTER TABLE $idq ADD sttimeleft datetime";
    $x=$conn->query($sql);

for($i=1;$i<=$ques;$i++)
{
	$q="q".$i;
	
	$sql="ALTER TABLE $rem ADD $q text";
    $x=$conn->query($sql);
	
}

$sql2="LOAD DATA INFILE '$total' 
INTO TABLE $tname FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' 
(qu,op1,op2,op3,op4,ans)" ;
$ress=$conn->query($sql2);
$sql3="insert into pdf2 values('$sub','$id','start','$ques','$time')";
$conn->query($sql3);
$c=1;
//echo $ress;
}
else
{
	echo "Data Not  inserted Sucessfully";
}
if($c==1)
	header("location:alert3.html");
else
	header("location:alert4.html");
?>