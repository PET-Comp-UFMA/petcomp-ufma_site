<?php 
require_once("conexao.php");

$queryRevistas = "SELECT id, titulo, capa, sobre, visualizar, icone, download FROM revista ORDER BY id ASC";
$resultRevistas = mysqli_query($mysqli, $queryRevistas);

$arrayRevistas = [];
if (mysqli_num_rows($resultRevistas) > 0) {
    while($row = mysqli_fetch_assoc($resultRevistas)) {
        $arrayRevistas[] = $row;  // cada row 
        // echo "\n";
        // echo "Id: " . $row['id'] . "titulo: " .$row['titulo'];
    }
} else {
    $arrayRevistas = []; // Mantém como array vazio se nenhuma revista for encontrada
} 
// Ao final do loop $arrayRevistas se torna um array de arrays associativos
?>
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

  <link rel="stylesheet" href="styles/styles.css">
  <link rel="stylesheet" href="styles/revista.css">

  <script src="https://unpkg.com/scrollreveal@4.0.0/dist/scrollreveal.min.js"></script>

</head>

<body>
  <?php include('header.php') ?>

  <main>
    <!--  Seletor das revistas -->
  <div class="seletor">
    <?php if (!empty($arrayRevistas)): ?>
      <?php foreach ($arrayRevistas as $revista): ?>
          <div id="<?php echo htmlspecialchars($revista['id']); ?>">
            <button id="btn-revista<?php echo htmlspecialchars($revista['id']); ?>" class="btn-revista">
              <img class="button-img" src="<?= htmlspecialchars($revista['icone'] ?? '')?>" alt="<?php echo htmlspecialchars($revista['id']) ?> Edição">  
            </button>
            <div class="title" style="display: flex; align-items: center;"> 
            </div>
          </div>
      <?php endforeach; ?>
    <?php else: ?>
      <p>Nenhuma revista encontrada.</p>
    <?php endif; ?>
    </div>

    <section class="sobre">
  <div id="revista-sobre" style="display: grid">
    <?php if (!empty($arrayRevistas)): ?>
      <?php foreach ($arrayRevistas as $revista): ?>
        <div id="revista<?php echo htmlspecialchars($revista['id']) ?>" class="revistas hide">
          <div class="container">
            <div class="section-header">
              <h2><?php echo htmlspecialchars($revista['titulo'] ?? '') ?></h2> 
            </div>
            <div class="galery-about">
              <div class="galery-about__container-image" id="img1">
                <img class="galery-about__img" src="<?php echo htmlspecialchars($revista['capa'] ?? '') ?>" alt="<?php echo htmlspecialchars($revista['titulo'] ?? '') ?>">
              </div>
            </div>
            <br>
            <p align="justify">
              <?php echo htmlspecialchars($revista['sobre'] ?? '') ?>
            </p>
            <br>
            <div style="height: 100px;">
              <a class="botao botao-abrir" target="_blank" href="<?php echo htmlspecialchars($revista['visualizar'] ?? '') ?>">
                Visualizar
              </a>
              <a class="botao botao-download" target="_blank" download="<?php echo basename($revista['download'] ?? '') ?>" 
                 href="<?php echo htmlspecialchars($revista['download'] ?? '') ?>">
                Download
              </a>
            </div>
          </div>
        </div>
      <?php endforeach; ?>
    <?php else: ?>
      <p>Nenhuma revista encontrada.</p>
    <?php endif; ?>
  </div>
</section>
  </main>

  <?php include('footer.php') ?>
  <script src="./scripts/revista.js"></script>
  <script src="./scripts/script.js"></script>
  <script src="/scripts/slader.js"></script>
  <script src="/scripts/scrollReveal.js"></script>
  
</body>

</html>
