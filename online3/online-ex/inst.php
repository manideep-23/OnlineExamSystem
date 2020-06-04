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
.button4 {
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
$sname="localhost";
$uname="root";
$pwd="";
$dname="pro";
$conn=new mysqli($sname,$uname,$pwd,$dname);
$quest="";
$time="";
if($roll==null)
	header('location:exam.html');
$sql="select quest,time from pdf2 where sub='$sub' and fid='$id'";
$result=$conn->query($sql);

if($result->num_rows>0)
{
while($row=$result->fetch_assoc())
{
$quest=$row['quest'];
$time=$row['time'];
}
}

$_SESSION["timer"]=$time;

?>
<div id="lef"><img src="images/online.jpg"><img id="im" src="images/logo3.jpg" ></div><br>
<div id="sec">
<br>


 <pre>
<a href="logout.php"><button class="button">LOGOUT</button></a>                                                                                                                     <label>Welcome to the Exam......</label></pre>
<div id="nes">
<br>
<div id="three"><h2>Welcome to online Exam - Start Now</h2> </div>
<br>
<div id="here">
               <h2>Test Your Knowledge</h3></div><hr>
			   <div id="her">
			   <label class="l">This is a multiple system choice Quiz to test your knowledge</label><br>
			   <label class="h"><b>Number of Questions &nbsp;:&nbsp;<?php echo $quest?> </b></label><br> 
			   <label class="h"><b> Question Type&nbsp;:&nbsp;Multiple Choice</b></label><br>
			  <label class="l"> You will get <?php echo $time?> Minutes for the exam.</label> <br>
			  
			<a href="timer.php"><button name="unique" class="button4">StarTest</button></a>
   
			   </div>

</div>
</body>
</html>