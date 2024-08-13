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
var milisseconds = 4000;
var slideIndex = document.getElementsByClassName("slider-item").length-1;

showSlides();



function clearTime() {

  clearTimeout(time);

}



function plusSlides() {

  showSlides(slideIndex);

  clearTime();

}

// carousel
let next = document.getElementsByClassName("next")[0];
let prev = document.getElementsByClassName("preview")[0];
function showSlides() {
  let slides = document.getElementsByClassName("slider-item");
  for (let i = 0; i < slides.length; i++) {
    slides[i].style.display = "none";
  }
  slideIndex++;
  if (slideIndex >= slides.length) {
    slideIndex = 0;
  }
  else if (slideIndex < 0) {
    slideIndex = document.getElementsByClassName("slider-item").length;
  }
  slides[slideIndex].style.display = "block";
  clearTimeout(time); // Clear the timer
  time = setTimeout(showSlides, milisseconds); // Set the timer to automatically advance to the next slide after 4 seconds
}
// next botton
function nextSlides() {
  let slides = document.getElementsByClassName("slider-item");
  for (let i = 0; i < slides.length; i++) {
    slides[i].style.display = "none";
  }
  if (slideIndex >= slides.length) {
    slideIndex = 0;
  }
  else if (slideIndex < 0) {
    slideIndex = document.getElementsByClassName("slider-item").length;
  }
  slides[slideIndex].style.display = "block";
  clearTimeout(time);
  time = setTimeout(showSlides, milisseconds);
}
// prev botton
function decSlides() {
  let slides = document.getElementsByClassName("slider-item");
  for (let i = 0; i < slides.length; i++) {
    slides[i].style.display = "none";
  }
  slides[slideIndex].style.display = "block";
  clearTimeout(time); 
  time = setTimeout(showSlides, milisseconds);
}
// eventListener
document.addEventListener("DOMContentLoaded", function() { 
  prev.addEventListener("click", function() {
    slideIndex--;
    if (slideIndex < 0) {
      slideIndex = document.getElementsByClassName("slider-item").length-1;
    }
    decSlides();
  });
  next.addEventListener("click", function() {
    slideIndex++;
    if (slideIndex > document.getElementsByClassName("slider-item").length) {
      slideIndex = 0;
    }
    nextSlides();
  });
}); 





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
      
        clearInterval(interval);
        element.textContent = '+' + targetNumber;
      }
    }, 1);
  });
}


document.addEventListener('DOMContentLoaded', function () {
  animateNumbers();
});


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
  const intervaloTrocaImagem = 3000;

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

    
    setTimeout(() => {
      imagem.style.opacity = '1';

      
      if (index < urls.length - 1) {
        adicionarImagemComAnimacao(container, urls, index + 1);
      }
    }, 1000); 
  };
}
document.addEventListener('DOMContentLoaded', function () {
  const imagemTriadeContainer = document.querySelector('.imagemTriade');

  const imagensUrls = [
    '../assets/images/photo-ensino.svg',
  '../assets/images/photo-pesquisa.svg',
  '../assets/images/photo-extensao.svg',
  ];

 
  adicionarImagemComAnimacao(imagemTriadeContainer, imagensUrls, 0);
});



  