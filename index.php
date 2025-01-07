<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">

  <title> PETComp </title>

  <link rel="icon" href="./assets/images/logos/PETComp.png">

  <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
  <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">

  <link rel="stylesheet" href="./styles/styles.css">
  <link rel="stylesheet" href="./styles/home.css">
</head>

<body>
  <?php include('header.php') ?>
  <main>
  
    <section id="sobre">
    <div class="resumo-petcomp">
        <div class="imagensSobrePet">
        </div>
    </section>
    <section id="petSignifica">
      <h1 class="tituloPet">O PETComp representa a Tríade Acadêmica:</h1>
      <div class="imagemTriade">
      </div>
    </section>
    <section id="historia">
      <div class="historia">
        <div class="topico">
          <h1 class="count">245</h1>
          <p>integrantes</p>
        </div>
        <div class="topico">
          <h1 class="count">1000</h1>
          <p>Pessoas influenciadas</p>
        </div>
        <div class="topico">
          <h1 class="count">20</h1>
          <p>Projetos</p>
        </div>
        <div class="topico">
          <h1 class="count">40</h1>
          <p>Artigos Publicados</p>
        </div>
      </div>
    </section>
    <section id="atividades">
      <div class="atividades">
        <div class="atividades-desenvolvidas">
          <h1>Atividades</h1>
          <p>O PETComp desenvolve diversas atividades. Clique em um dos cards para obter mais informações.</p>
        </div>
        <div class="images-atividades">

          <div class="card-atividade">
            <div>
              <img src="./assets/images/graduation-hat.png" alt="">
              <h3>Monitoria</h3>
            </div>
            <a href="./monitoria.php">Saiba mais</a>
          </div>

          <div class="card-atividade">
            <div>
              <img src="./assets/images/mic-podcast.png" alt="">
              <h3>PodCast</h3>
            </div>
            <a href="./produtos-podcomp.php">Saiba mais</a>
          </div>

          <div class="card-atividade">
            <div>
              <img src="./assets/images/web-programming.png" alt="">
              <h3>Fábrica de Software</h3>
            </div>
            <a href="./desenvolvimento.php">Saiba mais</a>
          </div>

          <div class="card-atividade">
            <div>
              <img src="./assets/images/talk-show.png" alt="">
              <h3>Organização de Eventos</h3>
            </div>
            <a href="./eventos.php">Saiba mais</a>
          </div>

          <div class="card-atividade">
            <div>
              <img src="./assets/images/online-course.png" alt="">
              <h3>Minicursos e Oficinas</h3>
            </div>
            <a href="./minicursos.php">Saiba mais</a>
          </div>

          <div class="card-atividade">
            <div>
              <img src="./assets/images/contract.png" alt="">
              <h3>Expressão Escrita</h3>
            </div>
            <a href="./publicacoes.php">Saiba mais</a>
          </div>

        </div>
      </div>
    </section>
  </main>

</body>

<?php include('footer.php') ?>
<script src="./scripts/script.js"></script>

</html>