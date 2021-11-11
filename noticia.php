<?php
	require_once('conexao.php');
    if(!isset($_GET['id'])){
        
        //No servidor usar essa:
        /*
        $URL="http://observatoriodesaudemental.com.br/v2/Observatorio-SaudeMental/ListaNoticias.php";
        echo "<script type='text/javascript'>document.location.href='{$URL}';</script>";
        echo '<META HTTP-EQUIV="refresh" content="0;URL=' . $URL . '">';
        */
        die();
        
        //No localhost usar essa:
        // header('Location: ListaNoticias.php');
        // die();
    }else{

    $id = $_GET['id'];
    mysqli_select_db($mysqli, $bd) or die("Could not select database");	
    $query = "SELECT * FROM `noticias` WHERE `id` = " . $id;
    
    $result = mysqli_query($mysqli, $query);
    $row = mysqli_fetch_array($result);
    
    $Titulo = $row['titulo'];
    $Texto = $row['texto'];

    if($row){

?>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Observatório Saúde Mental</title>
  
  <link rel="icon" href="./assets/images/logos/PETComp.png">

  <link rel="stylesheet" href="./styles/noticias.css">
  <link rel="stylesheet" href="./styles/styles.css">
  <link rel="stylesheet" href="./styles/styles2.css">
  <link rel="stylesheet" href="./styles/noticia_especifica.css">
  <link rel="stylesheet" href="./styles/trabalhos_publicados.css">
  


  <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,100;0,300;0,400;0,500;0,600;0,700;0,900;1,400;1,500&display=swap" rel="stylesheet">
  
</head>

<?php 
  include('header.php');
?>

<body>
  <main class="fade">
    <section class="container">
      <div class="noticia-especifica">
        <h1 class="titulo-noticia"><?php print_r($Titulo) ?></h1>
        <?php print_r(utf8_encode($Texto)) ?>
        <div class="voltar">
            <a href="./noticias.php">
            <button class="button-back">
              Voltar
            </button></a>
        </div>
      </div>

    </section>
  </main>
</body>

<script src="./scripts/script.js"></script>
<?php
      }
    }
?>

