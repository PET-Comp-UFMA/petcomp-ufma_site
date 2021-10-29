<?php

    $hostname="localhost";
    $bd="petcom59_petcomp_db";
    $usuario="root";
    $senha="";

    $mysqli = new mysqli($hostname, $usuario, $senha, $bd);

    if($mysqli->connect_errno){
        echo "falha ao conectar ao banco: ".$mysqli->connect_errno." ".$mysqli->connect_error;
    }

//falha ao conectar ao banco: 1044 Access denied for user 'petcom59_petcomp'@'localhost' to database 'petcom59_petcomp_bd'Could not select database


?>

