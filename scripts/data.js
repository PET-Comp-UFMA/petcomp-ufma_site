const data = [
  {
    monitoria: 'Alg1',
    urlVideo: 'https://drive.google.com/file/d/1Rmsr8dpNTkIcHmrLy2sp2yHrxl0Qbn8Y/view?usp=sharing',
    nome: 'Variáveis e Strings'
  },
  {
    monitoria: 'Alg1',
    urlVideo: 'https://drive.google.com/file/d/1OSxjGRpSID9tvJVGg3CJK_BquRyTu5th/view?usp=sharing',
    urlResumo: 'https://drive.google.com/file/d/18dBZoGKuX-bHuVeoafT2vZqBDXEH3PCu/view?usp=sharing',
    urlQuest: 'https://drive.google.com/file/d/1TWl5Yt03vUDD39VEN-5qtUg-9MuFSP08/view?usp=sharing',
    nome: 'Comandos Condicionais'
  },
  {
    monitoria: 'Alg1',
    urlVideo: 'https://drive.google.com/file/d/1zO3dXdiCRYXKjltEaFxQqYWSpEsTy0A1/view?usp=sharing',
    nome: 'Resolução de Exercícios - Comandos Condicionais'
  },
  {
    monitoria: 'Alg1',
    urlVideo: 'https://drive.google.com/file/d/15j2fQzpznwqCvS3CVwfEf3YGiNBNrkEp/view?usp=sharing',
    urlResumo: 'https://drive.google.com/file/d/16H_z-8dXmwnAfXjX0CL7UHnP8Fw8elvc/view?usp=sharing',
    urlQuest: 'https://drive.google.com/file/d/16H_z-8dXmwnAfXjX0CL7UHnP8Fw8elvc/view?usp=sharing',
    nome: 'Laços de Repetição'
  },
  {
    monitoria: 'Alg1',
    urlVideo: 'https://drive.google.com/file/d/1sOKbKypZxmNnJ_C79MkhNSJEOhdnc-Ok/view?usp=sharing',
    nome: 'Resolução de Exercícios - Laços de Repetição'
  },
  {
    monitoria: 'Alg1',
    urlVideo: 'https://drive.google.com/file/d/1CcgCoTOgrpm4jWe7auwhz8xIiNKb-nNR/view?usp=sharing',
    urlResumo: 'https://drive.google.com/file/d/1lrzkxWzgy5Yh8M6bq7qqAp41s-C69LqD/view?usp=sharing',
    urlQuest: 'https://drive.google.com/file/d/1Q0ymLwxbGgeTO-ugRZxUimnPw38UROlG/view?usp=sharing',
    nome: 'Filas'
  },
  {
    monitoria: 'LP1',
    urlVideo: 'https://drive.google.com/file/d/1suYwNR3O2M60S-qgjCyrFLLrVY0iUCo5/view?usp=sharing',
    nome: 'Sintaxe e Condição'
  },
  {
    monitoria: 'LP1',
    urlVideo: 'https://drive.google.com/file/d/1eyHD1SA2lvzmU5UI9zhLnlto2_LfIGBh/view?usp=sharing',
    nome: 'Comandos de Repetição'
  },
  {
    monitoria: 'LP1',
    urlVideo: 'https://drive.google.com/file/d/12FggmBSzXT1JirYFJ9JQJ2oOzDcdB8HN/view?usp=sharing',
    nome: 'Macros, Funções e Recursividade'
  },
  {
    monitoria: 'LP1',
    urlVideo: 'https://drive.google.com/file/d/1VOTb1IsGSM84PrK3MZhrRwZFzHwFj-rn/view?usp=sharing',
    nome: 'Resolução de Exercícios: Função e Recursividade'
  },
  {
    monitoria: 'LP1',
    urlVideo: 'https://drive.google.com/file/d/1SWL40gw7LWVvQfPn5aUilV5XSgDug4-F/view?usp=sharing',
    nome: 'Revisão para a Prova'
  },
  {
    monitoria: 'LP1',
    urlVideo: 'https://drive.google.com/file/d/1a3lHhbn3KOsFK8kHeoHTImzrmayombGK/view?usp=sharing',
    nome: 'Revisão da Prova'
  },
  {
    monitoria: 'C1',
    urlVideo: 'https://drive.google.com/file/d/1qfAJlk_Eevalainp65ORIQoKszSapLRR/view?usp=sharing',
    nome: 'Pré-Cálculo'
  },
  {
    monitoria: 'C1',
    urlVideo: 'https://drive.google.com/file/d/1TWVH-70w3xz3rXFF-0FHL56tNWqOmStM/view?usp=sharing',
    nome: 'Pré-Cálculo e Início de Limite'
  },
  {
    monitoria: 'C1',
    urlVideo: 'https://drive.google.com/file/d/1T66Xc0EH6E5nN6fIs8baVb-RakXjfETf/view?usp=sharing',
    nome: 'Revisão para a primeira prova'
  },
  {
    monitoria: 'C1',
    urlVideo: 'https://drive.google.com/file/d/1nWYBgpGu27vHYwk-aFjaM7L9HGggLswG/view?usp=sharing',
    nome: 'Limites Laterais'
  },
  {
    monitoria: 'C1',
    urlVideo: 'https://drive.google.com/file/d/1TIjh9VNE19DlDF7uUEQ3H_L03QkUiTkO/view?usp=sharing',
    nome: 'Limites Trigonométricos e Condutividade'
  },
  {
    monitoria: 'C1',
    urlVideo: 'https://drive.google.com/file/d/18wVp9O7nZ2sCrUzi8aVSoMzZk_eH6zUs/view?usp=sharing',
    nome: 'Derivada e Regra da Cadeia'
  },
  {
    monitoria: 'C1',
    urlVideo: 'https://drive.google.com/file/d/1dhuiU1wU0e44sIeebIqo-I-PqM7dZgRg/view?usp=sharing',
    nome: 'Derivada pela Definição e Continuidade'
  }
]

const filtrarAlg1 = data.filter((item) => {
  return item.monitoria === 'Alg1'
})
  
const mostrarAlg1 = filtrarAlg1.map((item) => {
  return `
    <div>
      <div class="details">
        <h1>${item.nome}</h1>
        <div class="links">
          <a href="${item.urlVideo}" target="_blank">
            <img src="./assets/svg/play_circle.svg">
            Vídeo Aula
          </a>
        </div>
      </div>
    </div>
  `
})

const filtrarLP1 = data.filter((item) => {
  return item.monitoria === 'LP1'
})
  
const mostrarLP1 = filtrarLP1.map((item) => {
  return `
    <div>
      <div class="details">
        <h1>${item.nome}</h1>
        <div class="links">
          <a href="${item.urlVideo}" target="_blank">
            <img src="./assets/svg/play_circle.svg">
            Vídeo Aula
          </a>
        </div>
      </div>
    </div>
  `
})

const filtrarC1 = data.filter((item) => {
  return item.monitoria === 'C1'
})
  
const mostrarC1 = filtrarC1.map((item) => {
  return `
    <div>
      <div class="details">
        <h1>${item.nome}</h1>
        <div class="links">
          <a href="${item.urlVideo}" target="_blank">
            <img src="./assets/svg/play_circle.svg">
            Vídeo Aula
          </a>
        </div>
      </div>
    </div>
  `
})

document.querySelector('.conteudos-python').innerHTML = mostrarAlg1.join('')
document.querySelector('.conteudos-calc1').innerHTML = mostrarC1.join('')
document.querySelector('.conteudos-lp1').innerHTML = mostrarLP1.join('')