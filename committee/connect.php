<?php
$conn=mysqli_connect('localhost','root','','ermsdb');
if($conn)
{ ?>
    <script>
    alert('Connection Successful');
    </script>
    <?php
}


?>