


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
    <?php
    include 'connection.php';
    $ids=$_GET['id'];
    $showquery="select * from member where id=($ids) ";
    $showdata=mysqli_query($conn,$showquery);
    $arrdata=mysqli_fetch_array($showdata);

    if(isset($_POST['submit']))
    {
        $idupdate=$_GET['id'];
        $membername=$_POST['membername'];
        $post=$_POST['post'];
        $salary=$_POST['salary'];
        //$insertquery="INSERT INTO `member`(`membername`, `post`, `salary`) VALUES ('$membername','$post','$salary')";
        $query=" update member set id=$ids, membername='$membername' , post='$post' , salary='$salary' where id=$idupdate";


        mysqli_query($conn,$query);
    }




    ?>
    <br>
    <label>Name</label><input type="text" name="membername" placeholder="name" value="<?php echo $arrdata['membername'];?>" required><br>
    <label>Post</label><input type="text" name="post" placeholder="member post" value="<?php echo $arrdata['post'];?>" required><br>
    <label>Salary</label><input type="number" name="salary" placeholder="member salary" value="<?php echo $arrdata['salary'];?>" required><br>
    <button type="submit" name="submit" style="background-color: blue; cursor: pointer;"> Update</button><br>
    <a href="display.php">view entries</a>

</form>

</body>
</html>

