-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Tempo de geração: 06-Dez-2021 às 11:20
-- Versão do servidor: 5.7.23-23
-- versão do PHP: 7.3.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `petcom59_petcomp_db`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `noticias`
--

CREATE TABLE `noticias` (
  `id` int(11) NOT NULL,
  `titulo` varchar(500) NOT NULL,
  `texto` text NOT NULL,
  `data` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `petianos`
--

CREATE TABLE `petianos` (
  `id` int(11) NOT NULL,
  `nome_completo` varchar(60) DEFAULT NULL,
  `primeiro_nome` varchar(15) NOT NULL,
  `ultimo_nome` varchar(15) NOT NULL,
  `ano` int(11) NOT NULL,
  `periodo` int(11) NOT NULL,
  `ativo` tinyint(4) NOT NULL,
  `orientador` tinyint(4) NOT NULL,
  `voluntario` tinyint(4) NOT NULL,
  `imagem` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `petianos`
--

INSERT INTO `petianos` (`id`, `nome_completo`, `primeiro_nome`, `ultimo_nome`, `ano`, `periodo`, `ativo`, `orientador`, `voluntario`, `imagem`) VALUES
(1, 'Luis Rivero', 'Luis ', ' Rivero', 2019, 1, 1, 1, 0, 'Luis Riveiro.jpg'),
(2, 'Geraldo Braz Junior', 'Geraldo', 'Braz', 2016, 1, 0, 1, 0, 'Geraldo Braz.jpg'),
(3, 'Alexandre Cesar Muniz de Oliveira', 'Alexandre', 'Oliveira', 2007, 2, 0, 1, 0, 'Alexandre Oliveira.jpg'),
(4, 'Antonio Pinto', 'Antonio', 'Pinto', 2017, 2, 0, 0, 0, 'Antonio Pinto.jpg'),
(5, 'Arthur Costa Serra', 'Arthur', 'Serra', 2017, 2, 0, 0, 0, 'Arthur Costa.jpg'),
(6, 'Celielma Baldez Costa', 'Celielma', 'Costa', 2017, 2, 0, 0, 0, 'Celielma Costa.jpg'),
(7, 'Ednara Pereira', 'Ednara', 'Pereira', 2017, 2, 0, 0, 0, 'Ednara Pereira.jpg'),
(8, 'Fernando Henrique', 'Fernando', 'Henrique', 2018, 1, 0, 0, 0, 'Fernando Henrique.jpg'),
(9, 'Gabriel Phelipe', 'Gabriel', 'Phelipe', 2017, 1, 0, 0, 0, 'Gabriel Phelipe.jpg'),
(10, 'Jéssica Costa', 'Jéssica', 'Costa', 2018, 2, 0, 0, 0, 'Jéssica Costa.jpg'),
(11, 'Kelly Rebeca', 'Kelly ', 'Rebeca', 2018, 1, 0, 0, 0, 'Kelly Rebeca.jpg'),
(12, 'Marcos Costa Santos', 'Marcos ', 'Santos', 2017, 2, 0, 0, 0, 'Marcos Santos.jpg'),
(13, 'Micael Gomes', 'Micael ', 'Gomes', 2017, 2, 0, 0, 0, 'Micael Gomes.jpg'),
(14, 'Vinicius Augusto', 'Vinicius ', 'Augusto', 2017, 1, 0, 0, 0, 'Vinicius Augusto.jpg'),
(15, 'Yandson Costa', 'Yandson ', 'Costa', 2018, 1, 0, 0, 0, 'Yandson Costa.jpg'),
(16, 'Alex Newman', 'Alex', 'Newman', 2012, 1, 0, 0, 0, 'Alex Newman.jpg'),
(17, 'Alisson Santos', 'Alisson ', 'Santos', 2017, 2, 0, 0, 0, 'Alisson Santos.jpg'),
(18, 'Alexandre de Carvalho Araújo', 'Alexandre', 'Araújo', 2015, 1, 0, 0, 0, 'Alexandre Araújo.jpg'),
(19, 'Anderson Silva', 'Anderson', 'Silva', 2016, 1, 0, 0, 0, 'Anderson Silva.jpg'),
(20, 'Antonio Jesus', 'Antonio ', 'Jesus', 2014, 2, 0, 0, 0, 'Antonio Jesus.jpg'),
(21, 'Antonio Mourão', 'Antonio ', 'Mourão', 2012, 2, 0, 0, 0, 'Antonio Mourao.jpg'),
(22, 'Antonio Raposo', 'Antonio', 'Raposo', 2012, 2, 0, 0, 0, 'Antonio Raposo.jpg'),
(23, 'Aristóteles Junior', 'Aristóteles', 'Junior', 2015, 1, 0, 0, 0, 'Aristóteles Junior.jpg'),
(24, 'Artur Albuquerque', 'Artur ', 'Albuquerque', 2015, 1, 0, 0, 0, 'Artur Albuquerque.jpg'),
(25, 'Bruno Eduardo', 'Bruno', 'Eduardo', 2014, 2, 0, 0, 0, 'Bruno Eduardo.jpg'),
(26, 'Caio Manfredini', 'Caio ', 'Manfredini', 2017, 2, 0, 0, 0, 'Caio Manfredini.jpg'),
(27, 'Dalai dos Santos', 'Dalai ', 'dos Santos', 2012, 1, 0, 0, 0, 'Dalai dos Santos.jpg'),
(28, 'Daniel Soares Carvalho', 'Daniel', 'Carvalho', 2016, 1, 0, 0, 0, 'Daniel Soares.jpg'),
(29, 'Daniela Costa', 'Daniela ', 'Costa', 2013, 2, 0, 0, 0, 'Daniela Costa.jpg'),
(30, 'Dayson Nascimento', 'Dayson ', 'Nascimento', 2012, 2, 0, 0, 0, 'Dayson Nascimento.jpg'),
(31, 'Diego Oliveira', 'Diego ', 'Oliveira', 2016, 2, 0, 0, 0, 'Diego Oliveira.jpg'),
(32, 'Eduardo Dorneles', 'Eduardo ', 'Dorneles', 2013, 1, 0, 0, 0, 'Eduardo Dorneles.jpg'),
(33, 'Eduardo Roger', 'Eduardo ', 'Roger', 2016, 1, 0, 0, 0, 'Eduardo Roger.jpg'),
(34, 'Emanuel Amaral', 'Emanuel ', 'Amaral', 2012, 2, 0, 0, 0, 'Emanuel Amaral.jpg'),
(35, 'Êmile Cunha', 'Êmile ', 'Cunha', 2013, 1, 0, 0, 0, 'Êmile Cunha.jpg'),
(36, 'Gabriel Garcez', 'Gabriel ', 'Garcez', 2014, 1, 0, 0, 0, 'Gabriel Garcez.jpg'),
(37, 'Gabriel Monteles', 'Gabriel', 'Monteles', 2016, 1, 0, 0, 0, 'Gabriel Monteles.jpg'),
(38, 'Geovane Menezes', 'Geovane ', 'Menezes', 2012, 2, 0, 0, 0, 'Geovane Menezes.jpg'),
(39, 'Gilvan Tavares', 'Gilvan ', 'Tavares', 2013, 2, 0, 0, 0, 'Gilvan Tavares.jpg'),
(40, 'Giovanni Dias', 'Giovanni', 'Dias', 2012, 1, 0, 0, 0, 'Giovanni Dias.jpg'),
(41, 'Gleidson mendes', 'Gleidson ', 'Mendes', 2012, 1, 0, 0, 0, 'Gleidson Mendes.jpg'),
(42, 'Hugo Gois', 'Hugo ', 'Gois', 2015, 1, 0, 0, 0, 'Hugo Gois.jpg'),
(43, 'Isabel Carvalho', 'Isabel ', 'Carvalho', 2012, 1, 0, 0, 0, 'Isabel Carvalho.jpg'),
(44, 'Italo Francyles', 'Italo ', 'Francyles', 2013, 1, 0, 0, 0, 'Italo Francyles.jpg'),
(45, 'Jeferson Pereira Diniz', 'Jefferson ', 'Diniz', 2015, 2, 0, 0, 0, 'Jefferson Diniz.jpg'),
(46, 'Jorge Ribeiro', 'Jorge ', 'Ribeiro', 2014, 2, 0, 0, 0, 'Jorge Ribeiro.jpg'),
(47, 'Julia Manayra', 'Julia', 'Manayra', 2014, 1, 0, 0, 0, 'Julia Manayra.jpg'),
(48, 'Juliano Ramos', 'Juliano ', 'Ramos', 2012, 1, 0, 0, 0, 'Juliano Ramos.jpg'),
(49, 'Kassio Sousa', 'Kassio', 'Sousa', 2012, 1, 0, 0, 0, 'Kassio Sousa.jpg'),
(50, 'Kleydson Beckman', 'Kleydson', 'Beckman', 2019, 1, 0, 0, 0, 'Kleydson Beckman.jpg'),
(51, 'Lazaro Henrique', 'Lazaro', 'Henrique', 2012, 1, 0, 0, 0, 'Lazaro Henrique.jpg'),
(52, 'Luann Marques', 'Luann ', 'Marques', 2013, 2, 0, 0, 0, 'Luann Marques.jpg'),
(53, 'Lucas Abreu', 'Lucas ', 'Abreu', 2015, 2, 0, 0, 0, 'Lucas Abreu.jpg'),
(54, 'Luiza Helena', 'Luiza ', 'Helena', 2012, 1, 0, 0, 0, 'Luiza Helena.jpg'),
(55, 'Maiane Nunes Costa', 'Maiane', 'Nunes', 2020, 2, 0, 0, 0, 'Maiane Nunes.jpg'),
(56, 'Marcelo Branco', 'Marcelo', 'Branco', 2012, 1, 0, 0, 0, 'Marcelo Branco.jpg'),
(57, 'Marcos Vinicius', 'Marcos ', 'Vinicius', 2016, 1, 0, 0, 0, 'Marcos Vinicius.jpg'),
(58, 'Matheus Coimbra', 'Matheus ', 'Coimbra', 2013, 1, 0, 0, 0, 'Matheus Coimbra.jpg'),
(59, 'Matheus Menezes', 'Matheus ', 'Menezes', 2012, 2, 0, 0, 0, 'Matheus Menezes.jpg'),
(60, 'Nelia Reis', 'Nelia', 'Reis', 2017, 1, 0, 0, 0, 'Nelia Reis.jpg'),
(61, 'Nubia Cristine', 'Nubia ', 'Cristine', 2012, 1, 0, 0, 0, 'Nubia Cristine.jpg'),
(62, 'Pedro Henrique Barbosa Campos', 'Pedro', 'Campos', 2019, 2, 0, 0, 0, 'Pedro Henrique.jpg'),
(63, 'Phillipe Mendonça', 'Phillipe ', 'Mendonça', 2016, 1, 0, 0, 0, 'Phillipe Mendonça.jpg'),
(64, 'Polyanna Costa', 'Polyanna ', 'Costa', 2013, 2, 0, 0, 0, 'Polyanna Costa.jpg'),
(65, 'Rafael Dias', 'Rafael ', 'Dias', 2014, 1, 0, 0, 0, 'Rafael Dias.jpg'),
(66, 'Rafael Drummond', 'Rafael ', 'Drummond', 2012, 1, 0, 0, 0, 'Rafael Drummond.jpg'),
(67, 'Robert Santos', 'Robert', 'Santos', 2017, 2, 0, 0, 0, 'Robert Santos.jpg'),
(68, 'Rodrigo do Nascimento', 'Rodrigo ', 'do Nascimento', 2015, 2, 0, 0, 0, 'Rodrigo do Nascimento.jpg'),
(69, 'Rodrigo Garcês', 'Rodrigo ', 'Garcês', 2015, 1, 0, 0, 0, 'Rodrigo Garcês.jpg'),
(70, 'Samyle Lindsay', 'Samyle ', 'Lindsay', 2012, 1, 0, 0, 0, 'Samyle Lindsay.jpg'),
(71, 'Sidney Melo', 'Sidney ', 'Melo', 2012, 1, 0, 0, 0, 'Sidney Melo.jpg'),
(72, 'Tarcio Almeida', 'Tarcio ', 'Almeida', 2014, 2, 0, 0, 0, 'Tarcio Almeida.jpg'),
(73, 'Victor Henrique', 'Victor ', 'Henrique', 2015, 1, 0, 0, 0, 'Victor Henrique.jpg'),
(74, 'Weldson Amaral', 'Weldson ', 'Amaral', 2012, 1, 0, 0, 0, 'Weldson Amaral.jpg'),
(75, 'Werliton Carlos', 'Werliton ', 'Carlos', 2014, 1, 0, 0, 0, 'Werliton Carlos.jpg'),
(76, 'Alyson Estrela Silva', 'Alyson ', ' Estrela', 2021, 2, 1, 0, 0, 'Alyson Estrela.jpg'),
(77, 'André Barreto', 'André', ' Barreto', 2021, 1, 1, 0, 0, 'Andre Barreto.jpg'),
(78, 'Arthur Passos', 'Arthur', ' Passos', 2019, 2, 1, 0, 0, 'Arthur Passos.jpg'),
(79, 'Iago Victor', 'Iago ', 'Victor', 2021, 1, 1, 0, 0, 'Iago Victor.jpg'),
(80, 'João Davi', 'João ', ' Davi', 2021, 1, 1, 0, 0, 'João Davi.jpg'),
(81, 'João Victor', 'João ', 'Victor', 2021, 2, 1, 0, 0, 'João Victor.jpg'),
(82, 'José Florêncio de Melo Neto', 'José ', 'Florêncio', 2021, 2, 1, 0, 0, 'José Florêncio.jpg'),
(83, 'Maikon Kessley', 'Maikon ', 'Kessley', 2021, 1, 1, 0, 0, 'Maikon Kessley.jpg'),
(84, 'Matheus Levy de Lima Bessa', 'Matheus ', ' Levy', 2021, 1, 1, 0, 0, 'Matheus Levy.jpg'),
(85, 'Italo Luigi Cerqueira Dovera', 'Luigi', 'Dovera', 2021, 2, 1, 0, 0, 'Luigi Dovera.jpg'),
(86, 'João Pedro Uchoa da Silva Araújo', 'João', 'Uchoa', 2021, 2, 1, 0, 0, 'João Uchoa.jpg'),
(87, 'Lucas Farias Pereira', 'Lucas ', 'Farias', 2021, 2, 1, 0, 0, 'Lucas Farias.jpg'),
(88, 'Lukas Gabriel Cruz Mota', 'Lukas', 'Mota', 2021, 2, 1, 0, 0, 'Lukas Mota.jpg'),
(89, 'Pedro Rocha Boucinhas Pacheco', 'Pedro', 'Pacheco', 2021, 2, 1, 0, 0, 'Pedro Rocha.jpg'),
(90, 'Brenno Izaias', 'Brenno ', ' Izaias', 2020, 2, 1, 0, 1, 'Brenno Izaias.jpg'),
(91, 'Carlos Vinicius', 'Carlos ', ' Vinicius', 2020, 1, 1, 0, 1, 'Carlos Vinicius.jpg'),
(92, 'Gabriel Costa', 'Gabriel ', ' Costa', 2020, 1, 1, 0, 1, 'Gabriel Costa.jpg'),
(93, 'Gabriel Silva', 'Gabriel ', ' Silva', 2021, 2, 1, 0, 1, 'Gabriel Silva.jpg'),
(94, 'Kennedy Anderson', 'Kennedy ', ' Anderson', 2020, 1, 1, 0, 1, 'Kennedy Anderson.jpg'),
(95, 'Paulo Victor', 'Paulo ', 'Victor', 2021, 1, 1, 0, 1, 'Paulo Victor.jpg'),
(96, 'Thalisson Jon', 'Thalisson ', 'Jon', 2021, 1, 1, 0, 1, 'Thalisson Jon.jpg'),
(97, 'João Mateus Silva Lopes', 'João', 'Mateus', 2021, 1, 0, 0, 0, 'Joao Mateus.jpg'),
(98, 'Nathasha Araújo Pinto', 'Nathasha', 'Pinto', 2019, 2, 0, 0, 0, 'Nathasha Pinto.jpg'),
(99, 'Alana Cristina de Carvalho Araújo', 'Alana', 'Araújo', 2018, 2, 0, 0, 0, 'Alana Araújo.jpg'),
(100, 'Jadiel Costa Santos Junior', 'Jadiel', 'Junior', 2018, 2, 0, 0, 0, 'Jadiel Junior.jpg'),
(101, 'Felipe Alves', 'Felipe', 'Alves', 2020, 1, 0, 0, 0, 'Felipe Alves.jpg'),
(102, 'Guilherme Carvalho', 'Guilherme', 'Carvalho', 2020, 1, 0, 0, 0, 'Guilherme Carvalho.jpg'),
(103, 'Daniel Pinto', 'Daniel', 'Pinto', 2020, 1, 0, 0, 0, 'Daniel Pinto.jpg'),
(104, 'Karla Felicia', 'Karla', 'Felicia', 2019, 2, 0, 0, 0, 'Karla Felicia.jpg'),
(105, 'Alisson Correia', 'Alisson ', 'Correia', 2020, 1, 0, 0, 0, 'Alisson Correia.jpg'),
(106, 'Eduarda Chagas', 'Eduarda', 'Chagas', 2019, 2, 0, 0, 0, 'Eduarda Chagas.jpg'),
(107, 'Ricardo Anchieta', 'Ricardo', 'Anchieta', 2020, 1, 0, 0, 0, 'Ricardo Anchieta.jpg'),
(108, 'Estephane Mendes', 'Estephane', 'Mendes', 2020, 1, 0, 0, 0, 'Estephane Mendes.jpg'),
(109, 'Gabriel Sousa', 'Gabriel', 'Sousa', 2020, 1, 0, 0, 0, 'Gabriel Sousa.jpg'),
(110, 'José Ribamar Durand Rodrigues Junior', 'Durand', 'Junior', 2018, 2, 0, 0, 0, 'Durand Junior.jpg'),
(111, 'Luís Gustavo', 'Luís', 'Gustavo', 2020, 1, 0, 0, 0, 'Luís Gustavo.jpg'),
(112, 'Pedro Arthur', 'Pedro', 'Arthur', 2019, 1, 0, 0, 0, 'Pedro Arthur.jpg'),
(113, 'Gabriel Marques Cardoso', 'Gabriel', 'Marques', 2019, 1, 0, 0, 0, 'Gabriel Marques.jpg'),
(114, 'Giovanna Pavani Esteve', 'Giovanna', 'Pavani', 2019, 1, 0, 0, 0, 'Giovanna Pavani.jpg'),
(115, 'Hannah Moreira Costa', 'Hannah', 'Costa', 2019, 1, 0, 0, 0, 'Hannah Costa.jpg'),
(116, 'Jonas Jakiminski Silva', 'Jonas', 'Jakiminski', 2018, 2, 0, 0, 0, 'Jonas Jakiminski.jpg'),
(117, 'Emily Juliana Costa e Silva', 'Emily', 'Silva', 2018, 2, 0, 0, 0, 'Emily Silva.jpg'),
(118, 'Igor Rafael Barbosa Estrela', 'Igor', 'Estrela', 2018, 2, 0, 0, 0, 'Igor Estrela.jpg'),
(119, 'Guilherme Alberto Sousa Ribeiro', 'Guilherme', 'Ribeiro', 2009, 1, 0, 0, 0, 'Guilherme Ribeiro.jpg');

-- --------------------------------------------------------

--
-- Estrutura da tabela `sites`
--

CREATE TABLE `sites` (
  `id` int(11) NOT NULL,
  `titulo` varchar(60) NOT NULL,
  `link` varchar(500) NOT NULL,
  `descricao` text NOT NULL,
  `evento` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `trabalhos_publicados`
--

CREATE TABLE `trabalhos_publicados` (
  `id` int(11) NOT NULL,
  `titulo` varchar(500) NOT NULL,
  `autor` varchar(500) NOT NULL,
  `ano` varchar(4) DEFAULT NULL,
  `palavras_chaves` varchar(150) DEFAULT NULL,
  `resumo` text,
  `link` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `trabalhos_publicados`
--

INSERT INTO `trabalhos_publicados` (`id`, `titulo`, `autor`, `ano`, `palavras_chaves`, `resumo`, `link`) VALUES
(1, 'Artigo: De Veteranos para os Novatos: Avaliação das Atividades de Recepção aos Calouros Organizado pelo Grupo PETComp', 'Daniel Pinto, Eduarda Chagas, Gabriel Costa, Kennedy Nunes, Ricardo Anchieta, Simara Rocha, Anselmo Paiva, Luis Rivero', '2020', NULL, 'Alunos ingressantes em cursos de ensino superior sentem dificuldade em se adaptar à nova modalidade de ensino. Nesse contexto, o evento da Semana do Calouro é realizado pelos discentes do grupo PET de Ciência da Computação da Universidade Federal do Maranhão acompanhados por professores como uma atividade de integração aos novos discentes do curso de Ciência da Computação. Este artigo relata a experiência de aplicar diversas atividades com o intuito de esclarecer as dúvidas geradas pelo ingresso no novo ambiente, bem como aumentara visibilidade dos contextos do curso. Ao término das atividades, o feedback dos discentes apontou para a utilidade das mesmas para conhecer as oportunidades dentro da universidade em termos de projetos, pesquisas e áreas de atuação, assim como soluções para problemas que surgiram durante sua execução.', 'https://sol.sbc.org.br/index.php/wei/article/view/11130/11001'),
(2, 'Artigo: Identificando as Atividades dos Grupos do Programa de Educação Tutorial na Área de Computação no Apoio à Inclusão e Alfabetização Digital', 'Emily Costa, Antônio Pinto, José Ribamar Durand Rodrigues Junior, Alana Araújo, Ednara Pereira, Geraldo Braz Junior, Rodrigo Santos, Luis Rivero', '2019', NULL, 'O Programa de Educação Tutorial (PET) tem o objetivo de incentivar grupos de alunos de graduação a desenvolver atividades relacionadas com o Ensino, a Pesquisa e a Extensão. Existem 37 grupos PET listados no site da SBC que realizam atividades voltadas para a comunidade (público externo à universidade, idosos, crianças, entre outros). Este artigo apresenta uma análise de quais das atividades divulgadas por estes grupos são voltadas para o apoio à inclusão e alfabetização digital. As informações sobre casos de sucesso destas atividades podem servir como base para outros grupos e incentivar parcerias para realizar atividades afins.', 'https://br-ie.org/pub/index.php/wie/article/view/8594'),
(3, 'Artigo: Identificação das Expectativas e Dificuldades de Alunos de Graduação no Ensino de Engenharia de Software', 'Jéssica Mendes, Yandson Costa, Kastney Frazão, Rodrigo Santos, Davi Santos, Luis Rivero', '2019', NULL, 'A  Engenharia  de  Software  visa  apoiar  o  desenvolvimento  de  sistemas computacionais de qualidade, reduzindo os custos de produção e aumentando a produtividade dos profissionais. Buscar entender as necessidades dos alunos iniciantes  nessa  área  da  computação  é  vital  para  propor  metodologias adequadas  de  ensino.  Este  artigo  apresenta  o  resultado  da  aplicação  de  um questionário quanto à experiência dos alunos de uma disciplina introdutória de Engenharia de Software. Foi capturada a expectativa de alunos que ainda não cursaram  a  disciplina,  assim  como  a  visão  de  alunos  que  já  a  cursaram, reprovando  ou  não.  Os  resultados  desta  pesquisa  permitiram  identificar eventuais aspectos que possam ter influência positiva ou negativa no processo de aprendizado.', 'https://sol.sbc.org.br/index.php/wei/article/view/6640/6536'),
(4, 'Artigo: Educação Tutorial em Computação: Uma Análise Retrospectiva das Atividades Realizadas para a Formação Pessoal e Profissional de Cientistas da Computação', 'Fernando Leite, Gabriel Cardoso, Yandson Costa, Igor Estrela, Antônio Pinto, Ednara Pereira, Geraldo Braz Júnior, Luis Rivero', '2019', NULL, 'O Programa de Educação Tutorial (PET) atua como uma iniciativa de promover a formação integrada de todos os atores envolvidos combatendo a evasão, estimulando o desenvolvimento criativo e empreendedor, assim como a continuação para níveis superiores de formação acadêmica. Apesar da existência de 37 grupos PET na área de computação segundo a Sociedade Brasileira de Computação (SBC), poucos grupos divulgam os resultados das ações realizadas em eventos científicos da computação para discutir suas implicações. Nesse contexto, este trabalho apresenta uma análise das atividades desenvolvidas em um grupo PET de Ciência da Computação do ponto de vista dos discentes. Os resultados apontam o impacto das atividades na formação dos alunos, lições aprendidas e oportunidades de melhoria para o sucesso das atividades.', 'https://sol.sbc.org.br/index.php/wei/article/view/6621/6517'),
(5, 'Resumo: SIEPET: Uma proposta de remodelagem de um sistema para novas necessidades acadêmicas', 'Gabriel Silva Monteles, Eduardo Roger Silva Nascimento, Diego da Silva Oliveira, Vinícius Augusto Cardoso Reis, Geraldo Braz Júnior', '2017', 'ENGENHARIA DE SOFTWARE, RECURSO, INTERFACE', 'O Programa de Educação Tutorial (PET) tem em seu escopo de desenvolvimento atividades de pesquisa, ensino e extensão que complementam a educação de seus alunos. Muitas dessas atividades resultam em criação de eventos abertos à comunidade acadêmica. Por sua vez, o gerenciamento destes eventos envolve inscrição, controle de frequência e emissão de certificados. Neste contexto, o PET Ciência da Computação (PETComp) desenvolveu o XSCERT, uma plataforma de eventos como forma de facilitar o gerenciamento de algumas atividades e aproximar os grupos PET da UFMA. Com o decorrer do tempo, novas necessidades surgiram, como a criação de sub-eventos dentro de um evento, eventos pagos e inscrições coletivas para eventos que possuem competições. De posse dessa necessidade, e também com o objetivo de criar uma proposta mais intuitiva e que possa ser compartilhada com os outros grupos, houve a iniciativa de reformular o antigo sistema de eventos do grupo. O sistema foi denominado de SIEPET (Sistema de Inscrições em Eventos do PET).', 'https://petcompufma.org/documents/SIEPET-Uma-proposta-de-remodelagem-de-um-sistema-para-novas-necessidades-acadêmicas.pdf'),
(6, 'Resumo: Impacto da Análise de Sentimentos em redes sociais na sociedade moderna', 'Lucas Reis Abreu, Simara Vieira da Rocha, Geraldo Braz Júnior', '2017', 'Análise de sentimentos, impactos sociais, polaridade, opiniões', 'Devido ao avanço das mídias sociais observou-se um enorme crescimento de dados gerados e armazenados diariamente nesses ambientes. Dentro de tais redes sociais os usuários podem expressar opiniões próprias sobre diversificados assuntos, e é nesta esfera que atua a Análise de Sentimentos. Com a alta inclusão digital fornecida pela difusão da tecnologia, organizações e empresas voltaram sua atenção para as mídias digitais, procurando identificar dentro dos comentários dos usuários, características de seu interesse, como um produto está sendo recebido ou quais melhorias podem ser aplicadas sobre ele, por exemplo. A análise de sentimentos será responsável por classificar como positivo ou negativo (também chamado de polaridade) aquele comentário.', 'https://petcompufma.org/documents/Impacto-da-An%C3%A1lise-de-Sentimentos-em-redes-sociais-na-sociedade-moderna.pdf'),
(7, 'Resumo: Reformulação do site PET Computação, com ênfase na gestão do conteúdo', 'Micael Machado Gomes, Gabriel Phelipe Costa Freitas, Geraldo Braz Júnior', '2017', 'ENGENHARIA DE SOFTWARE, RECURSO, INTERFACE.', 'O PET de computação desenvolve no âmbito acadêmico atividades e projetos que buscam a melhoria do ensino superior, muitas vezes usando ferramentas para ampliar seu poder de mudança. Desse modo, o grupo pode executar seus serviços em ambientes onlines tal qual o site do PET de computação, porém a má gestão do mesmo pode levar a problemas simples como a poluição visual no layout da página e a falta de dinâmica no giro de informações. Nesse sentido, promovemos a reformulação e revitalização do site do PET de Computação, de forma a torná-lo mais efetivo para os alunos do curso e também servir como base para reformulação de conteúdo de outros grupos PET.', 'https://petcompufma.org/documents/Reformulacao-do-site-PET-computacao-com-enfase-na-gestao-do-conteudo.pdf'),
(8, 'Resumo: Uma abordagem competitiva para o estímulo ao aprendizado', 'Lucas Reis Abreu, Anderson Silva, Bruno Eduardo, Daniel Soares Carvalho, Diego Oliveira, Eduardo Roger, Gabriel Monteles, Hugo Gois, Marcos Vinicius, Phillipe Mendonça, Rodrigo Garcês, Rodrigo Nascimento, Tarcio Almeida, Victor Henrique, Geraldo Braz Junior', '2017', NULL, 'Transmitir o conhecimento apropriado de um determinado conteúdo sempre é acompanhado de desafios e o maior deles é ter a garantia que os alunos realmente absorveram a matéria lecionada de forma eficaz. Em vista de tal disputa, o grupo do Programa de Educação Tutorial de Ciência da Computação (PETComp) da Universidade Federal do Maranhão (UFMA), apresenta através deste trabalho uma proposta de abordagem competitiva metodológica para estruturação de competições envolvendo temáticas presentes no curso, tais como programação, robótica e jogos com a finalidade de subsidiar práticas de ensino, pesquisa e extensão.', 'https://petcompufma.org/documents/Uma-abordagem-competitiva-para-o-estimulo-ao-aprendizado-.pdf'),
(9, 'Resumo: Plataforma gamificada de auxílio para exames de POSCOMP e ENADE', 'Lucas Reis Abreu,  Anderson Silva,  Bruno Eduardo, Daniel Soares Carvalho, Diego Oliveira, Eduardo Roger, Gabriel Monteles, Hugo Gois, Marcos Vinicius, Phillipe Mendonça, Rodrigo Garcês, Rodrigo Nascimento, Tárcio Almeida, Victor Henrique, Geraldo Braz Junior', '2017', NULL, 'Testes como ENADE e POSCOMP (exame de ingresso na pós graduação do curso de computação) são constantemente realizados pelos discentes do curso, visando melhorar sua carreira profissional. Em prol de ajudar estes alunos, o Programa de Educação Tutorial de Ciência da Computação (PETComp) da Universidade Federal do Maranhão (UFMA) se propôs a construir uma plataforma gamificada denominada COMPET, cuja proposta é auxiliar os estudantes do curso e interessados nesta área de uma forma dinâmica, interativa e mais atrativa, visando melhorar seu desempenho nos respectivos exames citados através de um jogo de perguntas e respostas, na qual as perguntas foram retiradas de provas anteriores do ENADE e POSCOMP, além de questões temáticas elaboradas pelos próprios docentes da universidade.', 'https://petcompufma.org/documents/Plataforma-gamificada-de-aux%C3%ADlio-para-exames-de-POSCOMP-e-ENADE.pdf'),
(10, 'Artigo: Melhoria da Grade Curricular do Curso de Ciência da Computação da Universidade Federal do Maranhão: uma Abordagem Analítica', 'Anderson S. Fonseca, Eduardo R. S. Nascimento, Marcos Vinicius C. Gomes, Geraldo Braz Junior', '2017', NULL, 'A atual grade curricular do curso de Ciência da Computação da Universidade Federal do Maranhão (UFMA) não sofre atualizações desde o ano de 2007, o que é bastante tempo em se tratando de um curso com ênfase tecnológica. Logo, faz-se necessário uma revisão que permita atender as atuais expectativas de mercado de trabalho e também em relação a pesquisa.', 'https://petcompufma.org/documents/Melhoria-da-grade%20curricular-do-curso-de-ciencia-da-Computacao-da-Universidade-federal-do-maranhao-uma-abordagem-analitica.pdf'),
(11, 'Artigo: BodyRating: Uma proposta para anotção de silhueta corporal para avaliação de autopercepção', 'Anderson S. Fonseca, Victor H. B. de Lemos, Artur A. Silva, Geraldo Braz Junior,  Anselmo C. Paiva, Antonio A. M. da Silva', '2017', NULL, 'Atualmente, a aparência é de grande importância na vida de muitos e a forma que pessoas avaliam a própria imagem pode levar a diversos transtornos de autopercepção. Avaliar o nível desses transtornos levou a proposta da ferramenta BodyRating que anota a classificação de modelos 3D de pacientes voluntários feita por especialistas da área levando em consideração a Escala de Silhuetas. A ferramenta foi apresentada e percebeu-se uma grande aceitação da mesma. Após a anotação dos modelos 3D, os dados coletados serão utilizados como base para o desenvolvimento de uma ferramenta de classificação automática que é uma futura proposta de auxílio a especialistas.', 'https://petcompufma.org/documents/BodyRating-Uma-proposta-para-anotacao-de-silhueta-corporal-para-avaliacao-de-autopercepcao.pdf'),
(12, 'Artigo: O Uso de Competições como Ferramenta de Ensino e Fortalecimento do Aprendizado dentro do Curso de Ciência da Computação', 'Lucas Reis Abreu, Daniel Soares Carvalho, Diego Oliveira, Geraldo Braz Junior', '2017', NULL, 'Difundir o conhecimento de um conteúdo sempre apresenta desafios e o maior deles é ter a garantia de que os alunos realmente absorveram a matéria lecionada de forma prática. Em vista deste desafio, o grupo do Programa de Educação Tutorial de Ciência da Computação (PETComp) da Universidade Federal do Maranhão (UFMA), apresenta através deste trabalho uma proposta metodológica para realização de competições envolvendo assuntos de programação, robótica e jogos com a finalidade de subsidiar práticas de ensino, pesquisa e extensão.', 'https://petcompufma.org/documents/O-Uso-de-Competicoes-como-Ferramenta-de-Ensino-e-Fortalecimento-do-Aprendizado-dentro-do-Curso-de-Ciencia-da-Computacao.pdf'),
(13, 'Artigo: COMPET: Um software de Integralização do Curso de Ciência da Computação', 'Bruno Eduardo Silva Ferreira, Hugo Gois Santos, Lucas Reis Abreu,  Tarcio Almeida Lima, Rodrigo do Nascimento Siqueira, Jefferson Pereira Diniz, Phillipe Idivaldo Mendonça Silva, Victor Henrique Bezerra de Lemos, Geraldo Braz Junior', '2017', NULL, 'Os graduandos de Ciência da Computação deparam-se constantemente com testes, sejam eles através do ENADE ou para ingresso na pós-graduação (POSCOMP) ou mesmo através de provas de concursos caso opte por esse tipo de carreira. O COMPET é uma plataforma, cuja proposta é o auxílio a aprendizagem de estudantes de computação e interessados nesta área de forma interativa e atrativa melhorando seu desempenho por meio de questões retiradas do banco de provas do ENADE, POSCOMP e também perguntas elaboradas por professores da UFMA. Esta plataforma funciona de forma com elementos de gamification, onde ao ter êxito em responder um estipulado número de questões corretamente o usuário poderá subir de nível e ser gratificado com troféus a cada grupo de questões (fases) concluídas, ganhando assim pontos e petcoins (moeda utilizada dento da plataforma para comprar dicas). O objetivo da ferramenta consiste em além de preparar os alunos para o exame do POSCOMP, também servir à de orientação em suas carreiras profissionais, e ainda como forma de avaliação do curso. Através desta, será possível auxiliar os discentes no reforço de conteúdos que não foram tão bem absorvidos em sala de aula. Com a ferramenta construída, a mesma foi pré-avaliada com um grupo de discentes do curso de Ciência da Computação e foi constado aceitação pela comunidade acadêmica, tanto na finalidade de auxiliar o aprendizado quando na capacidade de desenvolver continuamente o aprendizado dos interessados.', 'https://petcompufma.org/documents/COMPET-Um-software-de-Integralizacao-do-Curso-de-Ciencia-da-Computacao.pdf'),
(14, 'Artigo: Estímulo ao pensamento computacional e a divulgação dos grupos PET UFMA: Desenvolvimento de WebPages como prática interdisciplinar', 'Hugo G. Santos ,Celielma Costa, Lucas R. Abreu, Eduardo R. S. Nascimento, Geraldo B. Junior', '2017', NULL, 'Buscando dar visibilidade aos trabalhos realizados pelos grupos PETs (Programa de Educação Tutorial), este trabalho aborda a experiência multidisciplinar de ensinar e implantar desenvolvimento e manutenção de websites para grupos PET das áreas sociais e humanas. Visto que o PET de Ciência da Computação esta intrinsecamente ligado aos meios de interação digital e visando a integração dos demais grupos, acolhemos a tarefa com dedicação, tendo conhecimento que os envolvidos eram leigos ou possuíam pouca base em relação a interface e ao domínio das diversas funcionalidades do WordPress, plataforma escolhida como base por sua manipulação intuitiva. Utilizando uma metodologia aberta ao diálogo, uma abordagem construtivista, slides demonstrativos e incentivando a equipe a manipular a plataforma, observamos o interesse individual ser demonstrado ao executarem as instruções pedidas. Muitos indo além do que lhes seria ensinado – o que nos possibilitou, com grande satisfação, aprofundar o conteúdo. Logo, podemos dizer que alcançamos resultados efetivos. Houve grande troca de informações, muitos questionamentos e, de fato, se tornaram uma experiencia enaltecedora para todos envolvidos.', 'https://petcompufma.org/documents/Estimulo-ao-pensamento-computacional-e-a-divulgacao-dos-grupos-PET-UFMA-Desenvolvimento-de-WebPages-como-pratica-interdisciplinar.pdf'),
(15, 'Artigo: Acompanhamento de Discentes: A monitoria como forma de incentivo e motivação da disciplina de Algoritmos I', 'Nelia Cantanhede Reis, Ednara Aparecida dos Santos Pereira, Gabriel Phelipe Costa Freitas, Vinicius Augusto Cardoso Reis, Geraldo Braz Junior.', '2017', NULL, 'Este artigo tem como objetivo analisar de forma parcial sob o ponto de vista de alunos e professor as contribuições na aprendizagem da disciplina de Algoritmos I por meio de atividades de monitoria. Nossa abordagem envolve a aplicação de atividades e desafios que despertam o interesse do aluno em programar, também foram utilizadas plataformas que facilitam o aprendizado. Os dados foram obtidos através de questionários aplicados aos alunos e entrevista semiestruturada com o professor da disciplina, assim, foi constatado que essas atividades de fato têm impactos na aprendizagem. Os resultados obtidos mostram que a maioria dos estudantes foi de fato motivada.', 'https://petcompufma.org/documents/Acompanhamento-de-Discentes-a-monitoria-como-forma-de-incentivo-e-motivacao-da-disciplina-de-Algoritmos-I.pdf'),
(16, 'Artigo: Educação Tutorial em Ciência da Computação: uma proposta de sistematização', 'Julia Manayra da S. Ferreira, Jorge Luis M. Ribeiro, Aristóteles T. de Freitas Júnior, Gabriel Garcez Barros Sousa, Italo Francyles Santos da Silva, Hugo Gois Santos, Matheus Chaves Menezes, Artur Albuquerque Silva, Bruno Eduardo Silva Ferreira, Lucas Gabriel Rezende de Jesus, Victor Henrique Bezerra de Lemos , Antônio de Jesus Moraes Neto , Alexandre C. M de Oliveira.', '2015', NULL, 'No intuito de proporcionar a formação acadêmica ampla e de qualidade, o Programa de Educação Tutorial (PET) é um modelo indissociável de ensino, pesquisa e extensão, que preza também por valores de cidadania e consciência social. Apesar de existir desde a década de 90, com o nome de Programa Especial de Treinamento, e ter se expandido para mais de 37 grupos na área de Computação, pouca ou nenhuma literatura tem sido produzida com intuito de prover uma base metodológica de atuação desses grupos. Este artigo descreve métodos e práticas que têm sido utilizados com êxito pelo PET de Ciência da Computação da Universidade Federal do Maranhão (PETComp/ UFMA) no desenvolvimento de suas atividades, aprimorados ao longo de seus oito anos de existência.', 'https://petcompufma.org/documents/Educacao-Tutorial-em-Ciencia-da-Computacao-uma-proposta.pdf'),
(17, 'Artigo: XSCERT: O Ponto de Encontro dos Grupos PET da UFMA', 'Alex Newman Veloso dos Santos, Dayson Newton Corrêa Rodrigues do Nascimento, Eduardo Dorneles Ferreira de Souza, Lázaro Henrique de Carvalho Marques e Alexandre César Muniz de Oliveira.', '2014', NULL, 'A Educação Tutorial tem em seu escopo de desenvolvimento atividades de pesquisa, ensino e extensão que complementam a educação de seus alunos. Uma grande maioria destas atividades resulta em eventos abertos à comunidade acadêmica. Por sua vez, o gerenciamento destes eventos envolve inscrição, controle de frequência, comunicação com os participantes, certificação e avaliação da atividade. Com o objetivo de incentivar a produção de softwares aplicativos com tecnologia Web, o PET de Ciência da Computação tem desenvolvido uma série de atividades envolvendo pesquisa de exploração e minicursos sobre tecnologias para desenvolvimento de sites e aplicativos Web. Uma das iniciativas foi desenvolver um sistema de eventos, aberto para grupos acadêmicos da UFMA, como forma de facilitar o gerenciamento de algumas atividades e aproximar os grupos PET da UFMA. Este sistema foi posteriormente batizado de XSCERT.', 'https://petcompufma.org/documents/xscert-final.pdf'),
(18, 'Resenha: Crítica de “Futuro: O imaginado e o real”', 'Rodrigo Kanehisa', '2014', NULL, 'O texto começa citando um artigo que trata deste assunto e segue analisando os motivos pelo qual isso ocorre. Com o uso de imagens o autor mostra ao leitor o futuro imaginado em 1900 para o longínquo ano 2000, estas se mostram estranhas para o leitor do século 21, pois o que se vê é um mundo onde toda a tecnologia é baseada em inventos do início do século 20. Percebe-se que este mundo é de fato não o futuro como conhecemos, mas ironicamente é um retrato da era de onde veio.', 'https://petcompufma.org/documents/Resenha-Futuro-O-Real-e-o-Imaginada.pdf'),
(19, 'Resenha: Crítica de “A Tradução Universal e os Call Centers”', 'Gabriel Garcez Barros Sousa', '2014', NULL, '“A Tradução Universal e os Call Centers” (http://boletim.de/silvio/a-traduo-universale-os-call-centers/), de Sílvio Meira, é um texto sobre o estado dos tradutores universais atualmente e alguns dos impactos que um tradutor universal pode acabar tendo na sociedade.', 'https://petcompufma.org/documents/Resenha-a-traducao-universal-e-os-call-centers.pdf'),
(20, 'Resenha: Crítica de “Empresas em redes, riscos também”', 'Daniela de Sousa Costa', '2014', NULL, 'Em “Empresas em redes, riscos também” (blog Dia a Dia, Bite a Bite , 2014), Silvio Meira discorre acerca da postura adotada por empresas de todo o mundo perante a um novo cenário criado pelo surgimento dos sistemas em rede e que no qual estas têm assumido uma posição de vulnerabilidade considerável.', 'https://petcompufma.org/documents/Resenha-nem-tao-longe.pdf'),
(21, 'Resenha: Crítica de “Até onde vai a internet?”', 'Julia Manayra da Silva Ferreira', '2014', NULL, '“até onde vai a internet?”, do professor Silvio Meira, aborda a internet em si e os caminhos que a mesma pode tomar. Nos leva a uma interessante viagem pelo que já aconteceu e dentro da história e os passos dados da internet até que ela se tornasse o que é hoje, além de nos levantar alguns questionamentos referentes à sua utilização e manutenção.', 'https://petcompufma.org/documents/Resenha-Critica-do-artigo-sociedade-paralela.pdf'),
(22, 'Artigo: O Impacto das Atividades do Grupo PET no Aprimoramento de Soft Skills Requeridos pelo Mercado de Computação do Maranhão: Uma Análise da Visão dos Discentes', 'Arthur Passos, André Barreto, Brenno Nascimento, Felipe Silva, Gabriel Costa, Yandson Costa, Davi Viana, Luis Rivero', '2021', NULL, 'O profissional de computacão precisa adquirir as mais variadas habilidades para se manter competitivo no mercado de trabalho. Entre essas habilidades, as denominadas soft skills (ou habilidades não técnicas) são atributos pessoais  que  permitem  ao  indivíduo  desempenhar  uma boa interação com o mundo ao seu redor. Nesse contexto, o Programa de Educação Tutorial (PET) surge como uma alternativa para desenvolver tais habilidades durante o ensino superior. No entanto, existem poucas análises sobre como um discente pode desenvolver soft skills durante a realização de atividades no âmbito do PET. Neste artigo, através de um formulário, foi obtida a percepcção dos discentes sobre o impacto das atividades realizadas no PET para o desenvolvimento de soft skills, considerando o contexto do estado do Maranhão. Os resultados apontam parao impacto positivo das atividades do programa para este fim, além de identificar oportunidades de melhoria.', 'https://sol.sbc.org.br/index.php/wei/article/view/15930/15771'),
(23, 'Artigo: Quando os Discentes se Expressam: Um Relato de Experiência da Criação de um Podcast para Aumentar o Engajamento e Troca de Conhecimento em Tempos de Pandemia', 'Carlos Silva, Kennedy Nunes, Nathasha Pinto, Maikon Costa, Alana Araújo, Simara Rocha, Geraldo Braz Junior, Luis Rivero', '2021', NULL, 'Melhorar o engajamento de discentes e facilitar o acesso à informação têm se tornado mais relevantes no contexto educacional. Em virtude do isolamento social gerado pela pandemia da COVID-19, recursos didáticos como podcasts e vídeos podem ser explorados para alcançar este objetivo. Como intuito manter os discentes atualizados e engajados durante o ensino remoto, o grupo PETComp da Universidade Federal do Maranhão montou uma equipe para desenvolver um podcast sobre conteúdos relacionados a Tecnologia da Informação (TI). Este artigo apresenta o processo de produção dos episódios do podcast. Após a preparação do material e lançamento do podcast em plataformas digitais, foi coletada a opinião dos discentes sobre o mesmo através de um questionário. Os resultados indicam que o podcast contribuiu para disponibilizar conteúdos construídos pelos discentes de forma descontraída, permitindo a atualização em temas relevantes e o engajamento dos ouvintes.', 'https://sol.sbc.org.br/index.php/wei/article/view/15903/15744'),
(24, 'Artigo: Quando a Aluna se Torna a Mestre: Um Relato da Experiência de Alunas de Graduação Aplicando Dinâmicas de Ensino de Computação para Alunas de Ensino Médio', 'Nathasha Pinto, Alana Araujo, Estephane Mendes, Giovanna Pavani, Karla Silva, Raimundo Neto, Katia Salles, Luis Rivero', '2020', NULL, 'O quantitativo de mulheres nas carreiras e cursos das áreas de Computação e Tecnologias é baixo se comparado ao quantitativo de homens. Para incentivá-las a entrar em cursos de exatas, vários projetos de extensão têm sido executados. Nesse contexto, o presente artigo relata os resultados da aplicação de uma   gincana   em   que   foram   realizadas   atividades   de   ensino   envolvendo computação plugada e desplugada.  As atividades e o material preparado foram escolhidos e adaptados por alunas do curso de ciência da computação da Universidade Federal do Maranhão com o intuito de encorajar alunas de ensino médio.  Como resultado desta experiência, foi possível coletar opiniões sobre o processo de criação da gincana por parte das graduandas a avaliação da mesma por parte de alunas de ensino médio.', 'https://sol.sbc.org.br/index.php/wei/article/view/11125/10996'),
(25, 'Artigo: Aplicando Técnicas de Elicitação de Requisitos durante uma Disciplina para a Concepção de um Sistema de Informação: Um Relato de Experiência', 'Yandson de Jesus Saraiva Costa, Igor Rafael Barbosa Estrela, Micael Machado Gomes, Davi Viana dos Santos, Luis Jorge Enrique Rivero Cabrejos', '2020', NULL, 'Técnicas de elicitação de requisitos são aplicadas para identificar as necessidades dos diferentes stakeholders no desenvolvimento de software. No entanto, engenheiros de software novatos encontram dificuldades ao aplicar estas técnicas na prática. Este artigo apresenta um relato de experiência sobre a combinação de técnicas de elicitação de requisitos e uma análise de opiniões dos alunos que aplicaram estas técnicas em um projeto real. Os resultados indicam: a aceitação da atividade formadora durante a disciplina; que os alunos se sentiram motivados a pesquisar mais sobre as técnicas para escolher a mais apropriada ao contexto do problema sugerido; e que mais material de apoio é necessário para ajudar na replicação das técnicas.', 'https://periodicos.set.edu.br/exatas/article/view/8809'),
(26, 'Artigo: Modelo Distribuído de Cooperação Multi-grupo através de uma REST API na Gestao de Informação do Site PET UFMA', 'Micael Machado Gomes, Antonio Moreira Pinto, Gabriel Phelipe C. Freitas, Geraldo Braz Junior', '2018', NULL, 'Este trabalho aborda deste o reprojeto do site PET UFMA até suas fazes de implementação, conforme as novas mudanças arquiteturais atribuídas à mesma. Estas vão desde a proposta de uma nova arquitetura baseada em um modelo distribuído de cooperação entre os Grupos PET, até a construção de plugins WordPress que dão suporte. Tudo isso sustentado pela premissa que consiste em dividir a responsabilidade, que hoje é de um grupo, a todos.', 'http://sistemas.deinf.ufma.br/anaisjim/artigos/2018/201828.pdf'),
(27, 'Artigo: Adoção de Práticas EaD Como Forma de Capacitação e Aperfeiçoamento Durante a Quarentena', 'José Durand, Eduarda Chagas, Arthur Passos, Carlos Vinicius Silva Da Silva, Daniel Pinto, Gabriel Sousa, Kennedy Nunes, Maikon Keslley Costa, Pedro Arthur Freitas Dias, Luis Rivero', '2020', NULL, 'Diante do cenário desta pandemia, uma solução possível para a\r\ncarga total de trabalho estabelecida por vários programas universitários e\r\nde estágio é a educação à distância. A qualificação do EAD é uma abordagem\r\nalternativa porque permite um melhor aproveitamento da equipe durante o\r\nreinício das atividades habituais.', 'https://petcompufma.org/jim/anexos/anais/eJIM_2020_paper_7.pdf'),
(28, 'Artigo: Criando uma Revista Interativa para Divulgar Histórias de Mulheres na Computação', 'Guilherme Silva, Daniel Pinto, Karla Silva, Gabriel Costa, Jadiel Costa, Maikon Costa, Luis Rivero', '2020', NULL, 'O presente artigo apresenta o progresso de um projeto que visa utilizar um modelo interativo de revista digital com o propósito de disseminar a história e as conquistas de personalidades femininas em áreas da computação.', 'https://petcompufma.org/jim/anexos/anais/eJIM_2020_paper_8.pdf'),
(29, 'Artigo: Peça em Casa: Desenvolvimento de Um Aplicativo para Apoiar o Isolamento Social em Tempos de Pandemia', 'Gabriel Sousa, Alana Araujo, Jose Durand, Eduarda Chagas, Luis Dias, Natasha Pinto, Ricardo Anchieta, Luis Rivero', '2020', NULL, 'Para conter a disseminação do vírus COVID-19, vários estados têm proposto medidas de isolamento social. Para evitar que os cidadãos saiam de casa, foi desenvolvido o aplicativo “Peça em Casa”. O aplicativo publicado fornece informações sobre estabelecimentos que possuem serviço de delivery, e caso seja necessário, fornece informações sobre lotação de estabelecimentos.', 'https://petcompufma.org/jim/anexos/anais/eJIM_2020_paper_5.pdf'),
(30, 'Artigo: Análise de Ferramentas de Gerenciamento para Testes de Software: Propondo uma Alternativa para Realidade Local', 'Dayanne Gomes, Kennedy Anderson, Carlos Silva, Estephane Mendes, Luís Dias, Pedro Freitas, Geraldo Braz, Luis Rivero', '2020', NULL, 'Muitas ferramentas buscam auxiliar os testadores de software no gerenciamento de casos de teste seja automatizando processos ou gerando relatórios de projetos. Contudo, muitos problemas ainda não foram resolvidos pelas ferramentas disponíveis. Assim, um estudo comparativo foi realizado a fim de propor uma alternativa ao ferramentas existentes.', 'https://petcompufma.org/jim/anexos/anais/eJIM_2020_paper_9.pdf');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `noticias`
--
ALTER TABLE `noticias`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `petianos`
--
ALTER TABLE `petianos`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `sites`
--
ALTER TABLE `sites`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `trabalhos_publicados`
--
ALTER TABLE `trabalhos_publicados`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `noticias`
--
ALTER TABLE `noticias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `petianos`
--
ALTER TABLE `petianos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=120;

--
-- AUTO_INCREMENT de tabela `sites`
--
ALTER TABLE `sites`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `trabalhos_publicados`
--
ALTER TABLE `trabalhos_publicados`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
