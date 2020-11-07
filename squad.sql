-- phpMyAdmin SQL Dump
-- version 4.9.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Tempo de geração: 12/08/2020 às 03:35
-- Versão do servidor: 5.7.26
-- Versão do PHP: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `squad`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `acessos`
--

CREATE TABLE `acessos` (
  `id` int(1) NOT NULL,
  `data` datetime DEFAULT NULL,
  `ip` varchar(15) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Despejando dados para a tabela `acessos`
--

INSERT INTO `acessos` (`id`, `data`, `ip`) VALUES
(17, '2020-07-07 14:57:11', '::1'),
(18, '2020-07-08 08:59:49', '::1'),
(19, '2020-07-09 13:15:02', '::1'),
(20, '2020-07-10 17:12:48', '::1'),
(21, '2020-07-16 13:49:49', '::1'),
(22, '2020-07-20 15:27:31', '::1');

-- --------------------------------------------------------

--
-- Estrutura para tabela `acessos_online`
--

CREATE TABLE `acessos_online` (
  `ip` varchar(20) NOT NULL,
  `time` int(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Despejando dados para a tabela `acessos_online`
--

INSERT INTO `acessos_online` (`ip`, `time`) VALUES
('::1', 1595295575);

-- --------------------------------------------------------

--
-- Estrutura para tabela `clientes`
--

CREATE TABLE `clientes` (
  `id` int(11) NOT NULL,
  `nome` text,
  `cpf` varchar(255) DEFAULT NULL,
  `nascimento` date NOT NULL,
  `email` varchar(255) NOT NULL,
  `telefone` varchar(255) NOT NULL,
  `cep` varchar(255) NOT NULL,
  `cidade` varchar(255) NOT NULL,
  `estado` varchar(255) NOT NULL,
  `bairro` varchar(255) NOT NULL,
  `endereco` varchar(255) NOT NULL,
  `numero` varchar(255) NOT NULL,
  `complemento` varchar(255) DEFAULT NULL,
  `id_produto` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `tid` int(11) DEFAULT NULL,
  `data` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `send_mail` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Despejando dados para a tabela `clientes`
--

INSERT INTO `clientes` (`id`, `nome`, `cpf`, `nascimento`, `email`, `telefone`, `cep`, `cidade`, `estado`, `bairro`, `endereco`, `numero`, `complemento`, `id_produto`, `status`, `tid`, `data`, `send_mail`) VALUES
(1, 'Jones Heckler teste', NULL, '1988-10-20', 'jones.heckler@gmail.com', '54991777547', '95020360', 'Caxias do Sul', 'RS', 'Lurdes', 'Ernesto Alves', '12', NULL, 1, 3, 512555, '2020-08-12 03:20:20', 0),
(2, 'Jones Heckler teste', NULL, '1988-10-20', 'jones.heckler@gmail.com', '54991777547', '95020360', 'Caxias do Sul', 'RS', 'Lurdes', 'Ernesto Alves', '12', NULL, 1, 9, NULL, '2020-08-12 03:21:27', 0),
(3, 'Jones Heckler novo novo', NULL, '1988-10-20', 'jones.heckler@gmail.com', '54991777547', '95765000', 'Caxias do Sul', 'RS', 'Lurdes', 'Ernesto Alves', '12', NULL, 1, 9, NULL, '2020-08-12 03:27:38', 0),
(4, 'Jones Heckler novo novo', NULL, '1988-10-20', 'jones.heckler@gmail.com', '54991777547', '95765000', 'Caxias do Sul', 'RS', 'Lurdes', 'Ernesto Alves', '12', NULL, 1, 3, 512556, '2020-08-12 03:31:25', 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `configuracoes`
--

CREATE TABLE `configuracoes` (
  `id` int(1) NOT NULL,
  `titulo` varchar(70) DEFAULT NULL,
  `descricao` varchar(155) DEFAULT NULL,
  `palavras` varchar(175) NOT NULL,
  `adwords` text NOT NULL,
  `contato` varchar(255) NOT NULL,
  `contato_cc` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Despejando dados para a tabela `configuracoes`
--

INSERT INTO `configuracoes` (`id`, `titulo`, `descricao`, `palavras`, `adwords`, `contato`, `contato_cc`) VALUES
(1, 'D\'Avila Vargas', '', '', '', 'jones.heckler@gmail.com', '');

-- --------------------------------------------------------

--
-- Estrutura para tabela `contato`
--

CREATE TABLE `contato` (
  `id` int(11) NOT NULL,
  `titulo` varchar(255) DEFAULT NULL,
  `subtitulo` varchar(255) DEFAULT NULL,
  `desctitulo` text,
  `rua` varchar(255) DEFAULT NULL,
  `cidade` varchar(255) DEFAULT NULL,
  `uf` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `telefone` varchar(255) DEFAULT NULL,
  `telefone2` varchar(255) DEFAULT NULL,
  `bairro` varchar(255) DEFAULT NULL,
  `numero` varchar(255) DEFAULT NULL,
  `complemento` varchar(255) DEFAULT NULL,
  `mapa` text,
  `horario` text,
  `facebook` varchar(255) DEFAULT NULL,
  `instagram` varchar(255) DEFAULT NULL,
  `youtube` varchar(255) DEFAULT NULL,
  `latitude` varchar(255) DEFAULT NULL,
  `longitude` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Despejando dados para a tabela `contato`
--

INSERT INTO `contato` (`id`, `titulo`, `subtitulo`, `desctitulo`, `rua`, `cidade`, `uf`, `email`, `telefone`, `telefone2`, `bairro`, `numero`, `complemento`, `mapa`, `horario`, `facebook`, `instagram`, `youtube`, `latitude`, `longitude`) VALUES
(1, 'Fale com a Gente', 'E CONHEÇA MAIS', 'Vamos lá, está na hora de trocarmos uma ideia para saber como podemos lhe ajudar.', ' Rua Pedro Noll', 'Feliz', 'RS', 'contato@acisfe.com.br', '(51) 3637-2123', '(51) 3637-2603', 'Bairro Centro', '348', 'Sala 02', 'https://www.google.com.br/maps/place/R.+Tiradentes,+260,+Feliz+-+RS,+95770-000/@-29.4522387,-51.307151,17z/data=!3m1!4b1!4m5!3m4!1s0x951eab1d800ab7e7:0x2161a979641ca836!8m2!3d-29.4522387!4d-51.3049623?hl=pt-BR', NULL, 'https://www.facebook.com/Acisfefeliz/', 'https://www.instagram.com/acisfefeliz/', '', NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `mensagens_site`
--

CREATE TABLE `mensagens_site` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `telefone` varchar(100) DEFAULT 'Não informado',
  `sobrenome` varchar(255) DEFAULT NULL,
  `mensagem` text,
  `enviado_em` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Despejando dados para a tabela `mensagens_site`
--

INSERT INTO `mensagens_site` (`id`, `nome`, `email`, `telefone`, `sobrenome`, `mensagem`, `enviado_em`) VALUES
(75, 'Jones', 'jones.heckler@gmail.com', '(54) 99177-7547', 'Heckler', 'nova msg ', '2020-07-08 16:40:19'),
(76, 'JH', 'mw10@mw10.com.br', '(43) 34534-3433', 'JH', 'msg de teste', '2020-07-27 14:41:08'),
(78, 'jh', 'mw10@mw10.com.br', '(23) 42342-3432', 'hec', 'novo teste', '2020-08-07 21:34:20');

-- --------------------------------------------------------

--
-- Estrutura para tabela `modulos`
--

CREATE TABLE `modulos` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `_table` varchar(255) NOT NULL,
  `codigo` longtext NOT NULL,
  `icone` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Despejando dados para a tabela `modulos`
--

INSERT INTO `modulos` (`id`, `nome`, `_table`, `codigo`, `icone`) VALUES
(1, 'Configurações', '', '', ''),
(2, 'Quem Somos', '', '', ''),
(5, 'Mensagens via Site', '', '', ''),
(6, 'Banners', '', '', ''),
(8, 'Contato', '', '', ''),
(35, 'empresas', 'empresas', '{\"secao\":\"Empresas\",\"module\":\"empresas\",\"table\":\"empresas\",\"entityPlural\":\"Empresas\",\"entitySingular\":\"Empresa\",\"identifier\":\"nome\",\"columns\":{\"nome\":{\"name_sql\":\"nome\",\"type_sql\":\"varchar\",\"size_sql\":\"255\",\"name\":\"Nome da Empresa\",\"type\":\"text\",\"form\":\"1\",\"attributes\":\"required\"},\"descricao\":{\"name_sql\":\"descricao\",\"type_sql\":\"text\",\"size_sql\":\"255\",\"name\":\"Descri\\u00e7\\u00e3o\",\"type\":\"textarea\",\"form\":\"1\"},\"logo\":{\"name_sql\":\"logo\",\"type_sql\":\"varchar\",\"size_sql\":\"255\",\"name\":\"Logo da Empresa\",\"type\":\"image\",\"helper\":\"M\\u00e1ximo 500kb\",\"form\":\"1\"},\"ativo\":{\"name_sql\":\"ativo\",\"value\":\"1\",\"type_sql\":\"int\",\"size_sql\":\"255\",\"name\":\"Ativo\",\"type\":\"boolean\",\"form\":\"1\"}},\"rowsLimit\":false}', ''),
(36, 'filiais', 'filiais', '{\"secao\":\"Filiais\",\"module\":\"filiais\",\"table\":\"filiais\",\"entityPlural\":\"Filiais\",\"entitySingular\":\"filial\",\"identifier\":\"nome\",\"columns\":{\"nome\":{\"name_sql\":\"nome\",\"type_sql\":\"varchar\",\"size_sql\":\"255\",\"name\":\"Nome da Filial\",\"type\":\"text\",\"helper\":\"Se for Matriz coloque \\\"Matriz - Nome da Loja\\\"\",\"form\":\"1\",\"attributes\":\"required\"},\"rua\":{\"name_sql\":\"rua\",\"type_sql\":\"varchar\",\"size_sql\":\"255\",\"name\":\"Rua - N\\u00famero\",\"type\":\"text\",\"form\":\"1\"},\"bairro\":{\"name_sql\":\"bairro\",\"type_sql\":\"varchar\",\"size_sql\":\"255\",\"name\":\"Bairro\",\"type\":\"text\",\"form\":\"1\"},\"uf\":{\"name_sql\":\"uf\",\"type_sql\":\"int\",\"size_sql\":\"255\",\"name\":\"Estado\",\"type\":\"text\",\"form\":\"1\",\"attributes\":\"required\"},\"mapa\":{\"name_sql\":\"mapa\",\"type_sql\":\"text\",\"size_sql\":\"255\",\"name\":\"Link do Google Mapa\",\"type\":\"textarea\",\"form\":\"1\"},\"id_empresa\":{\"name_sql\":\"id_empresa\",\"type_sql\":\"int\",\"size_sql\":\"255\",\"name\":\"Id Empresa\",\"type\":\"number\",\"form\":\"1\"}},\"rowsLimit\":false}', ''),
(37, 'colaboradores', 'colaboradores', '{\"secao\":\"Colaboradores\",\"module\":\"colaboradores\",\"table\":\"colaboradores\",\"entityPlural\":\"Colaboradores\",\"entitySingular\":\"Colaborador\",\"identifier\":\"nome\",\"columns\":{\"nome_colaborador\":{\"name_sql\":\"nome_colaborador\",\"type_sql\":\"varchar\",\"size_sql\":\"255\",\"name\":\"Nome Colaborador\",\"type\":\"text\",\"form\":\"1\",\"attributes\":\"required\"},\"telefone\":{\"name_sql\":\"telefone\",\"type_sql\":\"varchar\",\"size_sql\":\"255\",\"name\":\"Telefone\",\"type\":\"text\",\"form\":\"1\",\"attributes\":\"required\"},\"ativo\":{\"name_sql\":\"ativo\",\"value\":\"1\",\"type_sql\":\"int\",\"size_sql\":\"255\",\"name\":\"Ativo\",\"type\":\"boolean\",\"form\":\"1\"}},\"rowsLimit\":false}', ''),
(38, 'Usuários', 'usuarios', '', ''),
(39, 'Filiais Master', 'filiais', '', ''),
(40, 'banner', 'banner', '{\"secao\":\"banner\",\"module\":\"banner\",\"table\":\"banner\",\"entityPlural\":\"Banners\",\"entitySingular\":\"Banner\",\"identifier\":\"introducao\",\"columns\":{\"introducao\":{\"name_sql\":\"introducao\",\"type_sql\":\"varchar\",\"size_sql\":\"255\",\"name\":\"Introdu\\u00e7\\u00e3o\",\"type\":\"text\",\"form\":\"1\",\"attributes\":\"required\"},\"introducao_en\":{\"name_sql\":\"introducao_en\",\"type_sql\":\"varchar\",\"size_sql\":\"255\",\"name\":\"Introdu\\u00e7\\u00e3o EN\",\"type\":\"text\",\"form\":\"1\",\"attributes\":\"required\"},\"subtitulo\":{\"name_sql\":\"subtitulo\",\"type_sql\":\"varchar\",\"size_sql\":\"255\",\"name\":\"Subt\\u00edtulo\",\"type\":\"text\",\"form\":\"1\",\"attributes\":\"required\"},\"subtitulo_en\":{\"name_sql\":\"subtitulo_en\",\"type_sql\":\"varchar\",\"size_sql\":\"255\",\"name\":\"Subt\\u00edtulo EN\",\"type\":\"text\",\"form\":\"1\",\"attributes\":\"required\"},\"bt01label\":{\"name_sql\":\"bt01label\",\"type_sql\":\"varchar\",\"size_sql\":\"255\",\"name\":\"Bot\\u00e3o 01 T\\u00edtulo\",\"type\":\"text\",\"form\":\"1\"},\"bt01label_en\":{\"name_sql\":\"bt01label_en\",\"type_sql\":\"varchar\",\"size_sql\":\"255\",\"name\":\"Bot\\u00e3o 01 T\\u00edtulo EN\",\"type\":\"text\",\"form\":\"1\"},\"bt01link\":{\"name_sql\":\"bt01link\",\"type_sql\":\"varchar\",\"size_sql\":\"255\",\"name\":\"Bot\\u00e3o 01 Link\",\"type\":\"text\",\"form\":\"1\"},\"bt02label\":{\"name_sql\":\"bt02label\",\"type_sql\":\"varchar\",\"size_sql\":\"255\",\"name\":\"Bot\\u00e3o 02 T\\u00edtulo\",\"type\":\"text\",\"form\":\"1\"},\"bt02label_en\":{\"name_sql\":\"bt02label_en\",\"type_sql\":\"varchar\",\"size_sql\":\"255\",\"name\":\"Bot\\u00e3o 02 T\\u00edtulo EN\",\"type\":\"text\",\"form\":\"1\"},\"bt02link\":{\"name_sql\":\"bt02link\",\"type_sql\":\"varchar\",\"size_sql\":\"255\",\"name\":\"Bot\\u00e3o 02 Link\",\"type\":\"text\",\"form\":\"1\"},\"bt03label\":{\"name_sql\":\"bt03label\",\"type_sql\":\"varchar\",\"size_sql\":\"255\",\"name\":\"Bot\\u00e3o 03 T\\u00edtulo\",\"type\":\"text\",\"form\":\"1\"},\"bt03label_en\":{\"name_sql\":\"bt03label_en\",\"type_sql\":\"varchar\",\"size_sql\":\"255\",\"name\":\"Bot\\u00e3o 03 T\\u00edtulo EN\",\"type\":\"text\",\"form\":\"1\"},\"bt03link\":{\"name_sql\":\"bt03link\",\"type_sql\":\"varchar\",\"size_sql\":\"255\",\"name\":\"Bot\\u00e3o 03 Link\",\"type\":\"text\",\"form\":\"1\"},\"imagem\":{\"name_sql\":\"imagem\",\"type_sql\":\"varchar\",\"size_sql\":\"255\",\"name\":\"Imagem de Fundo\",\"type\":\"image\",\"form\":\"1\",\"attributes\":\"required\"}},\"rowsLimit\":false}', ''),
(41, 'quem somos', 'quem_somos', '{\"secao\":\"Quem Somos\",\"module\":\"quem somos\",\"table\":\"quem_somos\",\"entityPlural\":\"Quem Somos\",\"entitySingular\":\"Quem Somos\",\"identifier\":\"titulo\",\"columns\":{\"titulo\":{\"name_sql\":\"titulo\",\"type_sql\":\"varchar\",\"size_sql\":\"255\",\"name\":\"T\\u00edtulo\",\"type\":\"text\",\"form\":\"1\",\"attributes\":\"required\"},\"titulo_en\":{\"name_sql\":\"titulo_en\",\"type_sql\":\"varchar\",\"size_sql\":\"255\",\"name\":\"T\\u00edtulo EN\",\"type\":\"text\",\"form\":\"1\",\"attributes\":\"required\"},\"descricao\":{\"name_sql\":\"descricao\",\"type_sql\":\"text\",\"size_sql\":\"255\",\"name\":\"Descri\\u00e7\\u00e3o\",\"type\":\"textarea\",\"form\":\"1\",\"attributes\":\"required\"},\"descricao_en\":{\"name_sql\":\"descricao_en\",\"type_sql\":\"text\",\"size_sql\":\"255\",\"name\":\"Descri\\u00e7\\u00e3o EN\",\"type\":\"textarea\",\"form\":\"1\"},\"historia\":{\"name_sql\":\"historia\",\"type_sql\":\"text\",\"size_sql\":\"255\",\"name\":\"Hist\\u00f3ria da Empresa\",\"type\":\"textarea\",\"form\":\"1\",\"attributes\":\"required\"},\"historia_en\":{\"name_sql\":\"historia_en\",\"type_sql\":\"text\",\"size_sql\":\"255\",\"name\":\"Hist\\u00f3ria da Empresa EN\",\"type\":\"textarea\",\"form\":\"1\"},\"video\":{\"name_sql\":\"video\",\"type_sql\":\"varchar\",\"size_sql\":\"255\",\"name\":\"V\\u00eddeo\",\"type\":\"text\",\"form\":\"1\"},\"video_imagem\":{\"name_sql\":\"video_imagem\",\"type_sql\":\"varchar\",\"size_sql\":\"255\",\"name\":\"Imagem Fundo V\\u00eddeo\",\"type\":\"image\",\"form\":\"1\",\"attributes\":\"required\"}},\"rowsLimit\":false}', ''),
(42, 'equipe', 'equipe', '{\"secao\":\"Equipe\",\"module\":\"equipe\",\"table\":\"equipe\",\"entityPlural\":\"Equipe\",\"entitySingular\":\"Colaborador\",\"identifier\":\"nome\",\"columns\":{\"nome\":{\"name_sql\":\"nome\",\"type_sql\":\"varchar\",\"size_sql\":\"255\",\"name\":\"Nome\",\"type\":\"text\",\"form\":\"1\",\"attributes\":\"required\"},\"imagem\":{\"name_sql\":\"imagem\",\"type_sql\":\"varchar\",\"size_sql\":\"255\",\"name\":\"Foto Colaborador\",\"type\":\"image\",\"form\":\"1\",\"attributes\":\"required\"},\"descricao\":{\"name_sql\":\"descricao\",\"type_sql\":\"text\",\"size_sql\":\"255\",\"name\":\"Descri\\u00e7\\u00e3o\",\"type\":\"textarea\",\"form\":\"1\",\"attributes\":\"required\"},\"descricao_en\":{\"name_sql\":\"descricao_en\",\"type_sql\":\"text\",\"size_sql\":\"255\",\"name\":\"Descri\\u00e7\\u00e3o EN\",\"type\":\"textarea\",\"form\":\"1\"},\"ordem\":{\"name_sql\":\"ordem\",\"type_sql\":\"int\",\"size_sql\":\"255\",\"name\":\"Ordem\",\"type\":\"number\",\"form\":\"1\"},\"ativo\":{\"name_sql\":\"ativo\",\"value\":\"1\",\"type_sql\":\"int\",\"size_sql\":\"255\",\"name\":\"Ativo\",\"type\":\"boolean\",\"form\":\"1\"}},\"rowsLimit\":false}', ''),
(43, 'propositos', 'proposito', '{\"secao\":\"Prop\\u00f3sitos\",\"module\":\"propositos\",\"table\":\"proposito\",\"entityPlural\":\"Prop\\u00f3sitos\",\"entitySingular\":\"Prop\\u00f3sito\",\"identifier\":\"titulo\",\"columns\":{\"titulo\":{\"name_sql\":\"titulo\",\"type_sql\":\"varchar\",\"size_sql\":\"255\",\"name\":\"T\\u00edtulo\",\"type\":\"text\",\"form\":\"1\",\"attributes\":\"required\"},\"titulo_en\":{\"name_sql\":\"titulo_en\",\"type_sql\":\"varchar\",\"size_sql\":\"255\",\"name\":\"T\\u00edtulo EN\",\"type\":\"text\",\"form\":\"1\",\"attributes\":\"required\"},\"descricao\":{\"name_sql\":\"descricao\",\"type_sql\":\"text\",\"size_sql\":\"255\",\"name\":\"Descri\\u00e7\\u00e3o\",\"type\":\"textarea\",\"form\":\"1\",\"attributes\":\"required\"},\"descricao_en\":{\"name_sql\":\"descricao_en\",\"type_sql\":\"text\",\"size_sql\":\"255\",\"name\":\"Descri\\u00e7\\u00e3o EN\",\"type\":\"textarea\",\"form\":\"1\",\"attributes\":\"required\"},\"ordem\":{\"name_sql\":\"ordem\",\"type_sql\":\"int\",\"size_sql\":\"255\",\"name\":\"Ordem\",\"type\":\"number\",\"form\":\"1\"}},\"rowsLimit\":false}', ''),
(44, 'serviços', 'servico', '{\"secao\":\"Servi\\u00e7os\",\"module\":\"servi\\u00e7os\",\"table\":\"servico\",\"entityPlural\":\"Servi\\u00e7os\",\"entitySingular\":\"Servi\\u00e7o\",\"identifier\":\"titulo\",\"columns\":{\"titulo\":{\"name_sql\":\"titulo\",\"type_sql\":\"varchar\",\"size_sql\":\"255\",\"name\":\"T\\u00edtulo\",\"type\":\"text\",\"form\":\"1\",\"attributes\":\"required\"},\"titulo_en\":{\"name_sql\":\"titulo_en\",\"type_sql\":\"varchar\",\"size_sql\":\"255\",\"name\":\"T\\u00edtulo EN\",\"type\":\"text\",\"form\":\"1\",\"attributes\":\"required\"},\"resumo\":{\"name_sql\":\"resumo\",\"type_sql\":\"text\",\"size_sql\":\"255\",\"name\":\"Resumo\",\"type\":\"textarea\",\"form\":\"1\"},\"resumo_en\":{\"name_sql\":\"resumo_en\",\"type_sql\":\"text\",\"size_sql\":\"255\",\"name\":\"Resumo EN\",\"type\":\"textarea\",\"form\":\"1\"},\"imagem\":{\"name_sql\":\"imagem\",\"type_sql\":\"varchar\",\"size_sql\":\"255\",\"name\":\"Imagem\",\"type\":\"image\",\"form\":\"1\",\"attributes\":\"required\"},\"icone\":{\"name_sql\":\"icone\",\"type_sql\":\"varchar\",\"size_sql\":\"255\",\"name\":\"icone\",\"type\":\"image\",\"form\":\"1\"},\"descricao\":{\"name_sql\":\"descricao\",\"type_sql\":\"text\",\"size_sql\":\"255\",\"name\":\"Descri\\u00e7\\u00e3o\",\"type\":\"textarea\",\"form\":\"1\"},\"descricao_en\":{\"name_sql\":\"descricao_en\",\"type_sql\":\"text\",\"size_sql\":\"255\",\"name\":\"Descri\\u00e7\\u00e3o EN\",\"type\":\"textarea\",\"form\":\"1\"},\"ordem\":{\"name_sql\":\"ordem\",\"type_sql\":\"int\",\"size_sql\":\"255\",\"name\":\"Ordem\",\"type\":\"number\",\"form\":\"1\"},\"ativo\":{\"name_sql\":\"ativo\",\"value\":\"1\",\"type_sql\":\"int\",\"size_sql\":\"255\",\"name\":\"Ativo\",\"type\":\"boolean\",\"form\":\"1\"}},\"rowsLimit\":false}', ''),
(45, 'blog', 'noticia', '{\"secao\":\"Blog\",\"module\":\"blog\",\"table\":\"noticia\",\"entityPlural\":\"Not\\u00edcias\",\"entitySingular\":\"Not\\u00edcia\",\"identifier\":\"titulo\",\"columns\":{\"titulo\":{\"name_sql\":\"titulo\",\"type_sql\":\"varchar\",\"size_sql\":\"255\",\"name\":\"T\\u00edtulo\",\"type\":\"text\",\"form\":\"1\",\"attributes\":\"required\"},\"titulo_en\":{\"name_sql\":\"titulo_en\",\"type_sql\":\"varchar\",\"size_sql\":\"255\",\"name\":\"T\\u00edtulo EN\",\"type\":\"text\",\"form\":\"1\",\"attributes\":\"required\"},\"resumo\":{\"name_sql\":\"resumo\",\"type_sql\":\"text\",\"size_sql\":\"255\",\"name\":\"resumo\",\"type\":\"textarea\",\"form\":\"1\",\"attributes\":\"required\"},\"resumo_en\":{\"name_sql\":\"resumo_en\",\"type_sql\":\"text\",\"size_sql\":\"255\",\"name\":\"Resumo EN\",\"type\":\"textarea\",\"form\":\"1\",\"attributes\":\"required\"},\"data\":{\"name_sql\":\"data\",\"type_sql\":\"datetime\",\"size_sql\":\"255\",\"name\":\"Data\",\"type\":\"datepicker\",\"form\":\"1\",\"attributes\":\"required\"},\"imagem\":{\"name_sql\":\"imagem\",\"type_sql\":\"varchar\",\"size_sql\":\"255\",\"name\":\"Imagem\",\"type\":\"image\",\"form\":\"1\",\"attributes\":\"required\",\"size\":\"800px x 600px\"},\"descricao\":{\"name_sql\":\"descricao\",\"type_sql\":\"text\",\"size_sql\":\"255\",\"name\":\"Descri\\u00e7\\u00e3o\",\"type\":\"textarea\",\"form\":\"1\"},\"descricao_en\":{\"name_sql\":\"descricao_en\",\"type_sql\":\"text\",\"size_sql\":\"255\",\"name\":\"Descri\\u00e7\\u00e3o EN\",\"type\":\"textarea\",\"form\":\"1\"},\"slug\":{\"name_sql\":\"slug\",\"type_sql\":\"varchar\",\"size_sql\":\"255\",\"name\":\"slug\",\"type\":\"text\",\"form\":\"1\"},\"ativo\":{\"name_sql\":\"ativo\",\"value\":\"1\",\"type_sql\":\"int\",\"size_sql\":\"255\",\"name\":\"Ativo\",\"type\":\"boolean\",\"form\":\"1\"}},\"rowsLimit\":false}', ''),
(46, 'Vídeos', 'videos', '{\"secao\":\"V\\u00eddeos\",\"module\":\"V\\u00eddeos\",\"table\":\"videos\",\"entityPlural\":\"V\\u00eddeos\",\"entitySingular\":\"V\\u00eddeo\",\"identifier\":\"titulo\",\"columns\":{\"titulo\":{\"name_sql\":\"titulo\",\"type_sql\":\"varchar\",\"size_sql\":\"255\",\"name\":\"T\\u00edtulo\",\"type\":\"text\",\"form\":\"1\",\"attributes\":\"required\"},\"titulo_en\":{\"name_sql\":\"titulo_en\",\"type_sql\":\"varchar\",\"size_sql\":\"255\",\"name\":\"T\\u00edtulo EN\",\"type\":\"text\",\"form\":\"1\",\"attributes\":\"required\"},\"titulo_es\":{\"name_sql\":\"titulo_es\",\"type_sql\":\"varchar\",\"size_sql\":\"255\",\"name\":\"T\\u00edtulo ES\",\"type\":\"text\",\"form\":\"1\",\"attributes\":\"required\"},\"descricao\":{\"name_sql\":\"descricao\",\"type_sql\":\"text\",\"size_sql\":\"255\",\"name\":\"Descri\\u00e7\\u00e3o\",\"type\":\"textarea\",\"form\":\"1\"},\"descricao_en\":{\"name_sql\":\"descricao_en\",\"type_sql\":\"text\",\"size_sql\":\"255\",\"name\":\"Descri\\u00e7\\u00e3o EN\",\"type\":\"textarea\",\"form\":\"1\"},\"descricao_es\":{\"name_sql\":\"descricao_es\",\"type_sql\":\"text\",\"size_sql\":\"255\",\"name\":\"Descri\\u00e7\\u00e3o ES\",\"type\":\"textarea\",\"form\":\"1\"},\"video\":{\"name_sql\":\"video\",\"type_sql\":\"varchar\",\"size_sql\":\"255\",\"name\":\"LINK YOUTUBE\",\"type\":\"text\",\"form\":\"1\",\"attributes\":\"required\"},\"video_en\":{\"name_sql\":\"video_en\",\"type_sql\":\"varchar\",\"size_sql\":\"255\",\"name\":\"LINK YOUTUBE EN\",\"type\":\"text\",\"form\":\"1\"},\"video_es\":{\"name_sql\":\"video_es\",\"type_sql\":\"varchar\",\"size_sql\":\"255\",\"name\":\"LINK YOUTUBE ES\",\"type\":\"text\",\"form\":\"1\"},\"imagem\":{\"name_sql\":\"imagem\",\"type_sql\":\"varchar\",\"size_sql\":\"255\",\"name\":\"Imagem \",\"type\":\"image\",\"form\":\"1\"}},\"rowsLimit\":false}', '');

-- --------------------------------------------------------

--
-- Estrutura para tabela `painel_administrativo`
--

CREATE TABLE `painel_administrativo` (
  `id` int(11) NOT NULL,
  `titulo` varchar(255) DEFAULT NULL,
  `subtitulo` varchar(255) DEFAULT NULL,
  `imagem_login` varchar(255) DEFAULT NULL,
  `imagem_logo` varchar(255) DEFAULT NULL,
  `cor_primaria` varchar(255) DEFAULT NULL,
  `cor_secundaria` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Despejando dados para a tabela `painel_administrativo`
--

INSERT INTO `painel_administrativo` (`id`, `titulo`, `subtitulo`, `imagem_login`, `imagem_logo`, `cor_primaria`, `cor_secundaria`) VALUES
(1, 'MW10', 'MW10', 'uploads/painel_administrativo/imagem_login/computer-768608-1920-jpg.jpg', 'uploads/painel_administrativo/imagem_logo/screen-shot-2019-07-11-at-13-40-25-png-png.png', '#f04f23', '#d913b6');

-- --------------------------------------------------------

--
-- Estrutura para tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(1) NOT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `usuario` varchar(255) NOT NULL,
  `senha` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) DEFAULT NULL,
  `permissoes` varchar(255) NOT NULL,
  `ultimo_acesso` datetime DEFAULT NULL,
  `ativo` int(1) NOT NULL,
  `tipo` int(11) NOT NULL DEFAULT '2',
  `id_empresa` int(11) NOT NULL,
  `token` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Despejando dados para a tabela `usuarios`
--

INSERT INTO `usuarios` (`id`, `nome`, `usuario`, `senha`, `email`, `permissoes`, `ultimo_acesso`, `ativo`, `tipo`, `id_empresa`, `token`) VALUES
(1, 'Admin', 'admin', 'f0d5299cdda6b67fa0e98a4000c823b0', 'mw10@mw10.com.br', '1,2,3,4,5,6,8,9,10,', '2020-08-07 17:45:54', 1, 1, 0, '57d52d7105e69f47df6cb51b3087fcd8'),
(2, 'Master', 'master', '827ccb0eea8a706c4c34a16891f84e7b', 'master@mw10.com.br', '35,37,38,39', '2020-07-20 16:50:54', 1, 2, 0, '812930feeec323142afa19ca67ec9373');

--
-- Índices de tabelas apagadas
--

--
-- Índices de tabela `acessos`
--
ALTER TABLE `acessos`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `configuracoes`
--
ALTER TABLE `configuracoes`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `contato`
--
ALTER TABLE `contato`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `mensagens_site`
--
ALTER TABLE `mensagens_site`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `modulos`
--
ALTER TABLE `modulos`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `painel_administrativo`
--
ALTER TABLE `painel_administrativo`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_usuario_empresa` (`id_empresa`);

--
-- AUTO_INCREMENT de tabelas apagadas
--

--
-- AUTO_INCREMENT de tabela `acessos`
--
ALTER TABLE `acessos`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de tabela `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `configuracoes`
--
ALTER TABLE `configuracoes`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `contato`
--
ALTER TABLE `contato`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `mensagens_site`
--
ALTER TABLE `mensagens_site`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT de tabela `modulos`
--
ALTER TABLE `modulos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT de tabela `painel_administrativo`
--
ALTER TABLE `painel_administrativo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
