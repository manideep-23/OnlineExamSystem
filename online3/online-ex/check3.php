<html>
<head>
<style>
</style>
</head>

<body>


<?php
session_start();
//session_unset();
unset($_SESSION["start_exam"]);
unset($_SESSION["rollid"]);
unset($_SESSION["id"]);
unset($_SESSION["sub"]);
unset($_SESSION["mar"]);
unset($_SESSION['timer']);
unset($_SESSION['start_time']);
unset($_SESSION['end_time']);



$_SESSION["rollid"]=$_POST['roll'];
$_SESSION["start_exam"]="yes";
$servername="localhost";
$username="root";
$pwd="";
$dbname="pro";
$conn=new mysqli($servername,$username,$pwd,$dbname);
if ($conn->connect_error) {
	  die( $conn->connect_error);
      echo '<script language="javascript">';
  echo 'alert("failed to connect database")'; 
  
  echo '</script>';
  

}
else
{
$roll=$_POST['roll'];
$pwd2=$_POST['pass'];
$sql = "SELECT id,pass FROM stud";

$result = $conn->query($sql);
$fil=0;


if ($result->num_rows > 0) {
    while($row = $result->fetch_assoc()) 
	
	{
		  
		
          if($row['id']==$roll and $row['pass']==$pwd2)
		  {
			  
			        $fil=1;
					break;
}
}
}
if($fil==1)
{
header("location:str.php");
}
else
	header("location:alert2.html");
}