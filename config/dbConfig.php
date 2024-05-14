<?php
$hn = '%';
$un = 'fastburger_admin';
$pw = 'D.P1a1QZU32aHPva';
$db = 'fastburger';

$conn = mysqli_connect($hn, $un, $pw, $db);
if (!$conn){
    die('Connection Failed: ' . mysqli_connect_error());
}
else
{
    echo("Connection is successful")
}