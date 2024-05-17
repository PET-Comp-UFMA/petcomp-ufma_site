<?php

    $hostname="localhost";
    $bd="banco_petcomp";
    $usuario="root";
    $senha="490751";

    $mysqli = new mysqli($hostname, $usuario, $senha, $bd);

    if($mysqli->connect_errno){
        echo "falha ao conectar ao banco: ".$mysqli->connect_errno." ".$mysqli->connect_error;
    }
?>
