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
.mar{
background-color:turquoise;
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
<marquee class="mar"><b>Before uploading follow certain rules <a href="rules.php">Click here</a></marquee>
<div id="three"><h2>Online Examination - Faculty Uploads</h2> </div>
<br>
<div id="ilef">
<pre>
                                    <img src="images/upload.jpg" id="imm"></img>
</pre>
</div>
<div id="irht">

<form action="insert.php" method="post" enctype="multipart/form-data">
<pre>
<label><b>  Subject Name:</b></label> <input type="text" name="sub">    <input type="file" name="f" required>

<label><b>Total Questions:</b></label><input type="text" name="qu" required>

              <label><b>Time:</b></label><input type="text" placeholder="enter time in minutes" name="time" required><br>
				  <input type="hidden" value="<?php echo $id?>" name="i">
                  <input type="submit">
			 
</pre>			 
</form>			 


</div>
</div>

</body>
</html>