<?php
    session_start();
<<<<<<< HEAD
    require_once("modelo.php");
=======
>>>>>>> eb0388140b5c6646a2fcfc0491ebc41a042993c9
    if(isset($_SESSION["usuario"]) ) {
        $user = $_SESSION["usuario"];
        include("_header.html");
        include("_capsula.html");
        include("_footer.html"); 
    } else {
        header("location:index.php");
    }
?>