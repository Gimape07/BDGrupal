<?php
    session_start();
    require_once("modelo.php");
    if(isset($_SESSION["usuario"]) ) {
        $user = $_SESSION["usuario"];
        include("_header.html");
        include("_capsula.html");
        include("_footer.html"); 
    } else {
        header("location:index.php");
    }
?>