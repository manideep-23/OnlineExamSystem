<html>
<head>
<style>
</style>
</head>

<body>


<?php
session_start();
$roll=$_SESSION["rollid"];
$sub=$_GET['sub'];
$id=$_GET['id'];
$_SESSION['sub']=$sub;
$_SESSION['id']=$id;
echo $id."<br>";
echo $sub;
$quest="";
$servername="localhost";
$username="root";
$pwd="";
$dbname="pro";
$conn=new mysqli($servername,$username,$pwd,$dbname);
$sql="select quest from pdf2 where fid='$id' and sub='$sub'";
    $result=$conn->query($sql);
	if($result->num_rows>0)
{
while($row=$result->fetch_assoc())
{
$quest=$row['quest'];
}
}
	
if ($conn->connect_error) {
	  die( $conn->connect_error);
      echo '<script language="javascript">';
  echo 'alert("failed to connect database")'; 
  
  echo '</script>';
  

}
else
{
	$fil=0;
	$tn=$sub.$id;
$tname=$sub.$id."marks";
$sql2 = "SELECT id FROM $tname";
$result2 = $conn->query($sql2);
$sql3="select count(*) as tot from $tn";
$result3 = $conn->query($sql3); 
$tota="";
if($result3->num_rows > 0) {
                         while($row = $result3->fetch_assoc())
						 {
							$tota=$row['tot']; 
						 }
}						 
	
if($result2->num_rows > 0) {
                         while($row = $result2->fetch_assoc()) 
	
	                                 {
										 if($row['id']==$roll )
										 {		
                                          $fil=1;									 
										
										
						

										break;
										 }
										   
									 }
					         }
							 if($fil==0)
	                        {	

       	header('location:inst.php');
							 
					 
}
if($fil==1){
	header("location:alert5.html");
}
}
?>
</body>
</html>