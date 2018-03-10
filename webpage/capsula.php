<?php
    session_start();

    if(isset($_SESSION["usuario"]) ) {
        $user = $_SESSION["usuario"];
        include("_header.html");
        include("_capsula.html");
        include("_footer.html"); 
    } else {
        header("location:index.php");
    }
?>