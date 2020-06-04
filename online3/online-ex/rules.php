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
li{
font-size:1.4em;
	
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

?>
<div id="lef"><img src="images/online.jpg"><img id="im" src="images/logo3.jpg" ></div><br>
<div id="sec">
<br>
<pre>
  <a href="fstore.php"><button class="button">Upload</button></a> <a href="myexam.php"><button class="button">MyExams</button></a> <a href="log.php"><button class="button">Logout</button></a>                                                                                                         <label><b id="c">Your Id:<?php echo $id?></b></label>
</pre>


 <div id="nes"><br>
<div id="three"><h2>Rules for the Faculty </h2> </div>
<a href="fstore.php"><img src="images/goback.png" id="im2"></a>
<br>
<ul>
<li>It must be a text file(.txt)</li>
<li>Each line in the text file should consists of question and \t as delimiter  followed by 4 options with the same \t delimiter ,followed by answer(expressed in integer)</li> 
<li>Maximum of 300 question are allowed</li>
<li>Eliminate the blank lines before uploading</li>
</ul>
</div>
</div>
</body>
</html>
