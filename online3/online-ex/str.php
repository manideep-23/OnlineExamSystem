<html>
<link rel="stylesheet" type="text/css" href="sty.css">

<link rel="stylesheet" type="text/css" href="common.css">

	<head>
		
		
		<style>
label{
font-size:1.8em;
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
$roll=$_SESSION["rollid"];
if($roll==null)
header('location:exam.html');

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
<div id="hh"></div>
<script>
setInterval(doo,600);
function doo(){
	
	
	var xmlhttp=new XMLHttpRequest();
	xmlhttp.open("GET","table.php",true);
	xmlhttp.send(null);
	xmlhttp.onreadystatechange = function() {
      if (this.readyState == 4 && this.status == 200) {
	
        
        document.getElementById("hh").innerHTML = this.responseText;

    };

	
	}
}

</script
</div>
</body>
</html>