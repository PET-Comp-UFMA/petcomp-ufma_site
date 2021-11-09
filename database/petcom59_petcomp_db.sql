-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 08-Nov-2021 às 13:47
-- Versão do servidor: 10.1.35-MariaDB
-- versão do PHP: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `petcom59_petcomp_db`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `noticias`
--

CREATE TABLE `noticias` (
  `id` int(11) NOT NULL,
  `titulo` varchar(500) NOT NULL,
  `texto` text NOT NULL,
  `data` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `trabalhos_publicados`
--

INSERT INTO `trabalhos_publicados` (`id`, `titulo`, `autor`, `ano`, `palavras_chaves`, `resumo`, `link`) VALUES
(1, 'Artigo: De Veteranos para os Novatos: Avaliação das Atividades de Recepção aos Calouros Organizado pelo Grupo PETComp', 'Daniel Pinto, Eduarda Chagas, Gabriel Costa, Kennedy Nunes, Ricardo Anchieta, Simara Rocha, Anselmo Paiva, Luis Rivero', NULL, NULL, 'Alunos ingressantes em cursos de ensino superior sentem dificuldade em se adaptar à nova modalidade de ensino. Nesse contexto, oevento da Semana do Calouro é realizado pelos discentes dogrupo PET de Ciência da Computação da Universidade Federal  do  Maranhãoacompanhados  por  professores como  uma atividade de integração aos novos discentesdo curso de Ciência da Computação. Este  artigo  relata  a  experiência  de  aplicar  diversas  atividades com  o  intuito  de esclarecer as dúvidas geradas pelo ingresso no novo ambiente, bem como aumentara  visibilidade  dos  contextos  do  curso.  Ao  término  das  atividades, o  feedback  dos discentes  apontou  para  a  utilidade  das  mesmas  para  conhecer  as  oportunidades dentro da universidade em termos de projetos, pesquisas e áreas de atuação, assim como soluções para problemas que surgiram durante sua execução.', 'https://sol.sbc.org.br/index.php/wei/article/view/11130/11001'),
(2, 'Artigo: Identificando as Atividades dos Grupos do Programa de Educação Tutorial na Área de Computação no Apoio à Inclusão e Alfabetização Digital', 'Emily Costa, Antônio Pinto, José Ribamar Durand Rodrigues Junior, Alana Araújo, Ednara Pereira, Geraldo Braz Junior, Rodrigo Santos, Luis Rivero', NULL, NULL, 'O Programa de Educação Tutorial (PET) tem o objetivo de incentivar grupos de alunos de graduação a desenvolver atividades relacionadas com o Ensino, a Pesquisa e a Extensão. Existem 37 grupos PET listados no site da SBC que realizam atividades voltadas para a comunidade (público externo à universidade, idosos, crianças, entre outros). Este artigo apresenta uma análise de quais das atividades divulgadas por estes grupos são voltadas para o apoio à inclusão e alfabetização digital. As informações sobre casos de sucesso destas atividades podem servir como base para outros grupos e incentivar parcerias para realizar atividades afins.', 'https://br-ie.org/pub/index.php/wie/article/view/8594'),
(3, 'Artigo: Identificação das Expectativas e Dificuldades de Alunos de Graduação no Ensino de Engenharia de Software', 'Jéssica Mendes, Yandson Costa, Kastney Frazão, Rodrigo Santos, Davi Santos, Luis Rivero', NULL, NULL, 'A  Engenharia  de  Software  visa  apoiar  o  desenvolvimento  de  sistemas computacionais de qualidade, reduzindo os custos de produção e aumentando a produtividade dos profissionais. Buscar entender as necessidades dos alunos iniciantes  nessa  área  da  computação  é  vital  para  propor  metodologias adequadas  de  ensino.  Este  artigo  apresenta  o  resultado  da  aplicação  de  um questionário quanto à experiência dos alunos de uma disciplina introdutória de Engenharia de Software. Foi capturada a expectativa de alunos que ainda não cursaram  a  disciplina,  assim  como  a  visão  de  alunos  que  já  a  cursaram, reprovando  ou  não.  Os  resultados  desta  pesquisa  permitiram  identificar eventuais aspectos que possam ter influência positiva ou negativa no processo de aprendizado.', 'https://sol.sbc.org.br/index.php/wei/article/view/6640/6536'),
(4, 'Artigo: Educação Tutorial em Computação: Uma Análise Retrospectiva das Atividades Realizadas para a Formação Pessoal e Profissional de Cientistas da Computação', 'Fernando Leite, Gabriel Cardoso, Yandson Costa, Igor Estrela, Antônio Pinto, Ednara Pereira, Geraldo Braz Júnior, Luis Rivero', NULL, NULL, 'O  Programa  de  Educação  Tutorial  (PET)  atua  como  uma  iniciativa  de promover  a  formação  integrada  de  todos  os  atores  envolvidos  combatendo  a evasão, estimulando o desenvolvimento criativo e empreendedor, assim como a continuação   para   níveis   superiores   de   formação   acadêmica.   Apesar   da existência  de  37  grupos  PET  na  área  de  computação  segundo  a Sociedade Brasileira  de  Computação  (SBC),  poucos  grupos  divulgam  os  resultados  das ações  realizadas  em  eventos  científicos  da  computação  para  discutir  suas implicações.   Nesse   contexto,   este   trabalho   apresenta   uma   análise   das atividades  desenvolvidas  em  um  grupo  PET  de Ciência  da Computação  do ponto de vista dos discentes. Os resultadosapontam o impacto das atividades na formação dos alunos, lições aprendidas e oportunidades de melhoria para o sucesso das atividades.', 'https://sol.sbc.org.br/index.php/wei/article/view/6621/6517'),
(5, 'Resumo: SIEPET: Uma proposta de remodelagem de um sistema para novas necessidades acadêmicas', 'Gabriel Silva Monteles, Eduardo Roger Silva Nascimento, Diego da Silva Oliveira, Vinícius Augusto Cardoso Reis, Geraldo Braz Júnior', NULL, 'ENGENHARIA DE SOFTWARE, RECURSO, INTERFACE', NULL, 'https://petcompufma.org/documents/SIEPET%20Uma%20proposta%20de%20remodelagem%20de%20um%20sistema%20para%20novas%20necessidades%20acad%C3%AAmicas.pdf'),
(6, 'Resumo: Impacto da Análise de Sentimentos em redes sociais na sociedade moderna', 'Lucas Reis Abreu, Simara Vieira da Rocha, Geraldo Braz Júnior', NULL, 'Análise de sentimentos, impactos sociais, polaridade, opiniões', 'Devido ao avanço das mídias sociais observou-se um enorme crescimento de\r\ndados gerados e armazenados diariamente nesses ambientes. Dentro de tais redes sociais os\r\nusuários podem expressar opiniões próprias sobre diversificados assuntos, e é nesta esfera que\r\natua a Análise de Sentimentos. Com a alta inclusão digital fornecida pela difusão da tecnologia,\r\norganizações e empresas voltaram sua atenção para as mídias digitais, procurando identificar\r\ndentro dos comentários dos usuários, características de seu interesse, como um produto está\r\nsendo recebido ou quais melhorias podem ser aplicadas sobre ele, por exemplo. A análise de\r\nsentimentos será responsável por classificar como positivo ou negativo (também chamado de\r\npolaridade) aquele comentário.', 'https://petcompufma.org/documents/Impacto-da-An%C3%A1lise-de-Sentimentos-em-redes-sociais-na-sociedade-moderna.pdf'),
(7, 'Resumo: Reformulação do site PET Computação, com ênfase na gestão do conteúdo', 'Micael Machado Gomes, Gabriel Phelipe Costa Freitas, Geraldo Braz Júnior', NULL, 'ENGENHARIA DE SOFTWARE, RECURSO, INTERFACE.', '', 'https://petcompufma.org/documents/SIEPET-Uma-proposta-de-remodelagem-de-um-sistema-para-novas-necessidades-acad%C3%AAmicas.pdf'),
(8, 'Resumo: Uma abordagem competitiva para o estímulo ao aprendizado', 'Lucas Reis Abreu, Anderson Silva, Bruno Eduardo, Daniel Soares Carvalho, Diego Oliveira, Eduardo Roger, Gabriel Monteles, Hugo Gois, Marcos Vinicius, Phillipe Mendonça, Rodrigo Garcês, Rodrigo Nascimento, Tarcio Almeida, Victor Henrique, Geraldo Braz Junior', NULL, NULL, 'Transmitir o conhecimento apropriado de um determinado conteúdo sempre é\r\nacompanhado de desafios e o maior deles é ter a garantia que os alunos realmente absorveram\r\na matéria lecionada de forma eficaz. Em vista de tal disputa, o grupo do Programa de Educação\r\nTutorial de Ciência da Computação (PETComp) da Universidade Federal do Maranhão\r\n(UFMA), apresenta através deste trabalho uma proposta de abordagem competitiva\r\nmetodológica para estruturação de competições envolvendo temáticas presentes no curso, tais\r\ncomo programação, robótica e jogos com a finalidade de subsidiar práticas de ensino, pesquisa\r\ne extensão', 'https://petcompufma.org/documents/Uma-abordagem-competitiva-para-o-estimulo-ao-aprendizado-.pdf'),
(9, 'Resumo: Plataforma gamificada de auxílio para exames de POSCOMP e ENADE', 'Lucas Reis Abreu,  Anderson Silva,  Bruno Eduardo, Daniel Soares Carvalho, Diego Oliveira, Eduardo Roger, Gabriel Monteles, Hugo Gois, Marcos Vinicius, Phillipe Mendonça, Rodrigo Garcês, Rodrigo Nascimento, Tárcio Almeida, Victor Henrique, Geraldo Braz Junior', NULL, NULL, 'Testes como ENADE e POSCOMP (exame de ingresso na pós graduação do curso de\r\ncomputação) são constantemente realizados pelos discentes do curso, visando melhorar sua carreira\r\nprofissional. Em prol de ajudar estes alunos, o Programa de Educação Tutorial de Ciência da\r\nComputação (PETComp) da Universidade Federal do Maranhão (UFMA) se propôs a construir uma\r\nplataforma gamificada denominada COMPET, cuja proposta é auxiliar os estudantes do curso e\r\ninteressados nesta área de uma forma dinâmica, interativa e mais atrativa, visando melhorar seu\r\ndesempenho nos respectivos exames citados através de um jogo de perguntas e respostas, na qual as\r\nperguntas foram retiradas de provas anteriores do ENADE e POSCOMP, além de questões temáticas\r\nelaboradas pelos próprios docentes da universidade.', 'https://petcompufma.org/documents/Plataforma-gamificada-de-aux%C3%ADlio-para-exames-de-POSCOMP-e-ENADE.pdf'),
(10, 'Artigo: Melhoria da Grade Curricular do Curso de Ciência da Computação da Universidade Federal do Maranhão: uma Abordagem Analítica', 'Anderson S. Fonseca, Eduardo R. S. Nascimento, Marcos Vinicius C. Gomes, Geraldo Braz Junior', NULL, NULL, NULL, 'https://petcompufma.org/documents/Melhoria-da-grade%20curricular-do-curso-de-ciencia-da-Computacao-da-Universidade-federal-do-maranhao-uma-abordagem-analitica.pdf'),
(11, 'Artigo: BodyRating: Uma proposta para anotção de silhueta corporal para avaliação de autopercepção', 'Anderson S. Fonseca, Victor H. B. de Lemos, Artur A. Silva, Geraldo Braz Junior,  Anselmo C. Paiva, Antonio A. M. da Silva', NULL, NULL, 'Atualmente, a aparencia ˆ e de grande import ´ ancia na vida de muitos e ˆ\r\na forma que pessoas avaliam a propria imagem pode levar a diversos transtor- ´\r\nnos de autopercepc¸ao. Avaliar o n ˜ ´ıvel desses transtornos levou a proposta da\r\nferramenta BodyRating que anota a classificac¸ao de modelos 3D de pacientes ˜\r\nvoluntarios feita por especialistas da ´ area levando em considerac¸ ´ ao a Escala ˜\r\nde Silhuetas. A ferramenta foi apresentada e percebeu-se uma grande aceitac¸ao˜\r\nda mesma. Apos a anotac¸ ´ ao dos modelos 3D, os dados coletados ser ˜ ao utili- ˜\r\nzados como base para o desenvolvimento de uma ferramenta de classificac¸ao˜\r\nautomatica que ´ e uma futura proposta de aux ´ ´ılio a especialistas.\r\n', 'https://petcompufma.org/documents/BodyRating-Uma-proposta-para-anotacao-de-silhueta-corporal-para-avaliacao-de-autopercepcao.pdf'),
(12, 'Artigo: O Uso de Competições como Ferramenta de Ensino e Fortalecimento do Aprendizado dentro do Curso de Ciência da Computação', 'Lucas Reis Abreu, Daniel Soares Carvalho, Diego Oliveira, Geraldo Braz Junior', NULL, NULL, NULL, 'https://petcompufma.org/documents/O-Uso-de-Competicoes-como-Ferramenta-de-Ensino-e-Fortalecimento-do-Aprendizado-dentro-do-Curso-de-Ciencia-da-Computacao.pdf'),
(13, 'Artigo: COMPET Um software de Integralização do Curso de Ciência da Computação', 'Bruno Eduardo Silva Ferreira, Hugo Gois Santos, Lucas Reis Abreu,  Tarcio Almeida Lima, Rodrigo do Nascimento Siqueira, Jefferson Pereira Diniz, Phillipe Idivaldo Mendonça Silva, Victor Henrique Bezerra de Lemos, Geraldo Braz Junior', NULL, NULL, NULL, 'https://petcompufma.org/documents/COMPET-Um-software-de-Integralizacao-do-Curso-de-Ciencia-da-Computacao.pdf'),
(14, 'Artigo: Estímulo ao pensamento computacional e a divulgação dos grupos PET UFMA: Desenvolvimento de WebPages como prática interdisciplinar', 'Hugo G. Santos ,Celielma Costa, Lucas R. Abreu, Eduardo R. S. Nascimento, Geraldo B. Junior', NULL, NULL, NULL, 'https://petcompufma.org/documents/Estimulo-ao-pensamento-computacional-e-a-divulgacao-dos-grupos-PET-UFMA-Desenvolvimento-de-WebPages-como-pratica-interdisciplinar.pdf'),
(15, 'Artigo: Acompanhamento de Discentes: A monitoria como forma de incentivo e motivação da disciplina de Algoritmos I', 'Nelia Cantanhede Reis, Ednara Aparecida dos Santos Pereira, Gabriel Phelipe Costa Freitas, Vinicius Augusto Cardoso Reis, Geraldo Braz Junior.', NULL, NULL, 'Este artigo tem como objetivo analisar de forma parcial sob o ponto\r\nde vista de alunos e professor as contribuic¸oes na aprendizagem da disciplina ˜\r\nde Algoritmos I por meio de atividades de monitoria. Nossa abordagem envolve\r\na aplicac¸ao de atividades e desafios que despertam o interesse do aluno em pro- ˜\r\ngramar, tambem foram utilizadas plataformas que facilitam o aprendizado. Os ´\r\ndados foram obtidos atraves de question ´ arios aplicados aos alunos e entrevista ´\r\nsemi-estruturada com o professor da disciplina, assim, foi constatado que essas atividades de fato tem impactos na aprendizagem. Os resultados obtidos ˆ\r\nmostram que a maioria dos estudantes foi de fato motivada.', 'https://petcompufma.org/documents/Acompanhamento-de-Discentes-a-monitoria-como-forma-de-incentivo-e-motivacao-da-disciplina-de-Algoritmos-I.pdf'),
(16, 'Artigo: Educação Tutorial em Ciência de Computação para o WEI 2015', 'Julia Manayra da S. Ferreira, Jorge Luis M. Ribeiro, Aristóteles T. de Freitas Júnior, Gabriel Garcez Barros Sousa, Italo Francyles Santos da Silva, Hugo Gois Santos, Matheus Chaves Menezes, Artur Albuquerque Silva, Bruno Eduardo Silva Ferreira, Lucas Gabriel Rezende de Jesus, Victor Henrique Bezerra de Lemos , Antônio de Jesus Moraes Neto , Alexandre C. M de Oliveira.', NULL, NULL, 'No intuito de proporcionar a formac¸ao acad ˜ emica ampla e de qua- ˆ\r\nlidade, o Programa de Educac¸ao Tutorial (PET) ˜ e um modelo indissoci ´ avel ´\r\nde ensino, pesquisa e extensao, que preza tamb ˜ em por valores de cidadania ´\r\ne consciencia social. Apesar de existir desde a d ˆ ecada de 90, com o nome ´\r\nde Programa Especial de Treinamento, e ter se expandido para mais de 37\r\ngrupos na area de Computac¸ ´ ao, pouca ou nenhuma literatura tem sido pro- ˜\r\nduzida com intuito de prover uma base metodologica de atuac¸ ´ ao desses grupos. ˜\r\nEste artigo descreve metodos e pr ´ aticas que t ´ em sido utilizados com ˆ exito pelo ˆ\r\nPET de Ciencia da Computac¸ ˆ ao da Universidade Federal do Maranh ˜ ao (PET- ˜\r\nComp/UFMA) no desenvolvimento de suas atividades, aprimorados ao longo de\r\nseus oito anos de existencia. ', 'https://petcompufma.org/documents/Educacao-Tutorial-em-Ciencia-da-Computacao-uma-proposta.pdf'),
(17, 'Artigo: XSCERT publicado para o ENAPET 2014', 'Alex Newman Veloso dos Santos, Dayson Newton Corrêa Rodrigues do Nascimento, Eduardo Dorneles Ferreira de Souza, Lázaro Henrique de Carvalho Marques e Alexandre César Muniz de Oliveira.', NULL, NULL, NULL, 'https://petcompufma.org/documents/xscert-final.pdf'),
(18, 'Resenha: Crítica de “Futuro: O imaginado e o real”', 'Rodrigo Kanehisa', NULL, NULL, NULL, 'https://petcompufma.org/documents/Resenha-Futuro-O-Real-e-o-Imaginada.pdf'),
(19, 'Resenha: Crítica de “A Tradução Universal e os Call Centers”', 'Gabriel Garcez Barros Sousa', NULL, NULL, NULL, 'https://petcompufma.org/documents/Resenha-a-traducao-universal-e-os-call-centers.pdf'),
(20, 'Resenha: Crítica de “Empresas em redes, riscos também”', 'Daniela de Sousa Costa', NULL, NULL, NULL, 'https://petcompufma.org/documents/Resenha-nem-tao-longe.pdf'),
(21, 'Resenha: Crítica de “Até onde vai a internet?”', 'Julia Manayra da Silva Ferreira', NULL, NULL, NULL, 'https://petcompufma.org/documents/Resenha-Critica-do-artigo-sociedade-paralela.pdf');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `noticias`
--
ALTER TABLE `noticias`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `petianos`
--
ALTER TABLE `petianos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sites`
--
ALTER TABLE `sites`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trabalhos_publicados`
--
ALTER TABLE `trabalhos_publicados`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `noticias`
--
ALTER TABLE `noticias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `petianos`
--
ALTER TABLE `petianos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sites`
--
ALTER TABLE `sites`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `trabalhos_publicados`
--
ALTER TABLE `trabalhos_publicados`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
