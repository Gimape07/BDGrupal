<?php
    session_start();
    require_once("modelo.php");
    if(isset($_SESSION["usuario"]) ) {
        if((isset($_POST["titulo"]) != NULL) && (isset($_POST["desc"]) != NULL) && (isset($_POST["video"]) != NULL)) {
            unset($_SESSION["error_edicion"]);
            editarCapsula($_POST["titulo"], $_POST["desc"], $_POST["video"], $_POST["id"]);
            header("location:capsula.php");
        } else {
            $_SESSION["error_edicion"] = "No se pudo completar el cambio";
            header("location:editarCapsula.php");
        }
    } else {
        header("location:indexLogin.php");
    }
?>