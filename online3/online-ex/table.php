<?php
$conn=new mysqli("localhost","root","","pro");
$sql="select sub,fid from pdf2 where status='stop'";
$x=$conn->query($sql);
if($x->num_rows>0)
{
	echo "<table border=1  cellspacing=0 cellpadding=3 margin-top=10>";
	echo "<tr>";
	echo "<td align=center>Subject</td>";
	echo "<td align=center>Faculty-Id</td>";
	echo "</tr>";
	
	while($row=$x->fetch_assoc())
	{
		$q=$row['sub'];
		$id=$row['fid'];
		echo "<tr>";
		echo "<td align=center ><a href='check4.php?sub=$q&id=$id'>".$q."</a></td>";
		echo "<td align=center>".$row['fid']."</td>";
		echo "</tr>";
       		
		
		
	}
}




?>