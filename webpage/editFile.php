<?php
    session_start();
    require_once("modelo.php");
    if(isset($_SESSION["usuario"]) ) {
        if(isset($_POST["producto"]) != NULL ) {
            unset($_SESSION["error_edicion"]);
            editarProducto($_POST["producto"], $_POST["id"]);
            header("location:login.php");
        } else {
            $_SESSION["error_edicion"] = "No se pudo completar el cambio";
            header("location:add.php");
        }
    } else {
        header("location:index.php");
    }
?>