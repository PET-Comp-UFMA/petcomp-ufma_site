<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title> Integrantes | PETComp </title>
  
    <link rel="icon" href="./assets/images/logos/PETComp.png">
  
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Basic&display=swap" rel="stylesheet">
    <!-- CSS only -->
    
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" integrity="sha512-iBBXm8fW90+nuLcSKlbmrPcLa0OT92xO1BIsZ+ywDWZCvqsWgccV3gFoRBv0z+8dLJgyAHIhR35VZc2oM/gI1w==" crossorigin="anonymous" /> 
    <link rel="stylesheet" href="./styles/styles.css">
    <link rel="stylesheet" href="./styles/integrantes.css">
  </head>
<body>
  <?php include('header.php') ?>

  <div class="container">
    <div class="section-header">
      <h2>Integrantes</h2>
    </div>


    <div class="integrantes">
      <div class="tutores">
        <div class="card">
          <div class="card-img">
            <figure>
              <img src="./assets/images/integrantes/lucho.jpg" alt="">
            </figure>
          </div>
          <div class="job-img"><i class="fas fa-chalkboard-teacher"></i></div>
          <div class="card-name">
            <h3>Luis Rivero</h3>
            <h6>Orientador</h6>
          </div>
        </div>
      </div>
      
      <div class="discentes"></div>

      <div class="section-header">
        <h2>Voluntários</h2>
      </div>
      <!-- Voluntários-->
      <div class="integrantes voluntarios">
        <div class="discentes"></div>
      </div>
      <!-- Ex Integrantes-->
      <div class="section-header">
        <h2>Ex-Integrantes</h2>
      </div>

      <div class="integrantes ex">
        <div class="tutores">
          <!-- Card -->
          <div class="card">
            <div class="card-img">
              <figure>
                <img src="./assets/images/integrantes/Geraldo Braz.jpg " alt="">
              </figure>
            </div>
            <div class="job-img"><i class="fas fa-chalkboard-teacher"></i></div>
            <div class="card-name">
              <h3>Geraldo Braz</h3>
              <h6>Orientador</h6>
            </div>
          </div>
          <!-- Card -->
          <!-- Card -->
          <div class="card">
            <div class="card-img">
              <figure>
                <img src="./assets/images/integrantes/Alexandre Oliveira.jpg " alt="">
              </figure>
            </div>
            <div class="job-img"><i class="fas fa-chalkboard-teacher"></i></div>
            <div class="card-name">
              <h3>Alexandre Oliveira</h3>
              <h6>Orientador</h6>
            </div>
          </div>
          </div>
        <div class="discentes ex"></div>
      </div>
  </div>

  <?php include('footer.php') ?>
  
  <script src="./scripts/integrantes.js"></script>
  <script src="./scripts/script.js"></script>
</body>
</html>
