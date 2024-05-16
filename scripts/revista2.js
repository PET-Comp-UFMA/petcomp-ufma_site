

const data = [
    {
        edicao: "1A",
        titulo: "1º Edição - Revista PET Computação",
        capa: "./assets/revistas/1a_edicao/revista_1a_edicao_capa.png",
        sobre: "O Programa de Educação Tutorial em Computação (PETComp) disponibiliza a revista PETComp, com o objetivo de divulgar ao público os variados projetos nos quais nosso PET está envolvido. Os leitores terão acesso a diversos artigos, além de notícias sobre eventos e outras iniciativas do grupo. Publicada no primeiro semestre de 2024, a primeira edição da revista já pode ser acessada.",
        visualizar: "https://online.fliphtml5.com/hyccq/wkkw/",
        downloadName: "Revista PETComp 1ª Edição",
        download: "/assets/revistas/1a_edicao/revista_1a_Edicao.pdf"
    },/*{
        edicao: "Edicao da revista",
        titulo: "Titulo da revista",
        capa: "Endereço da capa da revista",
        sobre: "Descrição/texto da revista",
        visualizar: "Link para visualizar a revista",
        downloadName: "Nome do arquivo que será baixado",
        download: "Link de Download"
    }*/
    
];

const revistaCriarDivs = function (item) {
    return `
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
    `;
};

const mostrarrevista = function(edicao) {
    //Obtem a revista procurada
    let revista = data.filter((item) => {
        return item.edicao === edicao;
    })

    return revistaCriarDivs(revista[0]);
    //Cria as divs e retorna elas
};
  
document.querySelector(".revista-1A").innerHTML = mostrarrevista("1A");
//document.querySelector(".revista-2A").innerHTML = mostrarrevista("2A");