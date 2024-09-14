<?php
$db_name = "plantbazaar";//4
$host = "localhost";//1
$root = "root";//2
$password = "";//3


$connect = mysqli_connect($host, $root, $password, $db_name);
if(!$connect){
    die("Connection to the database failed");
}
?>
