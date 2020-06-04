<?php
session_start();
$id=$_SESSION["id"];
$sub=$_SESSION["sub"];
$sname="localhost";
$uname="root";
$pwd="";
$dname="pro";
$quest="";
$tn=$sub.$id;
$conn=new mysqli($sname,$uname,$pwd,$dname);
$sql="select quest from pdf2 where fid='$id' and sub='$sub'";
    $result=$conn->query($sql);
	if($result->num_rows>0)
{
while($row=$result->fetch_assoc())
{
$quest=$row['quest'];
}
}
$sql3="select count(*) as tot from $tn";
$result3 = $conn->query($sql3); 
$tota="";
if($result3->num_rows > 0) {
                         while($row = $result3->fetch_assoc())
						 {
							$tota=$row['tot']; 
						 }
}						 
	
$roll=$_SESSION["rollid"];
$idq=$sub.$id."idq";
$min=$_SESSION['timer'];
$_SESSION['start_time']=date("Y-m-d H:i:s");

$_SESSION['end_time']=date("Y-m-d  H:i:s",strtotime('+'.$min.'minute',strtotime($_SESSION['start_time'])));
$x=$_SESSION['end_time'];
$star=$_SESSION['start_time'];
 function per($min, $max, $quantity) {
    $numbers = range($min, $max);
    shuffle($numbers);
    return array_slice($numbers, 0, $quantity);
}

$ar=per(0,$tota-1,$quest);
$idq=$sub.$id."idq";
$sq="insert into $idq values('$roll'";
for($i=0;$i<$quest;$i++)
{
	$sq=$sq.",'$ar[$i]'";
}
$sq=$sq.",'".$x."'".",'".$star."')";
//echo $sq;
 //$sq = "insert into $idq values('$roll','$ar[0]',$ar[1],$ar[2],$ar[3],$ar[4],$ar[5],$ar[6],$ar[7],$ar[8],$ar[9])"; 
$res = $conn->query($sq);	  

//$sql="update $idq set timeleft='$x' where id='$roll'";

//$x=$conn->query($sql);
$rem=$sub.$id."rem";
$sq2="insert into $rem values('$roll'";
for($i=0;$i<$quest;$i++)
{
	$sq2=$sq2.",'0'";
}
$sq2=$sq2.")";
echo $sq2;

$res = $conn->query($sq2);	  





header("location:start.php");

?>