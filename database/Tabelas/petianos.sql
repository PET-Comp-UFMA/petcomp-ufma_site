-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Tempo de geração: 29-Maio-2022 às 15:10
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
(77, 'André Barreto', 'André', ' Barreto', 2021, 1, 0, 0, 0, 'Andre Barreto.jpg'),
(78, 'Arthur Passos', 'Arthur', ' Passos', 2019, 2, 0, 0, 0, 'Arthur Passos.jpg'),
(79, 'Iago Victor', 'Iago ', 'Victor', 2021, 1, 0, 0, 0, 'Iago Victor.jpg'),
(80, 'João Davi', 'João ', ' Davi', 2021, 1, 0, 0, 0, 'João Davi.jpg'),
(81, 'João Victor', 'João ', 'Victor', 2021, 2, 1, 0, 1, 'João Victor.jpg'),
(82, 'José Florêncio de Melo Neto', 'José ', 'Florêncio', 2021, 2, 1, 0, 0, 'José Florêncio.jpg'),
(83, 'Maikon Kessley', 'Maikon ', 'Kessley', 2021, 1, 0, 0, 0, 'Maikon Kessley.jpg'),
(84, 'Matheus Levy de Lima Bessa', 'Matheus ', ' Levy', 2021, 1, 1, 0, 0, 'Matheus Levy.jpg'),
(85, 'Italo Luigi Cerqueira Dovera', 'Luigi', 'Dovera', 2021, 2, 1, 0, 1, 'Luigi Dovera.jpg'),
(86, 'João Pedro Uchoa da Silva Araújo', 'João', 'Uchoa', 2021, 2, 0, 0, 0, 'João Uchoa.jpg'),
(87, 'Lucas Farias Pereira', 'Lucas ', 'Farias', 2021, 2, 1, 0, 0, 'Lucas Farias.jpg'),
(88, 'Lukas Gabriel Cruz Mota', 'Lukas', 'Mota', 2021, 2, 1, 0, 0, 'Lukas Mota.jpg'),
(89, 'Pedro Rocha Boucinhas Pacheco', 'Pedro', 'Pacheco', 2021, 2, 1, 0, 1, 'Pedro Boucinhas.png'),
(90, 'Brenno Izaias', 'Brenno ', ' Izaias', 2020, 2, 0, 0, 0, 'Brenno Izaias.jpg'),
(91, 'Carlos Vinicius', 'Carlos ', ' Vinicius', 2020, 1, 0, 0, 0, 'Carlos Vinicius.jpg'),
(92, 'Gabriel Costa', 'Gabriel ', ' Costa', 2020, 1, 0, 0, 0, 'Gabriel Costa.jpg'),
(93, 'Gabriel Silva', 'Gabriel ', ' Silva', 2021, 2, 1, 0, 1, 'Gabriel Silva.jpeg'),
(94, 'Kennedy Anderson', 'Kennedy ', ' Anderson', 2020, 1, 0, 0, 0, 'Kennedy Anderson.jpg'),
(95, 'Paulo Victor', 'Paulo ', 'Victor', 2021, 1, 1, 0, 1, 'Paulo Victor.jpg'),
(96, 'Thalisson Jon', 'Thalisson ', 'Jon', 2021, 1, 0, 0, 0, 'Thalisson Jon.jpg'),
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
(119, 'Guilherme Alberto Sousa Ribeiro', 'Guilherme', 'Ribeiro', 2009, 1, 0, 0, 0, 'Guilherme Ribeiro.jpg'),
(121, 'Jackson Silva Nascimento', 'Jackson', 'Nascimento', 2022, 4, 1, 0, 0, 'Jackson Nascimento.png'),
(122, 'Matheus Vinicius Garcia Cardoso', 'Matheus', 'Cardoso', 2022, 2, 1, 0, 0, 'Matheus Vinicius.jpg'),
(123, 'Valter Abreu Silva Junior', 'Valter ', 'Junior', 2022, 2, 1, 0, 0, 'Valter Abreu.png'),
(124, 'Adriano França Monteiro', 'Adriano ', 'Monteiro', 2022, 2, 1, 0, 0, 'Adriano França.jpeg'),
(125, 'Pedro Alexandre Ferreira França', 'Pedro', 'França', 2022, 2, 0, 0, 0, 'Pedro Alexandre.png'),
(126, 'Manoel De Jesus De Júnior', 'Manoel', 'Júnior', 2022, 4, 1, 0, 0, 'Manoel de Jesus.jpg'),
(127, 'Melquezedeque Costa Bezerra', 'Melquezedeque', 'Bezerra', 2022, 2, 1, 0, 0, 'Melquezedeque Costa.png'),
(128, 'Jessica Cristina Santos do Nascimento', 'Jessica', 'Nascimento', 2022, 2, 1, 0, 0, 'Jessica Cristina.png'),
(129, 'Luiza Karine de Melo Borges', 'Luiza', 'Karine', 2022, 2, 1, 0, 0, 'Luiza Karine.png');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `petianos`
--
ALTER TABLE `petianos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `petianos`
--
ALTER TABLE `petianos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=130;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
