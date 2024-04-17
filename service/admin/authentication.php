<?php
session_start();
if(!isset($_SESSION['auth']))
{
    $_SESSION['auth_status']="Please Login to Access dashboard";
    header('location:login.php');
    exit(0);

}
else{
    if($_SESSION['auth']=="1")
    {

    }
    else{
        $_SESSION['status']="You are not authorized as admin";
    header('location:../index.php');
    exit(0);


    }
}
?>