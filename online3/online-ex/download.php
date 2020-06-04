
<?php
function fetch()
{
	
$id=$_GET['id'];
$sub=$_GET['sub'];
	      $output = '';  
	$conn=new mysqli("localhost","root","","pro");
$mark=$sub.$id."marks";
$sql="select * from $mark";
$result=$conn->query($sql);
if($result->num_rows>0)
{
      while($row =$result->fetch_assoc())  
      {       
      $output .= '<tr>  
                          <td>'.$row["id"].'</td>  
                          <td>'.$row["marks"].'</td>  
                     </tr>  
                          ';  
      }  
   


}
else
	$output.='<BR> NO Records Found';
return $output;
}
	
?>
<?php
require_once('tcpdf/tcpdf.php');

$id=$_GET['id'];
$sub=$_GET['sub'];
$title="Result of ".$sub;
$sname=$sub."-".$id."-"."marks.txt";

$pdf = new TCPDF(PDF_PAGE_ORIENTATION, PDF_UNIT, PDF_PAGE_FORMAT, true, 'UTF-8', false);
$pdf->SetCreator(PDF_CREATOR);
$pdf->SetTitle("$title");
$pdf->SetHeaderData(PDF_HEADER_LOGO, PDF_HEADER_LOGO_WIDTH, PDF_HEADER_TITLE, PDF_HEADER_STRING, array(0,64,255), array(0,64,128));
$pdf->setFooterData(array(0,64,0), array(0,64,128));

$pdf->setHeaderFont(Array(PDF_FONT_NAME_MAIN, '', PDF_FONT_SIZE_MAIN));
$pdf->setFooterFont(Array(PDF_FONT_NAME_DATA, '', PDF_FONT_SIZE_DATA));

$pdf->SetDefaultMonospacedFont(PDF_FONT_MONOSPACED);

$pdf->SetMargins(PDF_MARGIN_LEFT, PDF_MARGIN_TOP, PDF_MARGIN_RIGHT);
$pdf->SetHeaderMargin(PDF_MARGIN_HEADER);
$pdf->SetFooterMargin(PDF_MARGIN_FOOTER);
$pdf->setPrintHeader(false);
$pdf->setPrintFooter(false);
$pdf->SetAutoPageBreak(TRUE,10);
$pdf->AddPage();

$pdf->setFont('helvetica','',12);
$content="";
$content.=     ' <h3>Result of '."$sub".'</h3><br /><br />  
      <table border="1" cellspacing="0" cellpadding="5" align="center">  
           <tr>  
                <th width="30%">ID-NUMBER</th>  
                <th width="30%">MARKS</th>  
                
           </tr>  
      ';  
	  $content .= fetch();  
      $content .= '</table>';  
      $pdf->writeHTML($content);  
	  ob_end_clean();

      $pdf->Output("$sname", 'I');





?>