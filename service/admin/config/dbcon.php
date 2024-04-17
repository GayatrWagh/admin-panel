<?php
$host ="localhost";
$username ="root";
$password ="";
$database ="php_admin_panel";
//connection
$con=mysqli_connect("$host","$username","$password","$database");
if(!$con)
{
    header("location:..errors/db.php");
    die();
}
// else{
// echo "database Connected"; 
// }
?>