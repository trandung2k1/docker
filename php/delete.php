<?php
include 'connect.php';
if (isset($_GET['id'])) {
    $id = $_GET['id'];
    // echo $id;
    $sql = "DELETE FROM users WHERE id='$id'";
    $rs = mysqli_query($conn, $sql);
    if ($rs) {
        header('location:display.php');
    } else {
        echo "Deleted user successfully!";
        die(mysqli_error($conn));
    }
}
