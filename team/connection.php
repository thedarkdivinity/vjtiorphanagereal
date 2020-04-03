<?php
$conn=mysqli_connect("localhost","root","sayush12","team");
if($conn){
    echo"<script> alert('connected');</script>";
}
else{
    echo"<script> alert('connection failed');</script>";
}
?>
