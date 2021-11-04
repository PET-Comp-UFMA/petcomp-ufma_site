-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 04-Nov-2021 às 12:56
-- Versão do servidor: 10.4.21-MariaDB
-- versão do PHP: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
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

DROP TABLE IF EXISTS `noticias`;
CREATE TABLE IF NOT EXISTS `noticias` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(500) NOT NULL,
  `texto` text NOT NULL,
  `data` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `petianos`
--

DROP TABLE IF EXISTS `petianos`;
CREATE TABLE IF NOT EXISTS `petianos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome_completo` varchar(60) DEFAULT NULL,
  `primeiro_nome` varchar(15) NOT NULL,
  `ultimo_nome` varchar(15) NOT NULL,
  `ano` int(11) NOT NULL,
  `periodo` int(11) NOT NULL,
  `ativo` tinyint(4) NOT NULL,
  `orientador` tinyint(4) NOT NULL,
  `voluntario` tinyint(4) NOT NULL,
  `imagem` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `petianos`
--

INSERT INTO `petianos` (`id`, `nome_completo`, `primeiro_nome`, `ultimo_nome`, `ano`, `periodo`, `ativo`, `orientador`, `voluntario`, `imagem`) VALUES
(1, 'Luis Rivero', 'Luis', 'Rivero', 2019, 1, 1, 1, 0, 'Luis Riveiro.jpg'),
(2, 'Geraldo Braz Junior', 'Geraldo', 'Braz', 2016, 1, 0, 1, 0, 'Geraldo Braz.jpg'),
(3, 'Alexandre Cesar Muniz de Oliveira', 'Alexandre', 'Oliveira', 2007, 2, 0, 1, 0, 'Alexandre Oliveira.jpg'),
(4, 'Antonio Pinto', 'Antonio', 'Pinto', 2017, 2, 0, 0, 0, 'Antonio Pinto.jpg'),
(5, 'Arthur Costa Serra', 'Arthur', 'Serra', 2017, 2, 0, 0, 0, 'Arthur Costa.jpg'),
(6, 'Celielma Baldez Costa', 'Celielma', 'Costa', 2017, 2, 0, 0, 0, 'Celielma Costa.jpg'),
(7, 'Ednara Pereira', 'Ednara', 'Pereira', 2017, 2, 0, 0, 0, 'Ednara Pereira.jpg'),
(8, 'Fernando Henrique', 'Fernando', 'Henrique', 2018, 1, 0, 0, 0, 'Fernando Henrique.jpg'),
(9, 'Gabriel Phelipe', 'Gabriel', 'Phelipe', 2017, 1, 0, 0, 0, 'Gabriel Phelipe.jpg'),
(10, 'Jéssica Costa', 'Jéssica', 'Costa', 2018, 2, 0, 0, 0, 'Jéssica Costa.jpg'),
(11, 'Kelly Rebeca', 'Kelly', 'Rebeca', 2018, 1, 0, 0, 0, 'Kelly Rebeca.jpg'),
(12, 'Marcos Santos', 'Marcos', 'Santos', 2017, 2, 0, 0, 0, 'Marcos Santos.jpg'),
(13, 'Micael Gomes', 'Micael', 'Gomes', 2017, 2, 0, 0, 0, 'Micael Gomes.jpg'),
(14, 'Vinicius Augusto', 'Vinicius', 'Augusto', 2017, 1, 0, 0, 0, 'Vinicius Augusto.jpg'),
(15, 'Yandson Costa', 'Yandson', 'Costa', 2018, 1, 0, 0, 0, 'Yandson Costa.jpg'),
(16, 'Alex Newman', 'Alex', 'Newman', 2012, 1, 0, 0, 0, 'Alex Newman.jpg'),
(17, 'Alisson Santos', 'Alisson', 'Santos', 2017, 2, 0, 0, 0, 'Alisson Santos.jpg'),
(18, 'Allexandre de Carvalho Araújo', 'Allexandre', 'Araújo', 2015, 1, 0, 0, 0, 'Allexandre Araújo.jpg'),
(19, 'Anderson Silva', 'Anderson', 'Silva', 2016, 1, 0, 0, 0, 'Anderson Silva.jpg'),
(20, 'Antonio Jesus', 'Antonio', 'Jesus', 2014, 2, 0, 0, 0, 'Antonio Jesus.jpg'),
(21, 'Antonio Mourão', 'Antonio', 'Mourão', 2012, 2, 0, 0, 0, 'Antonio Mourao.jpg'),
(22, 'Antonio Raposo', 'Antonio', 'Raposo', 2012, 2, 0, 0, 0, 'Antonio Raposo.jpg'),
(23, 'Aristóteles Junior', 'Aristóteles', 'Junior', 2015, 1, 0, 0, 0, 'Aristóteles Junior.jpg'),
(24, 'Artur Albuquerque', 'Artur', 'Albuquerque', 2015, 1, 0, 0, 0, 'Artur Albuquerque.jpg'),
(25, 'Bruno Eduardo', 'Bruno', 'Eduardo', 2014, 2, 0, 0, 0, 'Bruno Eduardo.jpg'),
(26, 'Caio Manfredini', 'Caio', 'Manfredini', 2017, 2, 0, 0, 0, 'Caio Manfredini.jpg'),
(27, 'Dalai dos Santos', 'Dalai', 'dos Santos', 2012, 1, 0, 0, 0, 'Dalai dos Santos.jpg'),
(28, 'Daniel Soares Carvalho', 'Daniel', 'Carvalho', 2016, 1, 0, 0, 0, 'Daniel Soares.jpg'),
(29, 'Daniela Costa', 'Daniela', 'Costa', 2013, 2, 0, 0, 0, 'Daniela Costa.jpg'),
(30, 'Dayson Nascimento', 'Dayson', 'Nascimento', 2012, 2, 0, 0, 0, 'Dayson Nascimento.jpg'),
(31, 'Diego Oliveira', 'Diego', 'Oliveira', 2016, 2, 0, 0, 0, 'Diego Oliveira.jpg'),
(32, 'Eduardo Dorneles', 'Eduardo', 'Dorneles', 2013, 1, 0, 0, 0, 'Eduardo Dorneles.jpg'),
(33, 'Eduardo Roger', 'Eduardo', 'Roger', 2016, 1, 0, 0, 0, 'Eduardo Roger.jpg'),
(34, 'Emanuel Amaral', 'Emanuel', 'Amaral', 2012, 2, 0, 0, 0, 'Emanuel Amaral.jpg'),
(35, 'Êmile Cunha', 'Êmile', 'Cunha', 2013, 1, 0, 0, 0, 'Êmile Cunha.jpg'),
(36, 'Gabriel Garcez', 'Gabriel', 'Garcez', 2014, 1, 0, 0, 0, 'Gabriel Garcez.jpg'),
(37, 'Gabriel Monteles', 'Gabriel', 'Monteles', 2016, 1, 0, 0, 0, 'Gabriel Monteles.jpg'),
(38, 'Geovane Menezes', 'Geovane', 'Menezes', 2012, 2, 0, 0, 0, 'Geovane Menezes.jpg'),
(39, 'Gilvan Tavares', 'Gilvan', 'Tavares', 2013, 2, 0, 0, 0, 'Gilvan Tavares.jpg'),
(40, 'Giovanni Dias', 'Giovanni', 'Dias', 2012, 1, 0, 0, 0, 'Giovanni Dias.jpg'),
(41, 'Gleidson mendes', 'Gleidson', 'Mendes', 2012, 1, 0, 0, 0, 'Gleidson mendes.jpg'),
(42, 'Hugo Gois', 'Hugo', 'Gois', 2015, 1, 0, 0, 0, 'Hugo Gois.jpg'),
(43, 'Isabel Carvalho', 'Isabel', 'Carvalho', 2012, 1, 0, 0, 0, 'Isabel Carvalho.jpg'),
(44, 'Italo Francyles', 'Italo', 'Francyles', 2013, 1, 0, 0, 0, 'Italo Francyles.jpg'),
(45, 'Jeferson Pereira Diniz', 'Jefferson', 'Diniz', 2015, 2, 0, 0, 0, 'Jefferson Diniz.jpg'),
(46, 'Jorge Ribeiro', 'Jorge', 'Ribeiro', 2014, 2, 0, 0, 0, 'Jorge Ribeiro.jpg'),
(47, 'Julia Manayra', 'Julia', 'Manayra', 2014, 1, 0, 0, 0, 'Julia Manayra.jpg'),
(48, 'Juliano Ramos', 'Juliano', 'Ramos', 2012, 1, 0, 0, 0, 'Juliano Ramos.jpg'),
(49, 'Kassio Sousa', 'Kassio', 'Sousa', 2012, 1, 0, 0, 0, 'Kassio Sousa.jpg'),
(50, 'Lazaro Henrique', 'Lazaro', 'Henrique', 2012, 1, 0, 0, 0, 'Lazaro Henrique.jpg'),
(51, 'Luann Marques', 'Luann', 'Marques', 2013, 2, 0, 0, 0, 'Luann Marques.jpg'),
(52, 'Lucas Abreu', 'Lucas', 'Abreu', 2015, 2, 0, 0, 0, 'Lucas Abreu.jpg'),
(53, 'Luiza Helena', 'Luiza', 'Helena', 2012, 1, 0, 0, 0, 'Luiza Helena.jpg'),
(54, 'Marcelo Branco', 'Marcelo', 'Branco', 2012, 1, 0, 0, 0, 'Marcelo Branco.jpg'),
(55, 'Marcos Vinicius', 'Marcos', 'Vinicius', 2016, 1, 0, 0, 0, 'Marcos Vinicius.jpg'),
(56, 'Matheus Coimbra', 'Matheus', 'Coimbra', 2013, 1, 0, 0, 0, 'Matheus Coimbra.jpg'),
(57, 'Matheus Menezes', 'Matheus', 'Menezes', 2012, 2, 0, 0, 0, 'Matheus Menezes.jpg'),
(58, 'Nelia Reis', 'Nelia', 'Reis', 2017, 1, 0, 0, 0, 'Nelia Reis.jpg'),
(59, 'Nubia Cristine', 'Nubia', 'Cristine', 2012, 1, 0, 0, 0, 'Nubia Cristine.jpg'),
(60, 'Phillipe Mendonça', 'Phillipe', 'Mendonça', 2016, 1, 0, 0, 0, 'Phillipe Mendonça.jpg'),
(61, 'Polyanna Costa', 'Polyanna', 'Costa', 2013, 2, 0, 0, 0, 'Polyanna Costa.jpg'),
(62, 'Rafael Dias', 'Rafael', 'Dias', 2014, 1, 0, 0, 0, 'Rafael Dias.jpg'),
(63, 'Rafael Drummond', 'Rafael', 'Drummond', 2012, 1, 0, 0, 0, 'Rafael Drummond.jpg'),
(64, 'Robert Santos', 'Robert', 'Santos', 2017, 2, 0, 0, 0, 'Robert Santos.jpg'),
(65, 'Rodrigo Garcês', 'Rodrigo', 'Garcês', 2015, 1, 0, 0, 0, 'Rodrigo Garcês.jpg'),
(66, 'Samyle Lindsay', 'Samyle', 'Lindsay', 2012, 1, 0, 0, 0, 'Samyle Lindsay.jpg'),
(67, 'Sidney Melo', 'Sidney', 'Melo', 2012, 1, 0, 0, 0, 'Sidney Melo.jpg'),
(68, 'Tarcio Almeida', 'Tarcio', 'Almeida', 2014, 2, 0, 0, 0, 'Tarcio Almeida.jpg'),
(69, 'Victor Henrique', 'Victor', 'Henrique', 2015, 1, 0, 0, 0, 'Victor Henrique.jpg'),
(70, 'Weldson Amaral', 'Weldson', 'Amaral', 2012, 1, 0, 0, 0, 'Weldson Amaral.jpg'),
(71, 'Werliton Carlos', 'Werliton', 'Carlos', 2014, 1, 0, 0, 0, 'Werliton Carlos.jpg'),
(72, 'Alyson Estrela Silva', 'Alyson', 'Estrela', 2021, 2, 1, 0, 0, 'Alyson Estrela.jpg'),
(73, 'André Barreto', 'André', 'Barreto', 2021, 1, 1, 0, 0, 'Andre Barreto.jpg'),
(74, 'Arthur Passos', 'Arthur', 'Passos', 2019, 2, 1, 0, 0, 'Arthur Passos.jpg'),
(75, 'Iago Victor', 'Iago', 'Victor', 2021, 1, 1, 0, 0, 'Iago Victor.jpg'),
(76, 'João Davi', 'João', 'Davi', 2021, 1, 1, 0, 0, 'João Davi.jpg'),
(77, 'João Victor', 'João', 'Victor', 2021, 2, 1, 0, 0, 'João Victor.jpg'),
(78, 'José Florêncio', 'José', 'Florêncio', 2021, 2, 1, 0, 0, 'Jose Florencio.jpg'),
(79, 'Maikon Kessley', 'Maikon', 'Kessley', 2021, 1, 1, 0, 0, 'Maikon Kessley.jpg'),
(80, 'Matheus Levy de Lima Bessa', 'Matheus', 'Levy', 2021, 1, 1, 0, 0, 'Matheus Levy.jpg'),
(81, 'Italo Luigi Cerqueira Dovera', 'Luigi', 'Dovera', 2021, 2, 1, 0, 0, 'Luigi Dovera.jpg'),
(82, 'Lukas Gabriel Cruz Mota', 'Lukas', 'Mota', 2021, 2, 1, 0, 0, 'Lukas Mota.jpg'),
(83, 'Pedro Rocha Boucinhas Pacheco', 'Pedro', 'Pacheco', 2021, 2, 1, 0, 0, 'Pedro Rocha.jpg'),
(84, 'Brenno Izaias', 'Brenno', 'Izaias', 2020, 2, 1, 0, 1, 'Brenno Izaias.jpg'),
(85, 'Carlos Vinicius', 'Carlos', 'Vinicius', 2020, 1, 1, 0, 1, 'Carlos Vinicius.jpg'),
(86, 'Gabriel Costa', 'Gabriel', 'Costa', 2020, 1, 1, 0, 1, 'Gabriel Costa.jpg'),
(87, 'Gabriel Silva', 'Gabriel', 'Silva', 2021, 2, 1, 0, 1, 'Gabriel Silva.jpg'),
(88, 'Kennedy Anderson', 'Kennedy', 'Anderson', 2020, 1, 1, 0, 1, 'Kennedy Anderson.jpg'),
(89, 'Paulo Victor', 'Paulo', 'Victor', 2021, 1, 1, 0, 1, 'Paulo Victor.jpg'),
(90, 'Thalisson Jon', 'Thalisson', 'Jon', 2021, 1, 1, 0, 1, 'Thalisson Jon.jpg'),
(91, 'João Mateus Silva Lopes', 'João', 'Mateus', 2021, 1, 0, 0, 0, 'Joao Mateus.jpg'),
(92, 'Nathasha Araújo Pinto', 'Nathasha', 'Pinto', 2019, 2, 0, 0, 0, 'Nathasha Pinto.jpg'),
(93, 'Alana Cristina de Carvalho Araújo', 'Alana', 'Araújo', 2018, 2, 0, 0, 0, 'Alana Araújo.jpg'),
(94, 'Jadiel Costa Santos Junior', 'Jadiel', 'Junior', 2018, 2, 0, 0, 0, 'Jadiel Junior.jpg');

-- --------------------------------------------------------

--
-- Estrutura da tabela `sites`
--

DROP TABLE IF EXISTS `sites`;
CREATE TABLE IF NOT EXISTS `sites` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(60) NOT NULL,
  `link` varchar(500) NOT NULL,
  `descricao` text NOT NULL,
  `evento` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `trabalhos_publicados`
--

DROP TABLE IF EXISTS `trabalhos_publicados`;
CREATE TABLE IF NOT EXISTS `trabalhos_publicados` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(500) NOT NULL,
  `autor` varchar(500) NOT NULL,
  `ano` varchar(4) DEFAULT NULL,
  `palavras_chaves` varchar(150) DEFAULT NULL,
  `resumo` text DEFAULT NULL,
  `link` varchar(500) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `trabalhos_publicados`
--

INSERT INTO `trabalhos_publicados` (`id`, `titulo`, `autor`, `ano`, `palavras_chaves`, `resumo`, `link`) VALUES
(1, 'Educação Tutorial em Computação: Uma Análise Retrospectiva das Atividades Realizadas para a Formação Pessoal e Profissional de Cientistas da Computação', 'Fernando Leite, Gabriel Cardoso, Yandson Costa, Igor Estrela, Antônio Pinto, Ednara Pereira, Geraldo Braz Júnior, Luis Rivero', '2018', 'teste', 'O  Programa  de  Educação  Tutorial  (PET)  atua  como  uma  iniciativa  de promover  a  formação  integrada  de  todos  os  atores  envolvidos  combatendo  a evasão, estimulando o desenvolvimento criativo e empreendedor, assim como a continuação   para   níveis   superiores   de   formação   acadêmica.   Apesar   da existência  de  37  grupos  PET  na  área  de  computação  segundo  a Sociedade Brasileira  de  Computação  (SBC),  poucos  grupos  divulgam  os  resultados  das ações  realizadas  em  eventos  científicos  da  computação  para  discutir  suas implicações.   Nesse   contexto,   este   trabalho   apresenta   uma   análise   das atividades  desenvolvidas  em  um  grupo  PET  de Ciência  da Computação  do ponto de vista dos discentes. Os resultados apontam o impacto das atividades na formação dos alunos, lições aprendidas e oportunidades de melhoria para o sucesso das atividades.', 'https://sol.sbc.org.br/index.php/wei/article/view/6621/6517'),
(2, 'SIEPET: Uma proposta de remodelagem de um sistema para novas necessidades acadêmicas', 'Lucas Reis Abreu, Simara Vieira da Rocha, Geraldo Braz Júnior', '2019', 'ENGENHARIA DE SOFTWARE; RECURSO; INTERFACE', 'O Programa de Educação Tutorial (PET) tem em seu escopo de desenvolvimento\natividades de pesquisa, ensino e extensão que complementam a educação de seus alunos.\nMuitas dessas atividades resultam em criação de eventos abertos à comunidade acadêmica.\nPor sua vez, o gerenciamento destes eventos envolve inscrição, controle de frequência e\nemissão de certificados. Neste contexto, o PET Ciência da Computação (PETComp)\ndesenvolveu o XSCERT, uma plataforma de eventos como forma de facilitar o gerenciamento\nde algumas atividades e aproximar os grupos PET da UFMA. Com o decorrer do tempo,\nnovas necessidades surgiram, como a criação de sub-eventos dentro de um evento, eventos\npagos e inscrições coletivas para eventos que possuem competições. De posse dessa\nnecessidade, e também com o objetivo de criar uma proposta mais intuitiva e que possa ser\ncompartilhada com os outros grupos, houve a iniciativa de reformular o antigo sistema de\neventos do grupo. O sistema foi denominado de SIEPET (Sistema de Inscrições em Eventos\ndo PET).', 'SIEPET Uma proposta de remodelagem de um sistema para novas necessidades acadêmicas.pdf');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
