<?php
    session_start();
    require_once("modelo.php");
    
    if(isset($_SESSION["usuario"]) ) {
        $user = $_SESSION["usuario"];
        include("_header.html");
        include("_cuerpo.html");
        include("_footer.html"); 
    }else if (login($_POST["usuario"], $_POST["contraseña"]) ) {
        unset($_SESSION["error"]);
        $_SESSION["usuario"] = $_POST["usuario"];
        $user = $_SESSION["usuario"];
        include("_header.html");
        include("_cuerpo.html");
        include("_footer.html"); 
    } else {
        $_SESSION["error"] = "Usuario y/o contraseña incorrectos";
        header("location: index.php");
    }
    
?>