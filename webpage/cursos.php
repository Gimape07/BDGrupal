<?php
    session_start();
    
    require_once("hockey_pack.php");
    
    if(isset($_SESSION["usuario"]) ) {
        $user = $_SESSION["usuario"];
        include("_header.html");
        include("_cursos.html");
        include("_footer.html"); 
    } else {
        header("location:index.php");
    }
?>