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


		</style>
			</head>
<body>
<?php
session_start();
$id=$_SESSION["idfac"];
if($id==null)
	header('location:faculty.html');




?>
<div id="lef"><img src="images/online.jpg"><img id="im" src="images/logo3.jpg" ></div><br>
<div id="sec">
<br>
<pre>
  <a href="fstore.php"><button class="button">Upload</button></a> <a href="myexam.php"><button class="button">MyExams</button></a> <a href="log.php"><button class="button">Logout</button></a>                                                                                                         <label><b id="c">Your Id:<?php echo $id?></b></label>
</pre>


 <div id="nes">
<br>
<div id="three"><h2>Your Subjects</h2> </div>
<br>
<br>

<?php
$conn=new mysqli("localhost","root","","pro");
$sql="select * from pdf2 where fid='$id'";
$x=$conn->query($sql);
if($x->num_rows>0)
{
	echo "<table border=1  cellspacing=0 cellpadding=3 margin-top=10>";
	echo "<tr>";
	echo "<td align=center>Subject</td>";
	echo "<td align=center>Exam</td>";
	echo "<td align=center>Remove</td>";
	echo "<td align=center>Result</td>";
	echo "<td align=center>Result</td>";
	echo "</tr>";
	while($row=$x->fetch_assoc())
	{
		$q=$row['sub'];
		$st=$row['status'];
	echo "<tr>";
    echo "<td align=center>".$row['sub']."</td>";
    echo "<td align=center><input type=button size=20	onclick=perform(this.id) id=$q value=$st >";
	echo "<td align=center><input type=button size=20    onclick=remo(this.id) id=$q value=remove>";
	echo "<td align=center><input type=button size=20    onclick=result(this.id) id=$q value=view>";
	echo "<td align=center><input type=button size=20    onclick=downl(this.id) id=$q value=download>";
    echo "</tr>";	


		
	}
}

?>

</div>
<script>
var id=<?php echo json_encode($id) ?>;
function perform(y)
{
	
p=document.getElementById(y).value;


 window.location.assign("update.php?st="+p+"&id="+id+"&sub="+y); 

}
function remo(x)
{

	window.location.assign("remove.php?id="+id+"&sub="+x);
	
}
function result(r)
{
	window.location.assign("result.php?id="+id+"&sub="+r);
	
}

function downl(j)
{
	window.location.assign("download.php?id="+id+"&sub="+j);
	
}

</script>
</body>
</html>
