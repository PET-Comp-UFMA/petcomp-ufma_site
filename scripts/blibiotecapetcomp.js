
var conteudoIndex = 3;

mostrarMonitorias(conteudoIndex);



function currentConteudo(n) {

  mostrarMonitorias(conteudoIndex = n);

}
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
  
  