<?php
require_once 'php_action/db_connect.php';
function logger($username,$connect){
    $ip = $_SERVER['REMOTE_ADDR'];
    $loquery="INSERT INTO `access_log` (`username`, `ip`) VALUES ('$username','$ip')";
    $log = $connect->query($loquery);
}
function loggerF($username,$connect){
    $ip = $_SERVER['REMOTE_ADDR'];
    $loquery="INSERT INTO `access_log` (`username`, `ip`,`status`) VALUES ('$username','$ip', 'Failed')";
    $log = $connect->query($loquery);
}
?>

