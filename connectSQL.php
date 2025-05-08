<?php 
$user = "root";
$passwork = "";
$nameDatabase = "quanlysinhvien10";
$host= "localhost";
$conn = new mysqli($host,$user,$passwork,$nameDatabase);
if($conn->connect_errno){
    die("Error connect Database". $conn->connect_errno);
}
?>
