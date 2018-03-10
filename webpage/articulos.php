<?php
    session_start();
    require_once("func_Art.php");

    if(isset($_SESSION["usuario"]) ) {
        $user = $_SESSION["usuario"];
        include("_header.html");
        include("_articulos.html");
        include("_footer.html"); 
    } else {
        header("location:index.php");
    }
    
    

    
?>