<?php
    session_start();
    if(isset($_SESSION["usuario"]) ) {
        header("location: login.php");    
    } else {
        $user = "";
        include("_header.html");
        include("_cuerpo.html");
        include("_footer.html");
    }
?>