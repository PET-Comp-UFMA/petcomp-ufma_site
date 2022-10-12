<!DOCTYPE html>
<html lang="pt-br">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title> Contato | PETComp </title>

  <link rel="icon" href="./assets/images/logos/PETComp.png">

  <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
  <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">

  <link rel="stylesheet" href="./styles/styles.css">
  <link rel="stylesheet" href="./styles/contato.css">

</head>
<body>
  <?php include('header.php') ?>

  <?php
    if(!isset($_POST['nome']) or !isset($_POST['email']) or !isset($_POST['mensagem']) or !isset($_POST['phone'])){
      //Se não tiver enviado email exiba a tela de form de contato
      ?>
      <main class="fade">
       <div class="section-header">
        <h2>contato</h2>
      </div>
      <?php
      include('formContato.php');
    }else{
      //Se tiver envia o email;
      ?>
      <main class="fade">
      <div class="section-header">
        <h2>contato</h2>
      </div>
      <?php

      include('email.php'); 
      include('formContato.php');

    }

  ?>
  
  <!-- START FOOTER-->
  <?php include('footer.php') ?>
  <script src="./scripts/script.js"></script>
  <script src="./scripts/dropdown.js"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.mask/1.14.11/jquery.mask.min.js"></script>
  <script type="text/javascript">
    $("#phone").mask("(00) 0000-00009");
  </script>
</body>
</html>