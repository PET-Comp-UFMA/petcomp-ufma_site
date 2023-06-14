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
    <section id="slider">
      <ul class="slider-content">
        <li class="slider-item fade">
          <div class="texto-banner">
            <div class="intro-noticia">
              <h1>Seja bem-vindo ao novo site PETComp</h1>
              <p>De cara nova e com muito mais informações!</p>
              <a href="./integrantes.php">Conheça</a>
            </div>
          </div>
        </li>
        <li class="slider-item fade">
          <div class="texto-banner">
            <div class="intro-noticia">
              <h1>Conheça nossa história</h1>
              <p>O grupo existe desde 2007 e desenvolve atividades de Monitoria, Desenvolvimento e Pesquisas</p>
              <a href="./sobre.php">Conheça</a>
            </div>
          </div>
        </li>
        <li class="slider-item fade">
          <div class="texto-banner">
            <div class="intro-noticia">
              <h1>Seletivo</h1>
              <p>Veja a lista de integrantes do grupo e conheça os novos participantes</p>
              <a href="./integrantes.php">Conheça</a>
            </div>
          </div>
        </li>
        <li class="slider-item fade">
          <div class="texto-banner">
            <div class="intro-noticia">
              <h1>PodComp</h1>
              <p>Acompanhe todos o episódios já lançados do nosso podcast</p>
              <a href="./produtos-podcomp.php">Conheça</a>
            </div>
          </div>
        </li>
        <button class="preview">
          <img src="./assets/svg/navigate_before-24px.svg" onclick="plusSlides(-1)" alt="">
        </button>
        <button class="next">
          <img src="./assets/svg/navigate_next-24px.svg" onclick="plusSlides(1)" alt="">
        </button>
      </ul>
    </section>

    <section id="sobre">
      <div class="resumo-petcomp">
        <div class="images">
          <figure class="gallery__item gallery__item--1">
          </figure>
          <figure class="gallery__item gallery__item--2">
          </figure>
          <figure class="gallery__item gallery__item--3">
          </figure>
          <figure class="gallery__item gallery__item--4">
          </figure>

        </div>
        <div class="text-petcomp">
          <h1>Conheça o PETComp</h1>
          <p>O Programa de Educação Tutorial de Ciência da Computação da UFMA foi criado em 1 de Setembro de 2007, tendo como tutor o professor Alexandre César Muniz de Oliveira, em 19 de Janeiro de 2016 o professor Geraldo Braz Junior tornou-se o novo tutor do grupo. E após sua excelente gestão, em 2019 assume o professor Luis Rivero. O PET Computação já realizou diversas atividades de pesquisa, ensino e extensão. Dentre algumas das atividades podemos citar minicursos, Projetos de Extensão, como por exemplo, ensino de pensamento computacional, organiza o Encontro Acadêmico de Computação (EAComp), desenvolvimento de sistemas, entre outros.
          </p>
          <a href="./sobre.php">Veja Mais ></a>
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