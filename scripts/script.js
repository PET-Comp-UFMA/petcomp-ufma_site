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
      } else if (currentNumber > targetNumber) {
        // Para lidar com condições inesperadas, limpa o intervalo se currentNumber ultrapassar targetNumber
        clearInterval(interval);
        element.textContent = '+' + targetNumber;
      }
    }, 1);
  });
}

// Executa a animação quando o DOM estiver pronto
document.addEventListener('DOMContentLoaded', function () {
  animateNumbers();
});

// Executa a animação novamente quando toda a página estiver carregada
window.addEventListener('load', function () {
  animateNumbers();
});




function adicionarImagensAnimadas(container, urls, intervalo) {
  let imagemIndex = 0;

  function mostrarProximaImagem() {
    const imagemAtual = container.querySelector('.imagemSobre:nth-child(' + (imagemIndex + 1) + ')');
    imagemAtual.style.display = 'none';

    imagemIndex = (imagemIndex + 1) % urls.length;

    const proximaImagem = container.querySelector('.imagemSobre:nth-child(' + (imagemIndex + 1) + ')');
    proximaImagem.style.display = 'block';
  }

  urls.forEach((url, index) => {
    const imagem = new Image();
    imagem.src = url;
    imagem.alt = `Imagem ${index + 1}`;
    imagem.classList.add('imagemSobre');

    container.appendChild(imagem);

    if (index === 0) {
      imagem.style.display = 'block';
    } else {
      imagem.style.display = 'none';
    }
  });

  setInterval(mostrarProximaImagem, intervalo);
}

document.addEventListener('DOMContentLoaded', function () {
  const imagensContainer = document.querySelector('.imagensSobrePet');
  const intervaloTrocaImagem = 3000; // Intervalo em milissegundos (3 segundos)

  const imagensUrls = [
    '../assets/images/photo-5.jpg',
    '../assets/images/photo-2.jpg',
    '../assets/images/photo-3.jpg',
  ]
  adicionarImagensAnimadas(imagensContainer, imagensUrls, intervaloTrocaImagem);
});




function adicionarImagemComAnimacao(container, urls, index) {
  const imagem = new Image();
  imagem.src = urls[index];
  imagem.alt = `Imagem ${index + 1}`;
  imagem.classList.add('imagem');

  imagem.onload = function () {
    container.appendChild(imagem);

    // Adiciona um pequeno atraso para criar a animação sequencial
    setTimeout(() => {
      imagem.style.opacity = '1';

      // Adiciona a próxima imagem recursivamente
      if (index < urls.length - 1) {
        adicionarImagemComAnimacao(container, urls, index + 1);
      }
    }, 1000); // Ajuste o valor para o tempo entre cada imagem
  };
}
document.addEventListener('DOMContentLoaded', function () {
  const imagemTriadeContainer = document.querySelector('.imagemTriade');

  const imagensUrls = [
    '../assets/images/photo-ensino.svg',
  '../assets/images/photo-pesquisa.svg',
  '../assets/images/photo-extensao.svg',
  ];

  // Inicia a adição das imagens recursivamente
  adicionarImagemComAnimacao(imagemTriadeContainer, imagensUrls, 0);
});



  