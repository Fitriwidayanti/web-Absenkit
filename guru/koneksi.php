<?php
ob_start();
$link= mysqli_connect( 'localhost', 'root', '');
$database = mysqli_select_db($link, 'absenkit');
?>