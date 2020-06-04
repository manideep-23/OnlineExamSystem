function verify(my)
{
  var c=0;
         var r1=new RegExp("^[a-zA-Z ]+$");
         var r2=new RegExp("^1(5|6|7|8)881(A)(0|1)(5|2|1|3|4)[A-Z0-9]{1}[0-9]+$");
var x=my.n.value;

var y=my.r.value;
if(r1.test(x))
{
c=c+1;
 document.getElementById("he").innerHTML="";
      if( r2.test(y))
	       {
		     if(y.length==10)
			 {
                  c=c+1;
				  document.getElementById("her").innerHTML=""; 
             }
			 else
			 {
             document.getElementById("her").innerHTML="Should conatin exactly 10 letters";			 
		      return false;
		   }
		   }
		   else
		   {
		     document.getElementById("her").innerHTML="Invalid RollNumber";
                return false;
				}
}
else
{
document.getElementById("he").innerHTML="Invalid Name";
return false;
}
if(c==2)
{
var x=Math.random();
var stri=x.toString();
var y=stri.split("");

var str="#";
for(i=2;i<=3;i++)
{
str=str+y[i];
   if(i==2)
 str=str+String.fromCharCode(65+Math.floor(Math.random()*26)); 
 if(i==3)
  str=str+String.fromCharCode(65+Math.floor(Math.random()*26));
 }
document.getElementById("h").value=str;


return true;


}
}