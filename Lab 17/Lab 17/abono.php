<?php
    session_start();
    require_once("modelo.php");
    if(isset($_SESSION["usuario"]) ) {
        if((isset($_POST["cantidadAbono"]) != NULL)) {
            unset($_SESSION["error_edicion"]);
            $user = $_POST["user"];
            $balance = $_POST["balance"];
            $abono = $_POST["cantidadAbono"];
            $total = $balance + $abono;
            setBalance($total, $user);
            agregarTransaccion($abono, 'Abono', $user);
            header("location:transacciones.php");
        } else {
            $_SESSION["error_edicion"] = "No se pudo completar el cambio";
            header("location:transacciones.php");
        }
    } else {
        header("location:indexLogin.php");
    }
?>


