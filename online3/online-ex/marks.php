<html>
<head>

<link rel="stylesheet" type="text/css" href="sty.css">

<link rel="stylesheet" type="text/css" href="common.css">

<link rel="stylesheet" type="text/css" href="marks.css">
<STYLE>

label{
font-size:1.3em;
color:black;
}
.u{
	font-size:1.8em;
	color:white;
	
}
hr{
	margin-right:20px;
}
	#sec{
			
		height:2200px;
		background-color:navy;
		margin:0px;
		}
		#nes{

		background-color:white;
		height:2050px;
		}
		#f{
	margin-left:400px;
	
height:80%;
width:70%;
	
}
#dem2{
	margin-left:20px;
	
}
</STYLE>

</head>
<body>
<div id="lef"><img src="images/online.jpg"><img id="im" src="images/logo3.jpg" ></div><br>
<div id="sec">
<br>


 <pre>
<a href="logout.php"><button class="button">LOGOUT</button></a>                                                                                                                     <label class="u">Welcome to the Exam......</label></pre>
<div id="nes">
<br>
<div id="three"><h2>Your Result:</h2> </div>
<br>



<h3 class="d" id="cd"></h3>
<h2 id="dem2"></h2>
<div id="f"></div>
<?php
session_start();
$roll=$_SESSION['rollid'];
$id=$_SESSION["id"];
$sub=$_SESSION["sub"];

if($roll==null)
	header('location:exam.html');
$marks=$_POST['hi'];
$_SESSION["mar"]=$marks;
$sname = "localhost";
$uname = "root";
$pwd= "";
$dbname="pro";
$conn= new mysqli($sname,$uname,$pwd,$dbname);
$idq=$sub.$id."idq";
$sqlre="select * from $idq";
$result2=$conn->query($sqlre);
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} 

$tname=$sub.$id;

$sql2="select qu,op1,op2,op3,op4,ans from $tname";
$result5=$conn->query($sql2);
$op1=array(); 
$quest=array();
$ans=array();

if($result5->num_rows>0)
{
while($row=$result5->fetch_assoc())
{
	array_push($quest,$row['qu']);

array_push($op1,$row['op1']);
array_push($op1,$row['op2']);
array_push($op1,$row['op3']);
array_push($op1,$row['op4']);
array_push($ans,$row['ans']);
}
}
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







$arr=array();
$i=1;
if($result2->num_rows>0)
{
while($row=$result2->fetch_assoc())
{
	if($row['id']==$roll)
	{
  for($i=1;$i<=$qus;$i++)
array_push($arr,(int)$row['q'.$i]);
		

	}
}
}
$conn->close();
?>
<script>

var qus=<?php echo $qus?>;

var x=<?php echo json_encode($roll,JSON_PRETTY_PRINT) ?>;
var qar =<?php echo json_encode($quest,JSON_PRETTY_PRINT) ?>; 
var ran=<?php echo json_encode($arr,JSON_PRETTY_PRINT) ?>;
var optar =<?php echo json_encode($op1,JSON_PRETTY_PRINT) ?>; 
var ans2 =<?php echo json_encode($ans,JSON_PRETTY_PRINT) ?>; 
var c=<?php echo json_encode($marks,JSON_PRETTY_PRINT) ?>;
var qus=<?php echo $qus?>;
if(qus>=8)
{	
document.getElementById("sec").style.height=qus*200;
document.getElementById("nes").style.height=(qus*200)-150;
}
if(qus<8)
{
document.getElementById("sec").style.height=qus*200;
document.getElementById("nes").style.height=(qus*200)-150;
	}	
document.getElementById("cd").innerHTML="SCORE  "+c+" Out Of <?php echo $qus;?> </h2>";
var ansloc= JSON.parse(localStorage.getItem("an"));
document.getElementById("dem2").innerHTML="Roll Number :"+x;
//localStorage.removeItem("an");

var ans=[];
	for(i=0;i<qus;i++)
{
	ans[i]=ans2[ran[i]];
}
for(i=0;i<qus;i++)
{
	var ques=(i+1)+" . "+qar[ran[i]];


var x=document.createElement("h3");
var text=document.createTextNode(ques);
x.appendChild(text);
var res=document.getElementById("f");
res.appendChild(x);
var x=document.createElement("h3");
var text=document.createTextNode("You Answered:");
x.appendChild(text);
var res=document.getElementById("f");
res.appendChild(x);

if(ansloc[i]==0)
{
var x=document.createElement("h3");
var text=document.createTextNode("Wrong Answer!");
x.appendChild(text);
x.style.color="red";
var res=document.getElementById("f");
res.appendChild(x);	
	
}
else{
	var dep=ansloc[i];
	var opt=optar[(ran[i]+1)*4-4+dep-1];
	
var x=document.createElement("h3");
var text=document.createTextNode(opt);
x.appendChild(text);
var res=document.getElementById("f");
res.appendChild(x);	
	
if(ans[i]==ansloc[i])
{
var x=document.createElement("h3");
var text=document.createTextNode("Correct Answer!");
x.appendChild(text);
x.style.color="green";
var res=document.getElementById("f");
res.appendChild(x);	
}
else
{
	
var x=document.createElement("h3");
var text=document.createTextNode("Wrong Answer!");
x.appendChild(text);
x.style.color="red";
var res=document.getElementById("f");
res.appendChild(x);	
	
}
}
var y=document.createElement("hr");
res.appendChild(y);
}









</script>


</body>
</html>