<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title> Sobre | PETComp </title>

  <link rel="icon" href="./assets/images/logos/PETComp.png">

  <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@200;400&display=swap" rel="stylesheet">
  <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">

  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
  <link rel="stylesheet" href="./styles/styles.css">
  <link rel="stylesheet" href="./styles/sobre.css">
</head>

<body>
  <?php include('header.php') ?>

  <main>
    <section id="sobre">
      <div class="container">
        <div class="section-header">
          <!-- para mudar a cor é so acessar essa clase em style.css -->
          <h2>Sobre Nós</h2>
        </div>

        <p style="text-align: justify;">
          O Programa de Educação Tutorial de Ciência da Computação da UFMA foi criado em 1 de Setembro de 2007, tendo como tutor o Professor Alexandre César Muniz de Oliveira, em 19 de Janeiro de 2016 o Professor Geraldo Braz Junior tornou-se o novo tutor do grupo. E após sua excelente gestão, em 2019 assume o Professor Luis Rivero. O PET Computação já realizou diversas atividades de pesquisa, ensino e extensão.
        </p>
        <p style="text-align: justify;">
          Dentre as atividades desenvolvidas pelo PETComp podemos citar Acalourada (recepção dos calouros), Grupo de Acompanhamento ao Discente (GAD - Monitoria), Fábrica de Software (desenvolvimento de sites, apps como MAMAprev, Peça em casa e SOS MAMA), os petianos fazem pesquisas nas mais diversas áreas no laboratórios onde o PETComp é a porta de entrada da maioria, tivemos a produção de diversos minicursos e oficinas, produção e organização de eventos (EACOMP, ERCEMAPI, eJIM 2020 e ENEPET 2020) e o PodComp, o podcast do PETComp.
        </p>
        <p style="text-align: justify;">
          Para participar do nosso grupo, sempre tem seletivos durante o ano, basta acompanhar as redes sociais Instagram e Twitter @petcompufma.
        </p>

<!-- Gallery -->


        <div class="gallery">
          <figure class="gallery__item gallery__item--1">
          <img
            src="./assets/images/photo-6-about.jpg"
            class="cover"
            alt=""
          />
          </figure>
          <figure class="gallery__item gallery__item--2">
          <img
            src="./assets/images/photo-7-big.jpg"
            class="cover"
            alt=""
          />
          </figure>
          <figure class="gallery__item gallery__item--3">
          <img
            src="./assets/images/photo-8-med.jpg"
            class="cover"
            alt=""
          />
          </figure>
          <figure class="gallery__item gallery__item--4">
          <img
            src="./assets/images/photo-2-big.jpg"
            class="cover"
            alt=""
          />
          </figure>
          <figure class="gallery__item gallery__item--5">
          <img
            src="./assets/images/photo-5-big.jpg"
            class="cover"
            alt=""
          />
          </figure>
          <figure class="gallery__item gallery__item--6">
          <img
            src="./assets/images/photo-3-big.jpg"
            class="cover"
            alt=""
          />
          </figure>
          <figure class="gallery__item gallery__item--7">
          <img
            src="./assets/images/photo-4-big.jpg"
            class="cover"
            alt=""
          />
          </figure>
        </div>
      </div>
    </section>
  </main>

  <?php include('footer.php') ?>
  <script src="./scripts/script.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</body>

</html>