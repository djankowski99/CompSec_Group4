<?php
$json=$_GET;
$lat=(double)$_GET["lat"];
$lng=(double)$_GET["lng"];
$final= '{"users":[{"lat": ' . $lat . "," . '"lng": ' . $lng . "}]} ";
echo $final;
$file = 'map.json';
file_put_contents($file,$final);
?>

