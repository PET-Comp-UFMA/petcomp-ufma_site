<!DOCTYPE html>
<html lang="pt-br">

<head>
  
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title> 1º Edição Revista PETComp  | PETComp </title>

  <link rel="icon" href="./assets/images/logos/PETComp.png">

  <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@200;400&display=swap" rel="stylesheet">
  <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">

  

  <link rel="stylesheet" href="/styles/styles.css">
  <link rel="stylesheet" href="/styles/revista.css">

  
  <script src="https://unpkg.com/scrollreveal@4.0.0/dist/scrollreveal.min.js"></script>

</head>

<body>
  <?php include('header.php') ?>

  <main>

    <div class="seletor">
      <div>
        <button id="btn-revista" class="btn-revista active" onclick="currentConteudo(1)">
          <img class="button-img" src="./assets/revistas/1a_edicao/revista_1a_Edicao_Icone.svg" alt="1º Edicão">  
        </button>
        <div class="title">
          <h1 id="btn-text">1º - Edição</h1>
        </div>
      </div>
    </div>

    <section class="sobre" id="sobre">
      <div id="revista-sobre" style="display: grid"></div>
    </section>
  </main>

  <?php include('footer.php') ?>
  <script src="./scripts/script.js"></script>
  <script src="./scripts/revista.js"></script>

  <script src="/scripts/slader.js"></script>
  <script src="/scripts/scrollReveal.js"></script>
  
</body>

</html>