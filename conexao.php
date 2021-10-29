<?php

    $hostname="localhost";
    $bd="petcomp59_petcomp_bd";
    $usuario="root";
    $senha="";

    $mysqli = new mysqli($hostname, $usuario, $senha, $bd);

    if($mysqli->connect_errno){
        echo "falha ao conectar ao banco";   
    }

?>
