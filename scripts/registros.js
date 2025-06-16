

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


// Função para diversos tamanhos de imagens
// Mapeamento dos eventos e suas imagens
const imagensPorEvento = {
  exploracomp2025: [
    "assets/2025/ExploraComp2025/exploracomp2.png",
    "assets/2025/ExploraComp2025/exploracomp1.png",
    "assets/2025/ExploraComp2025/exploracomp4.png",
    "assets/2025/ExploraComp2025/exploracomp3.png",
    "assets/2025/ExploraComp2025/exploracomp6.png",
    "assets/2025/ExploraComp2025/exploracomp5.png",
    "assets/2025/ExploraComp2025/exploracomp8.png",
    "assets/2025/ExploraComp2025/exploracomp7.png"
  ],
  acalourada2025: [
    "assets/2025/Acalourada2025/acalourada2025.1_2.jpg",
    "assets/2025/Acalourada2025/acalourada2025.1_1.jpg",
    "assets/2025/Acalourada2025/acalourada2025.1_3.jpg",
    "assets/2025/Acalourada2025/acalourada2025.1_7.jpg",
    "assets/2025/Acalourada2025/acalourada2025.1_4.jpg",
    "assets/2025/Acalourada2025/acalourada2025.1_6.jpg",
    "assets/2025/Acalourada2025/acalourada2025.1_5.jpg",
    "assets/2025/Acalourada2025/acalourada2025.1_8.jpg"
  ],
};


document.querySelectorAll('.galeria').forEach(galeria => {
  const evento = galeria.dataset.evento;
  const imagens = imagensPorEvento[evento];
  if (!imagens) return;

  for (let i = 0; i < imagens.length; i += 2) {
    const grupo = document.createElement('div');
    grupo.classList.add('imagens-group');

    const grupoIndex = Math.floor(i / 2);
    const par = grupoIndex % 2 === 0;

    // Primeira imagem do grupo
    const img1 = document.createElement('img');
    img1.src = imagens[i];
    img1.classList.add(par ? 'vertical' : 'horizontal');
    grupo.appendChild(img1);

    // Segunda imagem do grupo (se existir)
    if (imagens[i + 1]) {
      const img2 = document.createElement('img');
      img2.src = imagens[i + 1];
      img2.classList.add(par ? 'horizontal' : 'vertical');
      grupo.appendChild(img2);
    } else {
      // Só tem uma imagem no grupo (ímpar), centraliza
      grupo.style.alignItems = "center";
    }

    galeria.appendChild(grupo);
  }
});