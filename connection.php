<?php


$user = "root";
$pass = "";

$database = new PDO("mysql:host=localhost;dbname=course_castle;",$user,$pass);


$database->exec("set names utf8");

?>