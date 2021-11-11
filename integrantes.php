<?php 
    require_once("conexao.php");

    
    mysqli_select_db($mysqli, $bd) or die("Could not select database");

    $queryOrientadoresAtivos = "SELECT primeiro_nome, ultimo_nome, imagem FROM petianos WHERE ativo = 1 AND orientador = 1 ORDER BY `ano` DESC, `periodo` DESC";
    $queryOrientadoresInativos = "SELECT primeiro_nome, ultimo_nome, imagem FROM petianos WHERE ativo = 0 AND orientador = 1 ORDER BY `ano` DESC, `periodo` DESC";
    $queryIntegrantes = "SELECT primeiro_nome, ultimo_nome, imagem FROM petianos WHERE ativo = 1 AND voluntario = 0 AND orientador = 0 ORDER BY `ano` DESC, `periodo` DESC";
    $queryVoluntarios = "SELECT primeiro_nome, ultimo_nome, imagem FROM petianos WHERE ativo = 1 AND voluntario = 1 AND orientador = 0 ORDER BY `ano` DESC, `periodo` DESC";
    $queryInativos = "SELECT primeiro_nome, ultimo_nome, imagem FROM petianos WHERE ativo = 0 AND orientador = 0 ORDER BY `ano` DESC, `periodo` DESC";
    
    $resultOrientadoresAtivos = mysqli_query($mysqli, $queryOrientadoresAtivos);
    $resultOrientadoresInativos = mysqli_query($mysqli, $queryOrientadoresInativos);
    $resultIntegrantes = mysqli_query($mysqli, $queryIntegrantes);
    $resultVoluntarios = mysqli_query($mysqli, $queryVoluntarios);
    $resultInativos = mysqli_query($mysqli, $queryInativos);

    
    while($row = $resultOrientadoresAtivos->fetch_array())  
    {
        $arrayOrientadoresAtivos[] = $row;
    }

    while($row = $resultOrientadoresInativos->fetch_array())
    {
        $arrayOrientadoresInativos[] = $row;
    }
    

    while($row = $resultIntegrantes->fetch_array())
    {
        $arrayIntegrantes[] = $row;
    }

    
    while($row = $resultVoluntarios->fetch_array())
    {
        $arrayVoluntarios[] = $row;
    }

    while($row = $resultInativos->fetch_array())
    {
        $arrayInativos[] = $row;
    }

?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title> Integrantes | PETComp </title>

    <link rel="icon" href="./assets/images/logos/PETComp.png">

    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;300;400;500;700;900&display=swap"
        rel="stylesheet">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Basic&display=swap" rel="stylesheet">
    <!-- CSS only -->

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"
        integrity="sha512-iBBXm8fW90+nuLcSKlbmrPcLa0OT92xO1BIsZ+ywDWZCvqsWgccV3gFoRBv0z+8dLJgyAHIhR35VZc2oM/gI1w=="
        crossorigin="anonymous" />
    <link rel="stylesheet" href="./styles/styles.css">
    <link rel="stylesheet" href="./styles/integrantes.css">
</head>

<body>

    <?php include('header.php') ?>

    <div class="container">
        <div class="section-header">
            <h2>Integrantes</h2>
        </div>


        <div class="integrantes">
            <div class="tutores">

                <?php foreach ($arrayOrientadoresAtivos as $orientadorAtivo): ?>

                    <div class="card">
                        <div class="card-img">
                            <figure>
                                <img src="./assets/images/integrantes/<?= $orientadorAtivo["imagem"]?>" alt="">
                            </figure>
                        </div>
                        <div class="job-img"><i class="fas fa-chalkboard-teacher"></i></div>
                        <div class="card-name">
                            <h3><?= $orientadorAtivo["primeiro_nome"]?> <?= $orientadorAtivo["ultimo_nome"]?></h3>
                            <h6>Orientador</h6>
                        </div>
                    </div>

                <?php endforeach ?>

            </div>

            <div class="discentes">
            
                <?php foreach ($arrayIntegrantes as $integrante): ?>
                        
                        <div class="card">
                            <div class="card-img">
                            <figure>
                                <img src="./assets/images/integrantes/<?= $integrante["imagem"]?>" alt="">
                            </figure>
                            </div>
                            <div class="job-img"><i class="fas fa-user-graduate"></i></div>
                            <div class="card-name">
                                <h3><?= $integrante["primeiro_nome"]?> <?= $integrante["ultimo_nome"]?></h3>
                                <h6>Orientando</h6>
                            </div>
                        </div>
                    
                <?php endforeach ?>

            </div>

            <div class="section-header">
                <h2>Voluntários</h2>
            </div>
            <!-- Voluntários-->
            <div class="integrantes voluntarios">
                <div class="discentes">

                    <?php foreach ($arrayVoluntarios as $voluntario): ?>
                        
                        <div class="card">
                            <div class="card-img">
                            <figure>
                                <img src="./assets/images/integrantes/<?= $voluntario["imagem"]?>" alt="">
                            </figure>
                            </div>
                            <div class="job-img"><i class="fas fa-user-graduate"></i></div>
                            <div class="card-name">
                                <h3><?= $voluntario["primeiro_nome"]?> <?= $voluntario["ultimo_nome"]?></h3>
                                <h6>Orientando</h6>
                            </div>
                        </div>
                    
                    <?php endforeach ?>

                </div>
            </div>

            <!-- Ex Integrantes-->
            <div class="section-header">
                <h2>Ex-Integrantes</h2>
            </div>

            <div class="integrantes ex">
                <div class="tutores">

                    <?php foreach ($arrayOrientadoresInativos as $orientadorInativo): ?>

                        <div class="card">
                            <div class="card-img">
                                <figure>
                                    <img src="./assets/images/integrantes/<?= $orientadorInativo["imagem"]?>" alt="">
                                </figure>
                            </div>
                            <div class="job-img"><i class="fas fa-chalkboard-teacher"></i></div>
                            <div class="card-name">
                                <h3><?= $orientadorInativo["primeiro_nome"]?> <?= $orientadorInativo["ultimo_nome"]?></h3>
                                <h6>Orientador</h6>
                            </div>
                        </div>

                    <?php endforeach ?>

                </div>

                <div class="discentes ex">

                    <?php foreach ($arrayInativos as $inativos): ?>
                        
                        <div class="card">
                            <div class="card-img">
                            <figure>
                                <img src="./assets/images/integrantes/<?= $inativos["imagem"]?>" alt="">
                            </figure>
                            </div>
                            <div class="job-img"><i class="fas fa-user-graduate"></i></div>
                            <div class="card-name">
                                <h3><?= $inativos["primeiro_nome"]?> <?= $inativos["ultimo_nome"]?></h3>
                                <h6>Orientando</h6>
                            </div>
                        </div>
                    
                    <?php endforeach ?>

                </div>
                
            </div>
        </div>

        <?php include('footer.php') ?>
</body>
<script src="./scripts/script.js"></script>
</html>
