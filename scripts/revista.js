const data = [
  {
      id: 1,
      edicao: "1A",
      titulo: "1º Edição - Revista PET Computação",
      capa: "./assets/revistas/1a_edicao/revista_1a_edicao_capa.png",
      sobre: "O Programa de Educação Tutorial em Computação (PETComp) disponibiliza a revista PETComp, com o objetivo de divulgar ao público os variados projetos nos quais nosso PET está envolvido. Os leitores terão acesso a diversos artigos, além de notícias sobre eventos e outras iniciativas do grupo. Publicada no primeiro semestre de 2024, a primeira edição da revista já pode ser acessada.",
      visualizar: "https://online.fliphtml5.com/hyccq/wkkw/",
      downloadName: "Revista PETComp 1ª Edição",
      download: "/assets/revistas/1a_edicao/revista_1a_Edicao.pdf"
  }
  ,
  {
    id: 2,
    edicao: "2A",
    titulo: "2º Edição - Revista PET Computação",
    capa: "./assets/revistas/1a_edicao/revista_1a_edicao_capa.png",
    sobre: "sfdrwrwrw",
    visualizar: "https://online.fliphtml5.com/hyccq/wkkw/",
    downloadName: "Revista PETComp 2ª Edição",
    download: "/assets/revistas/1a_edicao/revista_1a_Edicao.pdf"
},
  
];

const revistaCriarDivs = function (item) {
  return `
      <div style="display: grid">
        <div class="container">
            <div class="section-header">
                <h2>${item.titulo}</h2>
            </div>
            <div class="galery-about">
                <div class="galery-about__container-image" id="img1">
                    <img class="galery-about__img" src="${item.capa}">
                </div>
            </div>
            </br>
            <p align="justify">
            ${item.sobre}
            </p>
            </br>
            <div style="height: 100px;" >
                <a class="botao botao-abrir" target="_blank" href="${item.visualizar}">
                Visualizar
                </a>
                <a class="botao botao-download" target="_blank" download="${item.downloadName}" 
                    href="${item.download}">
                    Download
                </a>
            </div>
        </div>
      </div>
      
  `;
};

mostrarRevista(2)

function mostrarRevista(n) {
  var i;
  var conteudoIndex = n;

  var conteudos = document.querySelectorAll('#revista-sobre');
  var buttons = document.querySelectorAll('#btn-revista');
  var btnTextos = document.querySelectorAll('#btn-text');

  if (conteudos.length === 0) {
    console.error("Nenhum elemento com o ID 'conteudos' encontrado.");
    return;
  }

  if (n < 1) {
    conteudoIndex = conteudos.length;
  }
  
  for (i = 0; i < buttons.length; i++) {
    buttons[i].classList.remove('active');
  }

  for(i=0;i<btnTextos.length;i++){
    btnTextos[i].classList.remove('underline');
  }

  buttons[conteudoIndex - 1].classList.add('active');
  btnTextos[conteudoIndex-1].classList.add('underline');
  
  conteudos.forEach(conteudo => conteudo.innerHTML = '')
  conteudos[conteudoIndex-1].innerHTML = revistaCriarDivs(data[conteudoIndex -1]);

} 
  