
var conteudoIndex = 3;

mostrarMonitorias(conteudoIndex);



function currentConteudo(n) {

  mostrarMonitorias(conteudoIndex = n);

}
function mostrarMonitorias(n) {
    var i;
    var conteudoIndex = n;
    
    // nomeMonitoria = document.getElementById(`nomeMonitoria${conteudoIndex}`);
    // nomeMonitoria.style.textDecoration = 'underline';

    var conteudos = document.querySelectorAll('#conteudos');
    var buttons = document.querySelectorAll('.btn-monitoria');
    var nomeMonitoria = document.querySelectorAll('.nomeMonitoria');
  
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

    for(i=0;i<nomeMonitoria.length;i++){
      nomeMonitoria[i].classList.remove('underline');
    }
  
    if (conteudoIndex >= 1 && conteudoIndex <= conteudos.length) {
      conteudos[conteudoIndex - 1].style.display = "grid";
      buttons[conteudoIndex - 1].className += " active";
      nomeMonitoria[conteudoIndex - 1].classList.add('underline');
    } else {
      console.error("Índice de conteúdo inválido: " + conteudoIndex);
    }
    console.log(conteudoIndex);
  }