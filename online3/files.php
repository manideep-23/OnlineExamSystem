<?php
$lines = file('qdoc.txt');
$lines2 = file('qupdf.txt');
foreach ($lines as $key => $val) {
    $lines[$key] = $val.$lines2[$key];
}
file_put_contents('countryenglish2.txt', implode("\n", $lines));
?>