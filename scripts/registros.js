

// Botão "voltar ao topo"
window.onscroll = function() {
    const botao = document.getElementById("topo-btn");
    if(document.body,scrollTop > 200 || document.documentElement.scrollTop > 200) {
        botao.style.display = "block";
    } else {
        botao.style.display = "none";
    }
};

function voltarAoTopo() {
    window.scrollTo({top: 0, behavior: 'smooth'});
}


// Função expandir imagem
function expandirImagem(img) {
    const modal = document.getElementById('imagemModal');
    const imagemExpandida = document.getElementById('imagemExpandida');
    imagemExpandida.src = img.src;
    modal.style.display = 'flex';
}

// Fechar modal
function fecharModal(event) {
    if(event) event.stopPropagation(); // evita fechar ao clicar no botão
    document.getElementById('imagemModal').style.display = 'none';
}

// Vincula evento de clique a todas as imagens
document.addEventListener("DOMContentLoaded", () => {
  document.querySelectorAll(".galeria img").forEach(img => {
    img.addEventListener("click", () => expandirImagem(img));
  });
});