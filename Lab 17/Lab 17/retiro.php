<?php
    session_start();
    require_once("modelo.php");
    if(isset($_SESSION["usuario"]) ) {
        if((isset($_POST["cantidadRetiro"]) != NULL)) {
            unset($_SESSION["error_edicion"]);
            $user = $_POST["user"];
            $balance = $_POST["balance"];
            $retiro = $_POST["cantidadRetiro"];
            $total = $balance - $retiro;
            setBalance($total, $user);
             agregarTransaccion($retiro, 'Retiro', $user);
            header("location:transacciones.php");
        } else {
            $_SESSION["error_edicion"] = "No se pudo completar el cambio";
            header("location:transacciones.php");
        }
    } else {
        header("location:indexLogin.php");
    }
?>