
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
    console.log(conteudoIndex);

    var anterior = 1

    if(conteudoIndex==1) {
      nomeMonitoria = document.getElementById(`nomeMonitoria${anterior}`);
      nomeMonitoria.style.textDecoration = 'none';
      nomeMonitoria = document.getElementById(`nomeMonitoria${conteudoIndex}`);
      nomeMonitoria.style.textDecoration = 'underline';
      anterior = 1;
    }
    if(conteudoIndex==2) {
      nomeMonitoria = document.getElementById(`nomeMonitoria${anterior}`);
      nomeMonitoria.style.textDecoration = 'none';
      nomeMonitoria = document.getElementById(`nomeMonitoria${conteudoIndex}`);
      nomeMonitoria.style.textDecoration = 'underline';
      anterior=2;
    }
    if(conteudoIndex==3) {
      nomeMonitoria = document.getElementById(`nomeMonitoria${anterior}`);
      nomeMonitoria.style.textDecoration = 'none';
      nomeMonitoria = document.getElementById(`nomeMonitoria${conteudoIndex}`);
      nomeMonitoria.style.textDecoration = 'underline';
      anterior=3;
    }
    if(conteudoIndex==4) {
      nomeMonitoria = document.getElementById(`nomeMonitoria${anterior}`);
      nomeMonitoria.style.textDecoration = 'none';
      nomeMonitoria = document.getElementById(`nomeMonitoria${conteudoIndex}`);
      nomeMonitoria.style.textDecoration = 'underline';
      anterior=4;
    }
    if(conteudoIndex==5) {
      nomeMonitoria = document.getElementById(`nomeMonitoria${anterior}`);
      nomeMonitoria.style.textDecoration = 'none';
      nomeMonitoria = document.getElementById(`nomeMonitoria${conteudoIndex}`);
      nomeMonitoria.style.textDecoration = 'underline';
      anterior=5;
    }
  }