var seletor = document.querySelector(".seletor");
var sobre = document.querySelector("#revista-sobre");
var botoes = seletor.querySelectorAll(".btn-revista");
var revistas = document.querySelectorAll(".revistas")
// Quando a página for carregada, mostra a primeira versão da revista na página
document.addEventListener("DOMContentLoaded", () => {
  if(revistas.length > 0) {
    revistas[0].classList.remove("hide")
    revistas[0].classList.add("unhide")
  }   
})
// ...
// percorre cada botão
botoes.forEach(button => {
  button.addEventListener("click", () => { // adiciona  um listener esperando um evento de click a cada botão
    var numeroId = button.id.replace("btn-revista", ""); // se o click ocorrer, pega o id do botão que foi clicado
    revistas.forEach((revista) => {
      console.log(revista)
      console.log(revista.id)
      var numerorevista = revista.id.replace("revista", ""); // pega o id da revista
      if(numerorevista == numeroId) { // compara o id da revista e do botão clicado, se for igual
        if(revista.classList.contains("hide")) { // se a revista possuir a classe hide
          revista.classList.remove("hide") // remove a classe ride
          revista.classList.add("unhide") // adiciona a classe unhide
        }
       }
       else { // para todas as revistas que o id n foi igual ao do botão clicado
        if(revista.classList.contains("unhide")) { // se a revista possui a classe unhide
          revista.classList.remove("unhide") // remove a classe unhide
          revista.classList.add("hide") // adiciona a classe hide
        }
    }
    })
  });
});
