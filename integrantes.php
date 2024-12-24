<?php
   require_once("conexao.php");
   
   $limit = 20;
   
   // Sanitizar a entrada de 'page' para garantir que seja um número inteiro válido.
   $page = isset($_GET['page']) ? filter_var($_GET['page'], FILTER_VALIDATE_INT) : null;
   
   // Garantir que o número da página seja positivo e maior que zero.
   $page = ($page > 0) ? $page : 1;
   
   $start = max(($page - 2) * $limit, 0);  // O cálculo correto para a páginação
   
   if ($start < 0) {
       $start = 0;
   }
   
   mysqli_select_db($mysqli, $bd) or die("Could not select database");
   
   // Consultas preparadas para obter orientadores e integrantes
   if ($page == 1) {
       $arrayOrientadoresAtivos = [];
       $arrayIntegrantes = [];
       $arrayVoluntarios = [];
   
       $queryOrientadoresAtivos = "SELECT id, primeiro_nome, ultimo_nome, imagem, sobre, social FROM petianos WHERE ativo = 1 AND orientador = 1 ORDER BY ano DESC, periodo DESC";
       $queryIntegrantes = "SELECT id, primeiro_nome, ultimo_nome, imagem, sobre, social FROM petianos WHERE ativo = 1 AND voluntario = 0 AND orientador = 0 ORDER BY ano DESC, periodo DESC";
       $queryVoluntarios = "SELECT id, primeiro_nome, ultimo_nome, imagem, sobre, social FROM petianos  WHERE ativo = 1 AND voluntario = 1 AND orientador = 0 ORDER BY ano DESC, periodo DESC";
       // Preparando e executando as consultas
       $stmtOrientadoresAtivos = mysqli_prepare($mysqli, $queryOrientadoresAtivos);
       mysqli_stmt_execute($stmtOrientadoresAtivos);
       $resultOrientadoresAtivos = mysqli_stmt_get_result($stmtOrientadoresAtivos);
       while ($row = mysqli_fetch_assoc($resultOrientadoresAtivos)) {
           $arrayOrientadoresAtivos[] = $row;
       }
   
       $stmtIntegrantes = mysqli_prepare($mysqli, $queryIntegrantes);
       mysqli_stmt_execute($stmtIntegrantes);
       $resultIntegrantes = mysqli_stmt_get_result($stmtIntegrantes);
       while ($row = mysqli_fetch_assoc($resultIntegrantes)) {
           $arrayIntegrantes[] = $row;
       }
   
       $stmtVoluntarios = mysqli_prepare($mysqli, $queryVoluntarios);
       mysqli_stmt_execute($stmtVoluntarios);
       $resultVoluntarios = mysqli_stmt_get_result($stmtVoluntarios);
       while ($row = mysqli_fetch_assoc($resultVoluntarios)) {
           $arrayVoluntarios[] = $row;
       }
   }
   
   // Consultas para orientadores e integrantes inativos com paginação
   $queryOrientadoresInativos = "SELECT id, primeiro_nome, ultimo_nome, imagem, sobre, social FROM petianos WHERE ativo = 0 AND orientador = 1 ORDER BY ano DESC, periodo DESC LIMIT ?, ?";
   $queryInativos = "SELECT id, primeiro_nome, ultimo_nome, imagem, sobre, social FROM petianos WHERE ativo = 0 AND orientador = 0 ORDER BY id DESC LIMIT ?, ?";
   $quantidadepessoas = "SELECT count(id) AS id FROM petianos";
   
   // Preparando e executando a consulta para a quantidade total de pessoas
   $stmtQuantidadePessoas = mysqli_prepare($mysqli, $quantidadepessoas);
   mysqli_stmt_execute($stmtQuantidadePessoas);
   $resultQuantidadePessoas = mysqli_stmt_get_result($stmtQuantidadePessoas);
   $custquantidade = mysqli_fetch_assoc($resultQuantidadePessoas);
   $total = $custquantidade['id'];
   $pages = ceil($total / $limit);
   $previous = $page - 1;
   $next  = $page + 1;
   
   // Preparando as consultas para orientadores e integrantes inativos com os parâmetros de paginação
   $stmtOrientadoresInativos = mysqli_prepare($mysqli, $queryOrientadoresInativos);
   mysqli_stmt_bind_param($stmtOrientadoresInativos, 'ii', $start, $limit);
   mysqli_stmt_execute($stmtOrientadoresInativos);
   $resultOrientadoresInativos = mysqli_stmt_get_result($stmtOrientadoresInativos);
   
   $arrayOrientadoresInativos = [];
   while ($row = mysqli_fetch_assoc($resultOrientadoresInativos)) {
       $arrayOrientadoresInativos[] = $row;
   }
   
   $stmtInativos = mysqli_prepare($mysqli, $queryInativos);
   mysqli_stmt_bind_param($stmtInativos, 'ii', $start, $limit);
   mysqli_stmt_execute($stmtInativos);
   $resultInativos = mysqli_stmt_get_result($stmtInativos);
   
   $arrayInativos = [];
   while ($row = mysqli_fetch_assoc($resultInativos)) {
       $arrayInativos[] = $row;
   }
   
   // Verificar se a página está fora dos limites
   if ($page < 1) {
       header("Location: integrantes.php?page=1");
       exit();
   } elseif ($page > $pages) {
       header("Location: integrantes.php?page=$pages");
       exit();
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
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
      <link rel="stylesheet" href="./styles/integrantes.css">
      <link rel="stylesheet" href="./styles/styles.css">
   </head>
   <body>
      <?php include('header.php') ?>
      <?php if($page == 1): ?>
      <?php if(count($arrayIntegrantes) > 0 && count($arrayOrientadoresAtivos) > 0): ?>
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
               <?php if ($orientadorAtivo['social'] || $orientadorAtivo['sobre']): ?>
               <div class="expand">
                  <button class="button-showmore" data-id="<?= $orientadorAtivo["id"] ?>">
                  <i class="fa fa-chevron-down" style="font-size: 20px;"></i>
                  </button>
               </div>
               <?php endif; ?>
            </div>
            <?php if ($orientadorAtivo['social'] || $orientadorAtivo['sobre']): ?>
            <div class="popup hide" id="popup-<?= $orientadorAtivo["id"] ?>">
               <div class="popup-content">
                  <button class="popup-close">&times;</button>
                  <?php if ($orientadorAtivo["sobre"]): ?>
                  <h2 class="sobre-name">Sobre <?php echo htmlspecialchars($orientadorAtivo["primeiro_nome"]) ?> <?php echo htmlspecialchars($orientadorAtivo["ultimo_nome"]) ?></h2>
                  <p class="sobre-text" style="text-align: justify;"><?php echo htmlspecialchars($orientadorAtivo["sobre"]) ?></p>
                  <?php endif; ?>
                  <?php if ($orientadorAtivo['social']): ?>
                  <h2>Você pode encontrar <?php echo htmlspecialchars($orientadorAtivo["primeiro_nome"]) ?> <?php echo htmlspecialchars($orientadorAtivo["ultimo_nome"]) ?> em</h2>
                  <div class="social-logos">
                     <?php $socialtext = $orientadorAtivo["social"]; ?>
                     <?php $socialpairs = explode(';', $socialtext); ?>
                     <?php foreach ($socialpairs as $pair): ?>
                     <?php if (strpos($pair, '=')): ?>
                     <?php list($platform, $link) = explode('=', $pair); ?>
                     <div class="social-logo">
                        <a href="<?= htmlspecialchars(trim($link, '"')) ?>" target="_blank">
                        <i class="fa fa-<?= htmlspecialchars(trim($platform)) ?>" style="font-size:40px;"></i>
                        </a>
                     </div>
                     <?php endif; ?>
                     <?php endforeach; ?>
                  </div>
                  <?php endif; ?>
               </div>
            </div>
            <?php endif; ?>
         </div>
         <?php endforeach ?>
         <div class="discentes">
            <?php foreach ($arrayIntegrantes as $integrante): ?>
            <div class="card">
               <div class="card-img">
                  <figure>
                     <img src="./assets/images/integrantes/<?= $integrante["imagem"] ?>" alt="">
                  </figure>
               </div>
               <div class="job-img"><i class="fas fa-user-graduate"></i></div>
               <div class="card-name">
                  <h3><?= $integrante["primeiro_nome"] ?> <?= $integrante["ultimo_nome"] ?></h3>
                  <h6>Orientando</h6>
               </div>
               <?php if ($integrante['social'] || $integrante['sobre']): ?>
               <div class="expand">
                  <button class="button-showmore" data-id="<?= $integrante["id"] ?>">
                  <i class="fa fa-chevron-down" style="font-size: 20px;"></i>
                  </button>
               </div>
               <?php endif; ?>
            </div>
            <?php if ($integrante['social'] || $integrante['sobre']): ?>
            <div class="popup hide" id="popup-<?= $integrante["id"] ?>">
               <div class="popup-content">
                  <button class="popup-close">&times;</button>
                  <?php if ($integrante["sobre"]): ?>
                  <h2 class="sobre-name">Sobre <?php echo htmlspecialchars($integrante["primeiro_nome"]) ?> <?php echo htmlspecialchars($integrante["ultimo_nome"]) ?></h2>
                  <p class="sobre-text" style="text-align: justify;"><?php echo htmlspecialchars($integrante["sobre"]) ?></p>
                  <?php endif; ?>
                  <?php if ($integrante['social']): ?>
                  <h2>Você pode encontrar <?php echo htmlspecialchars($integrante["primeiro_nome"]) ?> <?php echo htmlspecialchars($integrante["ultimo_nome"]) ?> em</h2>
                  <div class="social-logos">
                     <?php $socialtext = $integrante["social"]; ?>
                     <?php $socialpairs = explode(';', $socialtext); ?>
                     <?php foreach ($socialpairs as $pair): ?>
                     <?php if (strpos($pair, '=')): ?>
                     <?php list($platform, $link) = explode('=', $pair); ?>
                     <div class="social-logo">
                        <a href="<?= htmlspecialchars(trim($link, '"')) ?>" target="_blank">
                        <i class="fa fa-<?= htmlspecialchars(trim($platform)) ?>" style="font-size:40px;"></i>
                        </a>
                     </div>
                     <?php endif; ?>
                     <?php endforeach; ?>
                  </div>
                  <?php endif; ?>
               </div>
            </div>
            <?php endif; ?>
            <?php endforeach; ?>
         </div>
         <?php endif; ?>
         <?php if(count($arrayVoluntarios) > 0): ?>       
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
                  <?php if ($voluntario['social'] || $voluntario['sobre']): ?>
               <div class="expand">
                  <button class="button-showmore" data-id="<?= $voluntario["id"] ?>">
                  <i class="fa fa-chevron-down" style="font-size: 20px;"></i>
                  </button>
               </div>
               <?php endif; ?>
            </div>
            <?php if ($voluntario['social'] || $voluntario['sobre']): ?>
            <div class="popup hide" id="popup-<?= $voluntario["id"] ?>">
               <div class="popup-content">
                  <button class="popup-close">&times;</button>
                  <?php if ($voluntario["sobre"]): ?>
                  <h2 class="sobre-name">Sobre <?php echo htmlspecialchars($voluntario["primeiro_nome"]) ?> <?php echo htmlspecialchars($voluntario["ultimo_nome"]) ?></h2>
                  <p class="sobre-text" style="text-align: justify;"><?php echo htmlspecialchars($voluntario["sobre"]) ?></p>
                  <?php endif; ?>
                  <?php if ($voluntario['social']): ?>
                  <h2>Você pode encontrar <?php echo htmlspecialchars($voluntario["primeiro_nome"]) ?> <?php echo htmlspecialchars($voluntario["ultimo_nome"]) ?> em</h2>
                  <div class="social-logos">
                     <?php $socialtext = $voluntario["social"]; ?>
                     <?php $socialpairs = explode(';', $socialtext); ?>
                     <?php foreach ($socialpairs as $pair): ?>
                     <?php if (strpos($pair, '=')): ?>
                     <?php list($platform, $link) = explode('=', $pair); ?>
                     <div class="social-logo">
                        <a href="<?= htmlspecialchars(trim($link, '"')) ?>" target="_blank">
                        <i class="fa fa-<?= htmlspecialchars(trim($platform)) ?>" style="font-size:40px;"></i>
                        </a>
                     </div>
                     <?php endif; ?>
                     <?php endforeach; ?>
                  </div>
                  <?php endif; ?>
               </div>
            </div>
            <?php endif; ?>
                  <?php endforeach ?>
               </div>
            </div>
         </div>
         <?php endif;?>         
         <!-- Ex Integrantes-->
      </div>
      <?php else: ?>
      <?php if(count($arrayInativos) > 0):?>
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
               <?php if ($orientadorInativo['social'] || $orientadorInativo['sobre']): ?>
               <div class="expand">
                  <button class="button-showmore" data-id="<?= $orientadorInativo["id"] ?>">
                  <i class="fa fa-chevron-down" style="font-size: 20px;"></i>
                  </button>
               </div>
               <?php endif; ?>
            </div>
            <?php if ($orientadorInativo['social'] || $orientadorInativo['sobre']): ?>
            <div class="popup hide" id="popup-<?= $orientadorInativo["id"] ?>">
               <div class="popup-content">
                  <button class="popup-close">&times;</button>
                  <?php if ($orientadorInativo["sobre"]): ?>
                  <h2 class="sobre-name">Sobre <?php echo htmlspecialchars($orientadorInativo["primeiro_nome"]) ?> <?php echo htmlspecialchars($orientadorInativo["ultimo_nome"]) ?></h2>
                  <p class="sobre-text" style="text-align: justify;"><?php echo htmlspecialchars($orientadorInativo["sobre"]) ?></p>
                  <?php endif; ?>
                  <?php if ($orientadorInativo['social']): ?>
                  <h2>Você pode encontrar <?php echo htmlspecialchars($orientadorInativo["primeiro_nome"]) ?> <?php echo htmlspecialchars($orientadorInativo["ultimo_nome"]) ?> em</h2>
                  <div class="social-logos">
                     <?php $socialtext = $orientadorInativo["social"]; ?>
                     <?php $socialpairs = explode(';', $socialtext); ?>
                     <?php foreach ($socialpairs as $pair): ?>
                     <?php if (strpos($pair, '=')): ?>
                     <?php list($platform, $link) = explode('=', $pair); ?>
                     <div class="social-logo">
                        <a href="<?= htmlspecialchars(trim($link, '"')) ?>" target="_blank">
                        <i class="fa fa-<?= htmlspecialchars(trim($platform)) ?>" style="font-size:40px;"></i>
                        </a>
                     </div>
                     <?php endif; ?>
                     <?php endforeach; ?>
                  </div>
                  <?php endif; ?>
               </div>
            </div>
            <?php endif; ?>    
            <?php endforeach ?>
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
                  <?php if ($inativos['social'] || $inativos['sobre']): ?>
               <div class="expand">
                  <button class="button-showmore" data-id="<?= $inativos["id"] ?>">
                  <i class="fa fa-chevron-down" style="font-size: 20px;"></i>
                  </button>
               </div>
               <?php endif; ?>
               </div>
                  <?php if ($inativos['social'] || $inativos['sobre']): ?>
                  <div class="popup hide" id="popup-<?= $inativos["id"] ?>">
                     <div class="popup-content">
                        <button class="popup-close">&times;</button>
                        <?php if ($inativos["sobre"]): ?>
                        <h2 class="sobre-name">Sobre <?php echo htmlspecialchars($inativos["primeiro_nome"]) ?> <?php echo htmlspecialchars($inativos["ultimo_nome"]) ?></h2>
                        <p class="sobre-text" style="text-align: justify;"><?php echo htmlspecialchars($inativos["sobre"]) ?></p>
                        <?php endif; ?>
                        <?php if ($inativos['social']): ?>
                        <h2>Você pode encontrar <?php echo htmlspecialchars($inativos["primeiro_nome"]) ?> <?php echo htmlspecialchars($inativos["ultimo_nome"]) ?> em</h2>
                        <div class="social-logos">
                           <?php $socialtext = $inativos["social"]; ?>
                           <?php $socialpairs = explode(';', $socialtext); ?>
                           <?php foreach ($socialpairs as $pair): ?>
                           <?php if (strpos($pair, '=')): ?>
                           <?php list($platform, $link) = explode('=', $pair); ?>
                           <div class="social-logo">
                              <a href="<?= htmlspecialchars(trim($link, '"')) ?>" target="_blank">
                              <i class="fa fa-<?= htmlspecialchars(trim($platform)) ?>" style="font-size:40px;"></i>
                              </a>
                           </div>
                           <?php endif; ?>
                           <?php endforeach; ?>
                        </div>
                        <?php endif; ?>
                     </div>
                  </div>
                  <?php endif; ?>
               <?php endforeach ?>
            </div>
         </div>
      </div>
      <?php endif; ?>
      <?php endif; ?>
      <nav>
         <ul class="pagination">
            <li class="page-item" id="previous">
               <a class="page-link" href="integrantes.php?page=<?= $previous; ?>" aria-label="Previous">
               <span aria-hidden="true">&laquo;</span>
               <span class="sr-only">Previous</span>
               </a>
            </li>
            <?php for ($i = 1; $i<=$pages; $i++): ?>
            <li class="page-item"><a class="page-link" href="integrantes.php?page=<?= $i; ?>"><?= $i; ?></a></li>
            <?php endfor; ?>
            <li class="page-item" id="next">
               <a class="page-link" href="integrantes.php?page=<?= $next; ?>" aria-label="Next">
               <span aria-hidden="true">&raquo;</span>
               <span class="sr-only">Next</span>
               </a>
            </li>
         </ul>
      </nav>
      <?php include('footer.php') ?>
   </body>
   <script src="./scripts/integrantes.js"></script>
   <script src="./scripts/script.js"></script>
</html>