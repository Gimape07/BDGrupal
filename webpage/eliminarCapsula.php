<?php
    session_start();
    require_once("modelo.php");
    if(isset($_SESSION["usuario"]) ) {
        if(isset($_GET["id"]) != NULL ) {
            unset($_SESSION["error_delete"]);
            eliminarCapsula($_GET["id"]);
            header("location:capsula.php");
        } else {
            $_SESSION["error_delete"] = "No se pudo completar el cambio";
            header("location:index.php");
        }
    } else {
        header("location:index.php");
    }
?>