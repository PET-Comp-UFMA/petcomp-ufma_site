let lastActive;

function CloseAllDropdowns(active) {
  
  // função que fecha todos os dropdowns ativos, exceto o ultimo clicado

  let dropdowns = document.querySelectorAll(".dropdown [id]");
  
  dropdowns.forEach((cur) => {

    if (cur.classList.contains("dropdown-open")) {
      
      if (active != cur.getAttribute("id")) {
        let nameSection = cur.getAttribute("id").replace("dropdown-", "")
        DropdownSection(nameSection)  
      }
    }
  })
}

function DropdownSection(section) {

  // função que controla o dropdown do header

  document.getElementById(`dropdown-${section}`).classList.toggle(`show-dropdown-${section}`);
  document.getElementById(`dropdown-${section}`).classList.toggle(`dropdown-open`);
  let drops = document.querySelectorAll(".dropdown");


  drops.forEach((elem) => {
    elem.addEventListener("click", (event) => {

      let father = elem.parentNode;
      let dropdowns = elem.querySelector(".dropdown-open");

      if (dropdowns != null){
        let id = dropdowns.getAttribute("id")
        CloseAllDropdowns(id);
      }
    }) 
  })


  window.onclick = function(event) {
    
    if (!event.target.matches('.dropbtn')) {
      var dropdowns = document.getElementsByClassName(`dropdown-content-${section}`);
      var i;
      for (i=0; i<dropdowns.length; i++) {
        var openDropdowns = dropdowns[i];
        if (openDropdowns.classList.contains(`show-dropdown-${section}`)) {
          openDropdowns.classList.remove(`show-dropdown-${section}`);
        }
      }
    }


  } 
  
}

function openMenu() {
  document.getElementById("nav-bar").style.height = "100%";
}

function closeMenu() {
  document.getElementById("nav-bar").style.height = "0";
} 

var time;
var slideIndex = 0;
showSlides();

function clearTime() {
  clearTimeout(time);
}

function plusSlides() {
  showSlides(slideIndex);
  clearTime();
}

function showSlides() {
  var i;
  var slides = document.getElementsByClassName("slider-item");
  for (i = 0; i < slides.length; i++) {
    slides[i].style.display = "none";
  }
  slideIndex++;
  if (slideIndex > slides.length) {slideIndex = 1}
  slides[slideIndex-1].style.display = "block";
  time = setTimeout(showSlides, 4000);
}

var conteudoIndex = 2;
mostrarMonitorias(conteudoIndex);

function currentConteudo(n) {
  mostrarMonitorias(conteudoIndex = n);
}

function mostrarMonitorias(n) {
  var i;
  var conteudos = document.querySelectorAll('#conteudos')
  var buttons = document.querySelectorAll('.btn-monitoria')

    if (n > conteudos.lenght) {
    conteudoIndex = 1;
  }

  if (n < 1) {
    conteudoIndex = conteudos.length;
  }

  for (i = 0; i < conteudos.length; i++) {
    conteudos[i].style.display = "none";
  }

  for (i = 0; i < buttons.length; i++) {
    buttons[i].className = buttons[i].className.replace(" active", "");
  }

  conteudos[conteudoIndex-1].style.display = "grid";
  buttons[conteudoIndex-1].className += " active";
}
