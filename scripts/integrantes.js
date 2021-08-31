const data = [
  {
    imgPath: './assets/images/integrantes/Alyson Estrela Silva.jpg',
    nome: 'Alyson Estrela',
    voluntario: false
  },
  {
    imgPath: './assets/images/integrantes/Andre Sousa Barreto.jpg',
    nome: 'André Barreto',
    voluntario: false
  },
  {
    imgPath: './assets/images/integrantes/arthur.jpg',
    nome: 'Arthur Passos',
    voluntario: false
  },
  {
    imgPath: './assets/images/integrantes/Brenno.jpg',
    nome: 'Brenno Izaias',
    voluntario: true
  },
  {
    imgPath: './assets/images/integrantes/Carlos Vinicius.jpg',
    nome: 'Carlos Vinicius',
    voluntario: true
  },
  {
    imgPath: './assets/images/integrantes/Gabriel Costa.jpg',
    nome: 'Gabriel Costa',
    voluntario: true
  },
  {
    imgPath: './assets/images/integrantes/Gabriel Silva.jpg',
    nome: 'Gabriel Silva',
    voluntario: true
  },
  {
    imgPath: './assets/images/integrantes/Iago Victor-SIlva Costa.jpg',
    nome: 'Iago Victor',
    voluntario: false
  },
  {
    imgPath: './assets/images/integrantes/Joao Davi Lima dos Santos.jpg',
    nome: 'João Davi',
    voluntario: false
  },
  {
    imgPath: './assets/images/integrantes/joao victor.jpg',
    nome: 'João Victor',
    voluntario: false
  },
  {
    imgPath: './assets/images/integrantes/jose florencio.jpg',
    nome: 'José Florêncio',
    voluntario: false
  },
  {
    imgPath: './assets/images/integrantes/Kennedy Anderson.jpg',
    nome: 'Kennedy Anderson',
    voluntario: true
  },
  {
    imgPath: './assets/images/integrantes/Maikon Kessley.jpg',
    nome: 'Maikon Kessley',
    voluntario: false
  },
  {
    imgPath: './assets/images/integrantes/Matheus Levy de Lima Bessa.jpg',
    nome: 'Matheus Levy',
    voluntario: false
  },
  {
    imgPath: './assets/images/integrantes/Paulo Victor Borges Oliveira Lima.jpg',
    nome: 'Paulo Victor',
    voluntario: true
  },
  {
    imgPath: './assets/images/integrantes/thalisson.jpg',
    nome: 'Thalisson Jon',
    voluntario: true
  }
]

const exIntegrantes = [
  {
    imgPath: './assets/images/integrantes/Alison Mendes.jpg',
    nome: 'Alison Mendes',
    exIntegrante: true
  },
  {
    imgPath: './assets/images/integrantes/Daniel Moreira Pinto.jpg',
    nome: 'Daniel Moreira',
    exIntegrante: true
  },
  {
    imgPath: './assets/images/integrantes/Eduarda Chagas.jpg',
    nome: 'Eduarda Chagas',
    exIntegrante: true
  },
  {
    imgPath: './assets/images/integrantes/Estephane Mendes.jpg',
    nome: 'Estephane Mendes',
    exIntegrante: true
  },
  {
    imgPath: './assets/images/integrantes/Felipe Henrique Alves.jpeg',
    nome: 'Felipe Henrique',
    exIntegrante: true
  },
  {
    imgPath: './assets/images/integrantes/Gabriel Sousa.jpg',
    nome: 'Gabriel Sousa',
    exIntegrante: true
  },
  {
    imgPath: './assets/images/integrantes/Guilherme Carvalho.jpg',
    nome: 'Guilherme Carvalho',
    exIntegrante: true
  },
  {
    imgPath: './assets/images/integrantes/JadielJr.jpg',
    nome: 'Jadiel Junior',
    exIntegrante: true
  },
  {
    imgPath: './assets/images/integrantes/Joao Mateus Silva Lopes.jpg',
    nome: 'João Mateus',
    exIntegrante: true
  },
  {
    imgPath: './assets/images/integrantes/Luis Gustavo.jpg',
    nome: 'Luís Gustavo',
    exIntegrante: true
  },
  {
    imgPath: './assets/images/integrantes/Nathasha Araujo Pinto.jpg',
    nome: 'Nathasha Araujo',
    exIntegrante: true
  },
  {
    imgPath: './assets/images/integrantes/Pedro Arthur.jpeg',
    nome: 'Pedro Arthur',
    exIntegrante: true
  },
  {
    imgPath: './assets/images/integrantes/Ricardo Anchieta.jpeg',
    nome: '>Ricardo Anchieta',
    exIntegrante: true
  }
]

const filtrarExIntegrantes = exIntegrantes.filter((item) => {
  return item.exIntegrante === true
})

const filtrarAtuais = data.filter((item) => {
  return item.voluntario === false
})

const filtrarVoluntarios = data.filter((item) => {
  return item.voluntario === true
})

const mostrarDiscentes = filtrarAtuais.map((item) => {
  return `
    <div class="card">
      <div class="card-img">
        <figure>
          <img src="${item.imgPath}" alt="">
        </figure>
        </div>
        <div class="job-img"><i class="fas fa-chalkboard-teacher"></i></div>
        <div class="card-name">
          <h3>${item.nome}</h3>
          <h6>Orientando</h6>
        </div>
    </div>
  `
})

const mostrarDiscentesVoluntarios = filtrarVoluntarios.map((item) => {
  return `
    <div class="card">
      <div class="card-img">
        <figure>
          <img src="${item.imgPath}" alt="">
        </figure>
        </div>
        <div class="job-img"><i class="fas fa-chalkboard-teacher"></i></div>
        <div class="card-name">
          <h3>${item.nome}</h3>
          <h6>Orientando</h6>
        </div>
    </div>
  `
})

const mostrarExIntegrante = filtrarExIntegrantes.map((item) => {
  return `
    <div class="card">
      <div class="card-img">
        <figure>
          <img src="${item.imgPath}" alt="">
        </figure>
        </div>
        <div class="job-img"><i class="fas fa-chalkboard-teacher"></i></div>
        <div class="card-name">
          <h3>${item.nome}</h3>
          <h6>Orientando</h6>
        </div>
    </div>
  `
})

document.querySelector('.integrantes .discentes').innerHTML = mostrarDiscentes.join('')
document.querySelector('.voluntarios .discentes').innerHTML = mostrarDiscentesVoluntarios.join('')
document.querySelector('.ex .ex').innerHTML = mostrarExIntegrante.join('')