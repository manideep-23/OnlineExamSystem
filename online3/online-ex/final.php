<html>
<link rel="stylesheet" type="text/css" href="sty.css">

<link rel="stylesheet" type="text/css" href="common.css">

	<head>
		
		
		<style>
label{
font-size:1.8em;
color:white;
}
#here{
	margin-left:450px;
	color:navy;
}
hr{
	margin-left:150px;
	margin-right:150px;
}
#her{
	margin-left:300px;
}
.l{
	color:black;
	font-size:1.6em;
}
.h{
	color:black;
	font-size:1.3em;
}
input[type="submit"]{
  background-color: gainsboro;
  border: none;
  color: white;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;
  color: black;
}

		</style>
			</head>
<body>
<?php
session_start();
$roll=$_SESSION["rollid"];
$id=$_SESSION["id"];
$sub=$_SESSION["sub"];


if($roll==null)
	header('location:exam.html');
unset($_SESSION["start_exam"]);

$conn=new mysqli("localhost","root","","pro");
if(isset($_POST['hi']))
$marks=$_POST['hi'];
if(isset($_SESSION['mar']))
$marks=$_SESSION['mar'];
	$mark=$sub.$id."marks";
$sql="insert into $mark values('$roll','$marks')";
if($conn -> query($sql)==TRUE)
{}
$qus="";
$sqlf="select quest from pdf2 where fid='$id' and sub='$sub'";
    $resultf=$conn->query($sqlf);
	if($resultf->num_rows>0)
{
while($row=$resultf->fetch_assoc())
{
$qus=$row['quest'];
}
}

?>
<div id="lef"><img src="images/online.jpg"><img id="im" src="images/logo3.jpg" ></div><br>
<div id="sec">
<br>
 <pre>
<a href="logout.php"><button class="button">LOGOUT</button></a>                                                                                                                     <label>Welcome to the Exam......</label></pre>
<div id="nes">
<br>
<div id="three"><h2>You are Done!</h2> </div>
<br>

			   <div id="her">
			   <label class="l">Congratulations&nbsp;You have just completed the test.</label><br>
			   <label class="h"><b>Final Score &nbsp;:&nbsp;<?php echo $marks;?><label class="h"><b>/</b></label><?php echo $qus?></b></label><br><br>

<form name="my" method="post" action="marks.php">
<input type="hidden" name="hi" id="hi" value="<?php echo $marks;?>">
<input type="submit" value="View Your Answers">
</form>

		
   
			   </div>

</div>

</body>
</html>