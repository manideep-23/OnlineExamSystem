<html>
<link rel="stylesheet" type="text/css" href="sty.css">

<link rel="stylesheet" type="text/css" href="common.css">

	<head>
		
		
		<style>
label{
font-size:1.3em;
color:black;
}
#c{
	
	color:white;
}
table {
  width: 40%;
  background:gainsboro;
  border: 1px solid #C5B798;
  margin-left:300px;
 
}
#im2{
	height:30;
	width:30;
	margin-left:20px;
}

		</style>
			</head>
<body>
<?php
session_start();
$id=$_SESSION["idfac"];
if($id==null)
	header('location:faculty.html');

$id=$_GET['id'];
$sub=$_GET['sub'];

?>
<div id="lef"><img src="images/online.jpg"><img id="im" src="images/logo3.jpg" ></div><br>
<div id="sec">
<br>
<pre>
  <a href="fstore.php"><button class="button">Upload</button></a> <a href="myexam.php"><button class="button">MyExams</button></a> <a href="log.php"><button class="button">Logout</button></a>                                                                                                         <label><b id="c">Your Id:<?php echo $id?></b></label>
</pre>


 <div id="nes">
<br>
<div id="three">
<h2>Result of <?php echo $sub; ?> </h2> </div>
<a href="myexam.php"><img src="images/goback.png" id="im2"></a>
<?php
$conn=new mysqli("localhost","root","","pro");
$mark=$sub.$id."marks";
$sql="select * from $mark";
$x=$conn->query($sql);
if($x->num_rows>0)
{
	echo "<table border=1  cellspacing=0 cellpadding=3 margin-top=10>";
	echo "<tr>";
	echo "<td align=center>Id-Number</td>";
	echo "<td align=center>Marks</td>";

	echo "</tr>";
	while($row=$x->fetch_assoc())
	{
		
	echo "<tr>";
    echo "<td align=center>".$row['id']."</td>";
    echo "<td align=center>".$row['marks']."</td>";
    echo "</tr>";	
	

		
	}
	
}

?>
</body>
</html>
