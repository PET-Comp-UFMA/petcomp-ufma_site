<header>
  <div class="logos">
    <a href="./index.php"><img src="./assets/images/logos/PETComp.png" alt="Logo PETComp UFMA" class="pet-logo"></a>
  </div>
  <nav id="nav-bar" class="overlay">
    <img src="./assets/svg/close_black_24dp.svg" alt="" class="close-btn" onclick="closeMenu()">
    <div class="overlay-content">
      <ul>
        <li>
          <button>
            <a href="./index.php">Início</a>
          </button>
        </li>
        <li>
          <div class="dropdown">
            <button onclick="DropdownSection('sobre')" class="dropbtn">
              Conheça o PETComp
              <span class="material-icons dropbtn">
                arrow_drop_down
              </span>
            </button>
            <div id="dropdown-sobre" class="dropdown-content-sobre">
              <a href="./sobre.php">Sobre Nós</a>
              <a href="./integrantes.php">Integrantes</a>
            </div>
          </div>
        </li>
        <li>
          <div class="dropdown">
            <button onclick="DropdownSection('projetos')" class="dropbtn">
              Projetos
              <span class="material-icons dropbtn">
                arrow_drop_down
              </span>
            </button>

            <div id="dropdown-projetos" class="dropdown-content-projetos">
              <a href="./monitoria.php">Monitoria</a>
              <a href="./desenvolvimento.php">Fáb. de Software</a>
              <a href="./minicursos.php">Minicursos e Oficinas</a>
            </div>
          </div>
        </li>
        <li>
        <div class="dropdown">
            <button onclick="DropdownSection('publicacoes')" class="dropbtn">
              Publicações
              <span class="material-icons dropbtn">
                arrow_drop_down
              </span>
            </button>

            <div id="dropdown-publicacoes" class="dropdown-content-publicacoes">
              <a href="./publicacoes.php">Trabalhos Publicados</a>
              <a href="./revista.php" >Revista PETComp</a>
              <a href="./banners.php">Banners PETComp</a>
            </div>
          </div>
        </li>
        <li>
          <button><a href="./noticias.php">Notícias</a></button>
        </li>
        <li>
          <button><a href="./registros.php">Registros</a></button>
        </li>
        <li>
          <div class="dropdown">
            <button onclick="DropdownSection('produtos')" class="dropbtn">
              Produtos
              <span class="material-icons dropbtn">
                arrow_drop_down
              </span>
            </button>

            <div id="dropdown-produtos" class="dropdown-content-produtos">
              <a href="./biblioteca-petcomp-monitoria.php">Biblioteca PETComp</a>
              <a href="./produtos-podcomp.php">PodCast</a>
              <!-- <a href="./produtos-sites.php">Sites</a> -->
            </div>
        </li>
        <li>
          <button><a href="./eventos.php">Eventos</a></button>
        </li>
      </ul>
    </div>
  </nav>
  <img src="./assets/svg/menu_black_24dp.svg" alt="" class="open-btn" onclick="openMenu()">
</header>