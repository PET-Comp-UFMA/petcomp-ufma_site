<!DOCTYPE html>
<html lang="pt-br">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title> PETComp </title>

  <link rel="icon" href="./assets/images/logos/PETComp.png">

  <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
  <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">

  <link rel="stylesheet" href="./styles/styles.css">
  <link rel="stylesheet" href="./styles/biblioteca-petcomp-monitorias.css">
</head>

<body>
  <div class="wrapper">
    <?php include('header.php') ?>

    <div class="monitorias">
      <div>
        <button id="python" class="btn-monitoria" style="background: #8AEABE" onclick="currentConteudo(1)" onclick="currentConteudo(1)">
          <img src="./assets/svg/python.svg" alt="Monitoria Algoritmos I">
        </button>
        <div class="title">
          <h1 id="nomeMonitoria1" >Algoritmos I</h1>
        </div>
      </div>
      <div>
        <button id="calc-1" class="btn-monitoria" style="background: #FFA800" onclick="currentConteudo(2)">
          <img src="./assets/svg/pi-mathematical.svg" alt="Monitoria Cálculo I">
        </button>
        <div class="title">
          <h1 id="nomeMonitoria2" >Cálculo I</h1>
        </div>
      </div>
      <div>
        <button id="ed1" class="btn-monitoria active" style="background: #1E90FF" onclick="currentConteudo(3)">
          <img src="./assets/svg/ed1.svg" alt="Monitoria Estrutura de Dados I">
        </button>
        <div class="title">
          <h1 id="nomeMonitoria3">Estrutura de Dados I</h1>
        </div>
      </div>
      <div>
        <button id="c-lang" class="btn-monitoria" style="background: #fafafa" onclick="currentConteudo(4)">
          <img src="./assets/svg/c.svg" alt="Monitoria Linguagem de Programação I">
        </button>
        <div class="title">
          <h1 id="nomeMonitoria4" >Linguagem de Programação I</h1>
        </div>
      </div>
      <div>
        <button id="mdl" class="btn-monitoria" style="background: #FF69B4" onclick="currentConteudo(5)">
          <img src="./assets/svg/mdl.svg" alt="Monitoria Matemática Discreta e Lógica">
        </button>
        <div class="title">
          <h1 id="nomeMonitoria5" >Matemática Discreta e Lógica</h1>
        </div>
      </div>
    </div>

    <section class="container">
      <div id="conteudos" class="conteudos-python row row-cols-1 row-cols-md-3 g-4"></div>
      <div id="conteudos" class="conteudos-calc1 row row-cols-1 row-cols-md-3 g-4"></div>
      <div id="conteudos" class="conteudos-ed1" style="display: grid;"></div>
      <div id="conteudos" class="conteudos-lp1 row row-cols-1 row-cols-md-3 g-4"></div>
      <div id="conteudos" class="conteudos-mdl"></div>
    </section>

    <?php include('footer.php') ?>
  </div>
</body>


<script src="./scripts/script.js"></script>
<script src="./scripts/biblioteca.js"></script>
<script src="./scripts/blibiotecapetcomp.js"></script>
</html>