<?php
    session_start();
    require_once("modelo.php");

    if(isset($_SESSION["usuario"]) ) {
        $user = $_SESSION["usuario"];
        include("_header.html");
        include("_editarCapsula.html");
        include("_footer.html"); 
    } else {
        header("location:indexLogin.php");
    }
?>