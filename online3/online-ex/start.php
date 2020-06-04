
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
<form id="f" name="fr" >
<input type="hidden" id="hid" name="hid">
</form>
<form id="f2" name="fr2" method="post" action="final.php"  onsubmit="return count()">
<input type="hidden" id="hi" name="hi">
<br><br>
<input type="submit" id="k"> 
</form>
</div>
</div>
<div id="rem"> </div>
<?php
session_start();
$roll=$_SESSION["rollid"];
$id=$_SESSION["id"];
$sub=$_SESSION["sub"];
$start_eaxm=$_SESSION["start_exam"];
if($start_eaxm==null)
{
//session_unset();
unset($_SESSION["start_exam"]);
unset($_SESSION["rollid"]);
unset($_SESSION["id"]);
unset($_SESSION["sub"]);
unset($_SESSION["mar"]);
unset($_SESSION['timer']);
unset($_SESSION['start_time']);
unset($_SESSION['end_time']);

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
$rem=$sub.$id."rem";
$sql="select qu,op1,op2,op3,op4,ans from $tname";
$sql3="select name from stud where id='$roll'";
$sqlre="select * from $idq";
$sqlrem="select * from $rem where id='$roll'";
$result=$conn->query($sql);
$result2=$conn->query($sqlre);
$result3=$conn->query($sql3);
$resultrem=$conn->query($sqlrem);
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
$remans=array();
$arr=array();
	if($resultrem->num_rows>0)
{
while($row=$resultrem->fetch_assoc())
{
	for($i=1;$i<=$qus;$i++)
    array_push($remans,$row['q'.$i]);
}
}



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
var reman=<?php echo json_encode($remans,JSON_PRETTY_PRINT) ?>;
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

var x=document.createElement("label");
var text=document.createTextNode(ques);
x.appendChild(text);
var res=document.getElementById("f");
res.appendChild(x);
var y=document.createElement("br");
res.appendChild(y);


for(i=0;i<4;i++)
{



var opt=optar[(ran[j]+1)*4-4+i];
var l=document.createElement("label");
var tex=document.createTextNode(opt);

var res=document.getElementById("f");
var x=document.createElement("input");
x.type="radio";
x.name="q"+j;
x.id="q"+j+i;

document.getElementById("f").appendChild(x);
l.appendChild(tex);
res.appendChild(l);

var y=document.createElement("br");
res.appendChild(y);
}
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
			document.getElementById("k").click();
			 //window.location.assign("sees.html");
		
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
for(j=0;j<qus;j++)
{
	
	for(i=0;i<4;i++)
	{
		document.getElementById("q"+j+i).onclick=function(x){
			
			
			var remid=this.id;
var xmlhttp=new XMLHttpRequest();
	xmlhttp.open("GET","rem.php?remid="+remid,true);
	xmlhttp.send(null);
	xmlhttp.onreadystatechange = function() {
      if (this.readyState == 4 && this.status == 200) {
		document.getElementById("rem").innerHTML=this.responseText;  
	  };

	
	}			

			
		}
	}
}
	
for(j=0;j<reman.length;j++)
{
	if(reman[j]==0)
		 ;
	 else
	 {
		 document.getElementById(reman[j]).checked=true;
	 }
}



</script>

</body>
</html>