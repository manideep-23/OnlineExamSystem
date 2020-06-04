<html>
<head>
<style>
body{
color:black;
}


</style>
</head>

<body>
<?php
$name=$_POST['n'];
$roll=$_POST['r'];
$secret=$_POST['hi'];
$servername="localhost";
$username="root";
$pwd="";
$dbname="pro";
$bi="";
$conn=new mysqli($servername,$username,$pwd,$dbname);
if ($conn->connect_error) {
	  die( $conn->connect_error);
      echo '<script language="javascript">';
  echo 'alert("failed to connect database")'; 
  
  echo '</script>';
  

} 
else{

    $sql = "INSERT INTO stud
    VALUES ('$name','$roll','$secret')";

$x=$conn->query($sql);
if($x == TRUE)
{
	$bi=1;	
}	
else
{
$bi=0;
}
}
?>
</body>
<script>

var  bi=<?php echo json_encode($bi,JSON_PRETTY_PRINT) ?>; 
var pass=<?php echo json_encode($secret,JSON_PRETTY_PRINT) ?>; 
var roll=<?php echo json_encode($roll,JSON_PRETTY_PRINT) ?>; 

if(bi==1)
{
	if(alert("SUCCESSFULLY Your Response has been recorded"+" Your Password is :"+pass)==null)
	{
		window.location.assign('inde.html');
		
	}
	
}
if(bi==0)
{
	if(alert("Your Response was already  recorded"+" For the RollNumber :"+roll)==null)
	{
		window.location.assign('inde.html');
		
	}
}

</script>
</html>