<?php
$conn=mysqli_connect("localhost","root","sayush12","ermsdb");
if($conn)
{
    ?><script>alert('connected to database'); </script>
<?php
}
else{
    ?><script>alert('connection failed');</script>
<?php
}
?>