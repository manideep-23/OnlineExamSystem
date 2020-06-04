
<html>
<head>
<link rel="stylesheet" type="text/css" href="sty.css">

<link rel="stylesheet" type="text/css" href="common.css">

<link rel="stylesheet" type="text/css" href="start.css">
<style>

body{                                                             
background-repeat:no-repeat;
background-attachment:fixed;
}
label{
font-size:1.3em;
color:black;
}
.u{
	font-size:1.8em;
	color:white;
	
}

		#sec{
			
		height:1700px;
		background-color:navy;
		margin:0px;
		}
		#nes{

		background-color:white;
		height:1550px;
		}
		
#f{  
height:80%;
width:80%;
margin-left:400px;

}
#di{
	margin-left:15px;
	
}
@import url('https://fonts.googleapis.com/css?family=Lato');

#nes,body{
  height: 100%;
  background: #222222;
	font-family: 'Lato', sans-serif;
}

.container{
  display: block;
  position: relative;
  margin: 40px auto;
  height: auto;
  width: 500px;
  padding: 20px;
}

h2 {
	color: #AAAAAA;
}

.container ul{
  list-style: none;
  margin: 0;
  padding: 0;
	overflow: auto;
}

ul li{
  color: #AAAAAA;
  display: block;
  position: relative;
  float: left;
  width: 100%;
  height: 100px;
	border-bottom: 1px solid #333;
}

ul li input[type=radio]{
  position: absolute;
  visibility: hidden;
}

ul li label{
  display: block;
  position: relative;
  font-weight: 300;
  font-size: 1.35em;
  padding: 25px 25px 25px 80px;
  margin: 10px auto;
  height: 30px;
  z-index: 9;
  cursor: pointer;
  -webkit-transition: all 0.25s linear;
}

ul li:hover label{
	color: #FFFFFF;
}

ul li .check{
  display: block;
  position: absolute;
  border: 5px solid #AAAAAA;
  border-radius: 100%;
  height: 25px;
  width: 25px;
  top: 30px;
  left: 20px;
	z-index: 5;
	transition: border .25s linear;
	-webkit-transition: border .25s linear;
}

ul li:hover .check {
  border: 5px solid #FFFFFF;
}

ul li .check::before {
  display: block;
  position: absolute;
	content: '';
  border-radius: 100%;
  height: 15px;
  width: 15px;
  top: 5px;
	left: 5px;
  margin: auto;
	transition: background 0.25s linear;
	-webkit-transition: background 0.25s linear;
}

input[type=radio]:checked ~ .check {
  border: 5px solid #0DFF92;
}

input[type=radio]:checked ~ .check::before{
  background: #0DFF92;
}

input[type=radio]:checked ~ label{
  color: #0DFF92;
}



</style>
</head>
<body>
<div id="lef"><img src="images/online.jpg"><img id="im" src="images/logo3.jpg" ></div><br>
<div id="sec">
<br>


 <pre>
<a href="logout.php"><button class="button">LOGOUT</button></a>                                                                                                                     <label class="u">Welcome to the Exam......</label></pre>
<div id="nes">
<br>
<div id="three"><h2>Welcome to online Exam</h2> </div>
<br>

<center><h1>Each Question  Carry Single mark(NO NEGATIVE MARKS)</h1>
<div id="txt"><span id="timerr"></span></div></center>
<div id="di">
<h3 id="dem1"></h3>
<h3 id="dem2"></h3>
<h3 id="dem3"></h3>
<h3 id="dem4"></h3>
</div>
<form id="fd" name="fr" >

<div class="container" id="f">
</div>
<input type="hidden" id="hid" name="hid">
</form>

<form id="f2" name="fr2" method="post" action="final.php"  onsubmit="return count()">
<input type="hidden" id="hi" name="hi">
<br><br>
<input type="submit" id="k"> 
</form>
</div>
</div>
<?php
session_start();
$roll=$_SESSION["rollid"];
$id=$_SESSION["id"];
$sub=$_SESSION["sub"];
$start_eaxm=$_SESSION["start_exam"];
if($start_eaxm==null)
{
session_unset();
header("location:exam.html");
}
if($roll==null)
	header('location:exam.html');
$sname="localhost";
$uname="root";
$pwd="";
$dname="pro";
$qus="";
$conn=new mysqli($sname,$uname,$pwd,$dname);
$tname=$sub.$id;
$idq=$sub.$id."idq";
$sql="select qu,op1,op2,op3,op4,ans from $tname";
$sql3="select name from stud where id='$roll'";
$sqlre="select * from $idq";
$result=$conn->query($sql);
$result2=$conn->query($sqlre);
$result3=$conn->query($sql3);
$sqlf="select quest from pdf2 where fid='$id' and sub='$sub'";
    $resultf=$conn->query($sqlf);
	if($resultf->num_rows>0)
{
while($row=$resultf->fetch_assoc())
{
$qus=$row['quest'];
}
}

$ans=array();
$quest=array();
$op1=array(); 

$arr=array();
if($result->num_rows>0)
{
while($row=$result->fetch_assoc())
{
array_push($quest,$row['qu']);
array_push($op1,$row['op1']);
array_push($op1,$row['op2']);
array_push($op1,$row['op3']);
array_push($op1,$row['op4']);
array_push($ans,$row['ans']);
}
}
$name="";
if($result3->num_rows>0)
{
while($row=$result3->fetch_assoc())
{
	      $name=$row['name'];
}
}


$arr=array();

$i=0;
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
?>
<script type="text/javascript"> 
 var flag="no";
var qar =<?php echo json_encode($quest,JSON_PRETTY_PRINT) ?>; 
var optar =<?php echo json_encode($op1,JSON_PRETTY_PRINT) ?>; 
var ans2 =<?php echo json_encode($ans,JSON_PRETTY_PRINT) ?>; 
var ran=<?php echo json_encode($arr,JSON_PRETTY_PRINT) ?>;
var x=<?php echo json_encode($roll,JSON_PRETTY_PRINT) ?>;
var name=<?php echo json_encode($name,JSON_PRETTY_PRINT) ?>;
var subb=<?php echo json_encode($sub,JSON_PRETTY_PRINT) ?>;
var idn=<?php echo json_encode($id,JSON_PRETTY_PRINT) ?>;
var qus=<?php echo $qus?>;
if(qus>=8)
{	
document.getElementById("sec").style.height=qus*155;
document.getElementById("nes").style.height=(qus*155)-150;
}
if(qus<8)
{
document.getElementById("sec").style.height=qus*200;
document.getElementById("nes").style.height=(qus*200)-150;
	}	
document.getElementById("dem1").innerHTML="Name :"+name;
document.getElementById("dem2").innerHTML="Roll Number :"+x;
var reqn=document.getElementById("hid").value=x;
var ar=x.split("");
var year=ar[1];
   if(year==5)
      year="IV";
     else if(year==6)
		 year="III";
	   else if(year==7) 
		   year="II";
	   else 
		   year="I";
document.getElementById("dem3").innerHTML="Year :"+year; 
var branch=ar[6];
var branch2=ar[7];
var reqlink="";
 var im=document.createElement("img");
 
 var cse="http://resources.vardhaman.org/images/cse/";
 var it="http://resources.vardhaman.org/images/it/";
 var ece="http://resources.vardhaman.org/images/ece/";
var br="";

if(ar[6]==0)
{
  if(ar[7]==5)
  {
 cse=cse+x+".jpg";
im.src=cse;
br="CSE"
}
 if(ar[7]==4)
  {
 br="ECE";
ece=ece+x+".jpg";
im.src=ece;
}
}
if(ar[6]==1)
{
br="IT";
 it=it+x+".jpg";
im.src=it;
}
 im.height="100";
im.width="100";

document.getElementById("dem4").innerHTML="Branch :"+br; 

 
 var get=document.getElementById("di");
 get.appendChild(im);


function count()
{


var ans=[];
var i=0,j=0,cou=0;


var an=[];
var strrr="";
for(i=0;i<qus;i++)
{
	ans[i]=ans2[ran[i]];
   strrr=strrr+" "+ans[i];
	}
for(i=0;i<qus;i++)
      {
	  var ll=0;
	     for(j=0;j<4;j++)
		 {
		 
		    var str="q"+i+j;
		     if(document.getElementById(str).checked)
			      {
				      an.push(j+1);
					  ll=1;
				  }
				  
		 }
		 if(ll==0)
		 an.push(0);
	  }
	  var ourr="";
	  for(i=0;i<qus;i++)
	  {
	  if(an[i]==ans[i])
	      cou++;
	  ourr=ourr+" "+an[i];
	  }
	 
	  
	  document.getElementById("hi").value=cou;
	  localStorage.setItem("an",JSON.stringify(an));
	  
	
	  return true;
	  
	  
}


for(j=0;j<qus;j++)
{
var ques=(j+1)+" . "+qar[ran[j]];

var x=document.createElement("h2");
var text=document.createTextNode(ques);
x.appendChild(text);
var res=document.getElementById("f");
res.appendChild(x);
//var y=document.createElement("br");
//res.appendChild(y);


var ull=document.createElement("ul");
var res=document.getElementById("f");

for(i=0;i<4;i++)
{

var lii=document.createElement("li");
var diiv=document.createElement("div");
var opt=optar[(ran[j]+1)*4-4+i];
var l=document.createElement("label");
var tex=document.createTextNode(opt);


l.appendChild(tex);
var x=document.createElement("input");
x.type="radio";
x.name="q"+j;
x.id="q"+j+i;
l.for="q"+i+j;
diiv.class="check";
lii.appendChild(x);
lii.appendChild(l);
lii.appendChild(diiv);
ull.appendChild(lii);

var y=document.createElement("br");
res.appendChild(y);
}
res.appendChild(ull);

}


setInterval(tim,700);
function tim(){
	
	
	var xmlhttp=new XMLHttpRequest();
	xmlhttp.open("GET","ajax.php",true);
	xmlhttp.send(null);
	xmlhttp.onreadystatechange = function() {
      if (this.readyState == 4 && this.status == 200) {
		if(this.responseText!="exp")
        document.getElementById("timerr").innerHTML = this.responseText;

		if(this.responseText=="00:00:00")
			{
			document.getElementById("k").click();
			}
		if(this.responseText=="exp")
		{ 
	         //flag="yes";
			// document.getElementById("k").click();
			 window.location.assign("sees.html");
		
		}
      }
    };

	
	}
setInterval(sto,20);
function sto(){
	
	
	var xmlhttp=new XMLHttpRequest();
	xmlhttp.open("GET","sto.php",true);
	xmlhttp.send(null);
	xmlhttp.onreadystatechange = function() {
      if (this.readyState == 4 && this.status == 200) {
	
        
		if(this.responseText=="start")
		{
			document.getElementById("k").click();
		}

    };

	
	}
}




</script>

</body>
</html>