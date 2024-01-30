// let lastActive;



function CloseAllDropdowns(active) {



  let dropdowns = document.querySelectorAll(".dropdown [id]");

  

  // se for undefined quer dizer que queremos fechar todos os dropdowns, senao, queremos fechar todos menos o ultmo

  if (active === undefined) {

    dropdowns.forEach((cur) => {

      if (cur.classList.contains("dropdown-open")) {

        let nameSection = cur.getAttribute("id").replace("dropdown-", "") 

        DropdownSection(nameSection)  

      }

    })

  } else {

    dropdowns.forEach((cur) => {

      if (cur.classList.contains("dropdown-open")) {        

        if (active != cur.getAttribute("id")) {

          let nameSection = cur.getAttribute("id").replace("dropdown-", "") 

          DropdownSection(nameSection)  

        }

      }

    })

  }

}



function DropdownSection(section) {



  // função que controla o dropdown do header



  document.getElementById(`dropdown-${section}`).classList.toggle(`show-dropdown-${section}`);

  document.getElementById(`dropdown-${section}`).classList.toggle(`dropdown-open`);

  let drops = document.querySelectorAll(".dropdown");





  drops.forEach((elem) => {

      

    elem.addEventListener("click", (event) => {



      // let father = elem.parentNode;

      let dropdowns = elem.querySelector(".dropdown-open");



      if (dropdowns != null){

        let id = dropdowns.getAttribute("id")

        CloseAllDropdowns(id);

      }

    }) 

  })





  window.onclick = function(event) {

    

    if (!event.target.matches('.dropbtn')) {

     

      // var dropdowns = document.getElementsByClassName(`dropdown-content-${section}`);

      // var i;

      // console.log(dropdowns)

      // for (i=0; i < dropdowns.length; i++) {

        

      //   var openDropdowns = dropdowns[i];

        

      //   if (openDropdowns.classList.contains(`show-dropdown-${section}`)) {

      //     console.log(openDropdowns)

      //     openDropdowns.classList.remove(`show-dropdown-${section}`);

      //     console.log(`apagou a classe show-dropdown-${section}`)

      //   }



      //   if (openDropdowns.classList.contains(`dropdown-open`)) {

      //     openDropdowns.classList.remove(`dropdown-open`);

      //     console.log("sexo2")

      //   }

      // } 



      CloseAllDropdowns();

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

//função que controla os numero da nossa historia e fazem crescer em ordemcresecente

  function animateNumbers() {
    const elements = document.querySelectorAll('.count');
    
    elements.forEach(element => {
      const targetNumber = parseInt(element.textContent.replace('+', ''), 10);
      element.textContent = '+0';

      let currentNumber = 0;
      const interval = setInterval(() => {
        currentNumber++;
        element.textContent = '+' + currentNumber;

        if (currentNumber === targetNumber) {
          clearInterval(interval);
        }
      }, 1); // Ajuste o intervalo conforme necessário para a velocidade desejada
    });
  }

  // Executar a animação quando o DOM estiver pronto
  document.addEventListener('DOMContentLoaded', function () {
    animateNumbers();
  });

  // Executar a animação novamente quando toda a página estiver carregada
  window.addEventListener('load', function () {
    animateNumbers();
  });






function mostrarMonitorias(n) {
  var i;
  var conteudoIndex = n;

  var conteudos = document.querySelectorAll('#conteudos');
  var buttons = document.querySelectorAll('.btn-monitoria');

  if (conteudos.length === 0) {
    console.error("Nenhum elemento com o ID 'conteudos' encontrado.");
    return;
  }

  if (n > conteudos.length) {
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

  if (conteudoIndex >= 1 && conteudoIndex <= conteudos.length) {
    conteudos[conteudoIndex - 1].style.display = "grid";
    buttons[conteudoIndex - 1].className += " active";
  } else {
    console.error("Índice de conteúdo inválido: " + conteudoIndex);
  }
}




