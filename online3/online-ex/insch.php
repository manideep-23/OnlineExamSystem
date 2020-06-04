<?php
$idq="pytvce990idq";
$q="q2";
$conn=new mysqli("localhost","root","","pro");

for($i=3;$i<=16;$i++)
{
	$q="q".$i;
	
	$sql="ALTER TABLE $idq ADD $q INT(5)";
    $x=$conn->query($sql);
	
}
?>