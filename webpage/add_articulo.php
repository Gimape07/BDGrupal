<?php
session_start();
require_once("func_Art.php");

$user=$_SESSION["usuario"];

agregaPost($user);
header("location:articulos.php");
    






?>