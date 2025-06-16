<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title> Registros | PETComp </title>

  <link rel="icon" href="./assets/images/logos/PETComp.png">

  <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@200;400&display=swap" rel="stylesheet">
  <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">

  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper/swiper-bundle.min.css" />

  <link rel="stylesheet" href="./styles/styles.css">
  <link rel="stylesheet" href="./styles/atividades.css">
  <link rel="stylesheet" href="./styles/registros.css">
</head>

<body>
  <?php include('header.php') ?>

  <div class="section-header">
    <h2>Registros PETComp</h2>
  </div>

  <div class="ano-section">
    <h2>2025</h2>

    <div class="atividade">
      <h3>ExploraComp 2025.1</h3>
      
      <div class="galeria" data-evento="exploracomp2025">
        
        
      </div>
    </div>

    <div class="atividade">
      <h3>Acalourada 2025.1</h3>
      <div class="galeria" data-evento="acalourada2025">


      </div>
    </div>
    <div class="atividade">
      <h3>Fábrica de Software</h3>
      <div class="subtitulo">
        <p>Congresso Nacional de Saúde e Tecnologia</p>
      </div>
      <div class="galeria" data-evento="cnst">
        
      </div>

      <div class="subtitulo">
        <p>Exploracomp</p>
      </div>
      <div class="galeria" data-evento="exploracompsite">

      </div>
    </div>

     <div class="atividade">
      <h3>Monitoria</h3>
      <div class="galeria">

        <div class="imagens-group">
            <img src="assets/2025/Monitoria2025/Monitoria1.png" class="horizontal">
            <img src="assets/2025/Monitoria2025/Monitoria2.png" class="horizontal">
        </div>

         <div class="imagens-group">
            <img src="assets/2025/Monitoria2025/Monitoria3.png" class="vertical">
        </div>

         <div class="imagens-group">
            <img src="assets/2025/Monitoria2025/Monitoria4.png" class="horizontal">
            <img src="assets/2025/Monitoria2025/Monitoria5.png" class="horizontal">
        </div>
      </div>
    </div>
  </div>

  <div class="ano-section">
    <h2>2024</h2>

    <div class="atividade">
      <h3>Acalourada 2024.2</h3>
      
      <div class="galeria" data-evento="acalourada2024_2">
        
        
      </div>
    </div>
  </div>

  <!-- Modal de imagem -->
  <div class="modal" id="imagemModal" onclick="fecharModal()">
    <button class="modal-close" onclick="fecharModal(event)">×</button>
    <img id="imagemExpandida" src="" alt="">
  </div>



  <!-- Botão voltar ao topo -->
  <button onclick="voltarAoTopo()" id="topo-btn" title="Voltar ao topo">↑</button>
  
  <?php include('footer.php') ?>

  <script src="./scripts/registros.js"></script>
  <script src="./scripts/script.js"></script>

</body>

</html>
