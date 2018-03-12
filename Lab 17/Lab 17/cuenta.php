<?php
    session_start();
    require_once("modelo.php");
    if(isset($_SESSION["usuario"]) ) {
        $user = $_SESSION["usuario"];
        $a = getRol($user);
        if($a=='Administrador'){
            http_response_code(404);
            include("_my_404.html");
            die();
        }else{
            include("_header.html");
            include("_cuenta.html");
            include("_footer.html"); 
        }
    } else {
        header("location:index.php");
    }
?>