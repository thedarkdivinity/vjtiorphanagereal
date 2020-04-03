<?php
include 'connection.php';
?>
<?php
if(isset($_POST['submit']))
{
    $membername=$_POST['membername'];
    $post=$_POST['post'];
    $salary=$_POST['salary'];
    $insertquery="INSERT INTO `member`(`membername`, `post`, `salary`) VALUES ('$membername','$post','$salary')";
    mysqli_query($conn,$insertquery);
}




?>

<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Team</title>
</head>
<body>
<form method="post" , action="<?php echo $_SERVER['PHP_SELF']   ;?>">
    <br>
    <label>Name</label><input type="text" name="membername" placeholder="name" required><br>
    <label>Post</label><input type="text" name="post" placeholder="member post" required><br>
    <label>Salary</label><input type="number" name="salary" placeholder="member salary" required><br>
    <button type="submit" name="submit" style="background-color: blue; cursor: pointer;"> Submit</button><br>
    <a href="display.php">view entries</a>

</form>

</body>
</html>
