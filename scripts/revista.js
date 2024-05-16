
var conteudoIndex = 3;

mostrarRevista(conteudoIndex);



function currentConteudo(n) {

  mostrarRevista(conteudoIndex = n);

}

function mostrarRevista(n) {
  var i;
  var conteudoIndex = n;
  
  //nomeMonitoria = document.getElementById(`nomeMonitoria${conteudoIndex}`);
  //nomeMonitoria.style.textDecoration = 'underline';

  var conteudos = document.querySelectorAll('#revista-sobre');
  var buttons = document.querySelectorAll('#btn-revista');

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
    buttons[i].className = buttons[i].classList.remove('active');
  }

  if (conteudoIndex >= 1 && conteudoIndex <= conteudos.length) {
    conteudos[conteudoIndex - 1].style.display = "grid";
    buttons[conteudoIndex - 1].classList.add('active');
  } else {
    console.error("Índice de conteúdo inválido: " + conteudoIndex);
  }
  console.log(conteudoIndex);

  var anterior = 1

} 
  