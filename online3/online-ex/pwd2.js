function verify(my)
{
  var c=0;
         var r1=new RegExp("^VCE[0-9]+$");
         
var x=my.id.value;

var y=my.pd.value;
if(r1.test(x) && x.length==6)
{
c=c+1;
 document.getElementById("he").innerHTML="";
      if(x==y)
	       {
		   
 document.getElementById("m").innerHTML="";
	         c=c+1;
		   }
		   else
		   {
		     document.getElementById("m").innerHTML="Invalid Password";
                return false;
				}
}
else
{
document.getElementById("he").innerHTML="Invalid ID";
return false;
}
if(c==2)
{


return true;


}
}