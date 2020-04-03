<?php
include 'connection.php'
?>


<<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Our committee</title>

</head>
<body>
<table>
    <thead><tr>
    <th>ID</th>
    <th>Name</th>
    <th>Post</th>
    <th>Salary</th>
    </tr>

    </thead>
    <tbody>
    <?php
    $selectquery="SELECT * FROM `member`";
    $query=mysqli_query($conn,$selectquery);
while ($res=mysqli_fetch_array($query)){


    ?>
    <tr>
        <td><?php echo $res['id'];?></td>
        <td><?php echo $res['membername'];?></td>
        <td> <?php echo $res['post'];?> </td>
        <td> <?php echo $res['salary'];?></td>
        <td><a href="update.php?id=<?php echo $res['id'];?>" > <u>update</u></td>
    </tr>
<?php }
?>
    </tbody>
</table>

</body>
</html>
