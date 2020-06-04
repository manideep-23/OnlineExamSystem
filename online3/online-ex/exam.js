function verify(my)
{
  var c=0;
         
         var r1=new RegExp("^1(5|6|7|8)881(A|a)(0|1)(5|2|1|3|4)[A-Za-z0-9]{1}[0-9]+$");
var x=my.roll.value;


if(r1.test(x))
{
    if(x.length==10)
	{

 return true;
   }
   else
   {
   document.getElementById("de").innerHTML="INVALID ROLLNUMBER";
   return false;
}
}
else
{
document.getElementById("de").innerHTML="INVALID ROLLNUMBER";
return false;
}
}