-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 03-Jul-2023 às 17:11
-- Versão do servidor: 8.0.21
-- versão do PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `temperos`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `carinho`
--

CREATE TABLE `carinho` (
  `id_carrinho` int NOT NULL,
  `id_usuario` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `carinho`
--

INSERT INTO `carinho` (`id_carrinho`, `id_usuario`) VALUES
(1, 4),
(2, 10);

-- --------------------------------------------------------

--
-- Estrutura da tabela `carinho_itens`
--

CREATE TABLE `carinho_itens` (
  `id_carinho_itens` int NOT NULL,
  `id_produto` int NOT NULL,
  `id_carrinho` int NOT NULL,
  `quantidade` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `carinho_itens`
--

INSERT INTO `carinho_itens` (`id_carinho_itens`, `id_produto`, `id_carrinho`, `quantidade`) VALUES
(1, 9, 1, 3),
(2, 3, 1, 4);

-- --------------------------------------------------------

--
-- Estrutura da tabela `pedidos`
--

CREATE TABLE `pedidos` (
  `id_pedidos` int NOT NULL,
  `id_usuario` int NOT NULL,
  `produto` varchar(100) NOT NULL,
  `valor` decimal(50,0) NOT NULL,
  `pagamento` decimal(50,0) NOT NULL,
  `endereço` int NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `pedidos`
--

INSERT INTO `pedidos` (`id_pedidos`, `id_usuario`, `produto`, `valor`, `pagamento`, `endereço`, `status`) VALUES
(1, 7, '', '0', '0', 0, ''),
(2, 10, '', '0', '0', 0, ''),
(3, 1, '', '0', '0', 0, ''),
(4, 2, '', '0', '0', 0, ''),
(5, 3, '', '0', '0', 0, ''),
(6, 5, '', '0', '0', 0, ''),
(7, 4, '', '0', '0', 0, 'entregue'),
(8, 8, '', '0', '0', 0, 'postado'),
(9, 9, '', '0', '0', 0, 'não pago'),
(10, 6, '', '0', '0', 0, 'carrinho');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pedido_produto`
--

CREATE TABLE `pedido_produto` (
  `id_pedido_produto` int NOT NULL,
  `id_pedido` int NOT NULL,
  `id_produto` int NOT NULL,
  `quantidade` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `pedido_produto`
--

INSERT INTO `pedido_produto` (`id_pedido_produto`, `id_pedido`, `id_produto`, `quantidade`) VALUES
(5, 3, 9, ''),
(6, 3, 8, ''),
(7, 4, 3, ''),
(8, 4, 2, ''),
(9, 6, 9, ''),
(10, 5, 8, ''),
(11, 1, 1, ''),
(12, 2, 5, ''),
(13, 1, 1, ''),
(14, 2, 3, ''),
(15, 7, 4, ''),
(16, 7, 2, ''),
(17, 8, 6, ''),
(18, 8, 8, ''),
(19, 9, 10, ''),
(20, 9, 5, ''),
(21, 10, 5, ''),
(22, 10, 7, '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `produtos`
--

CREATE TABLE `produtos` (
  `id_produtos` int NOT NULL,
  `nome_produto` varchar(50) NOT NULL,
  `descricao_produto` varchar(100) NOT NULL,
  `pais` varchar(50) NOT NULL,
  `valor` varchar(40) NOT NULL,
  `oferta` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `produtos`
--

INSERT INTO `produtos` (`id_produtos`, `nome_produto`, `descricao_produto`, `pais`, `valor`, `oferta`) VALUES
(1, 'Paprica Picante', 'Levemente picante, uma especiaria nascida na região da América Central e do México.', 'México', '15,50', 0),
(2, 'Lemon Peper', 'Feito com os principais ingredientes: limão e a pimenta, dois ingredientes que melhoram a digestão e', 'Estados unidos', '5,99', 1),
(3, 'Colorau', 'Ele é feito a partir da trituração das sementes do urucuzeiro – árvore típica das regiões tropicais ', 'América do Sul', '4,99', 1),
(4, ' Barbecue em pó', 'Indicado para costelinha depois de pronta, temperar frangos, hambúrgueres ou maionese.', 'França e Estados Unidos ', '14,90', 0),
(5, 'Chili em pó', 'Extremamente picante e muito saborosa. ', 'México', '13,50', 0),
(6, 'Dry rub', 'Combina quantidades iguais de 6 a 10 ervas, utilizada para temperar a carne.', 'norte-americanos', '14,00', 0),
(7, 'Pimenta do Reino', 'Tem um sabor suave e picante por dentro', 'Portugal', '17,90', 0),
(8, 'Alecrim', 'Erva aromática comum na região do Mediterrâneo', 'Inglaterra e Estados Unidos', '15,50', 0),
(9, 'Aji Amarillo', ' Estrela da gastronomia peruana, a Pimenta \"Aji Amarillo\" é aromática possuindo uma ardência moderad', 'Perú ', '17,50', 0),
(10, 'Aji Panca', 'Originária dos Andes, a Pimenta \"Aji Panca\" possui uma leve ardência, com um sabor muito característ', 'Perú', '16,30', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario`
--

CREATE TABLE `usuario` (
  `id` int NOT NULL,
  `nome_completo` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `nome_de_usuario` varchar(15) NOT NULL,
  `senha` varchar(15) NOT NULL,
  `confirmar` varchar(15) NOT NULL,
  `CPF` varchar(11) NOT NULL,
  `CEP` varchar(8) NOT NULL,
  `Endereço` varchar(150) NOT NULL,
  `complemento` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `usuario`
--

INSERT INTO `usuario` (`id`, `nome_completo`, `email`, `nome_de_usuario`, `senha`, `confirmar`, `CPF`, `CEP`, `Endereço`, `complemento`) VALUES
(1, 'Solange Vieira Rodrigues Baldissera', 'solangebaldissera@gmail.com', 'Solange', 'robo13', 'robo13', '32525584252', '58723484', 'Rua tijucas', 'loja\r\n'),
(2, 'Alberto Dalmarco Neto', 'albertomarco10@hotmail.com', 'bebeto', 'betinho1', 'betinho1', '15249358752', '85493578', 'Rua linda prata', 'apartamento'),
(3, 'Leticia Oliveira', 'lele10@gmail.com', 'lelezinha', 'linda123', 'linda123', '54987623548', '87596321', 'Rua Blumenau', 'casa'),
(4, 'Ana Julia', 'najutrouinha@hotmail.com', 'naju', 'eusendoeu', 'eusendoeu', '12345678910', '12345678', '', ''),
(5, 'Geovana Jochem', 'geovanajochem@gmail.com', 'gegeo', 'victor123', 'victor123', '98765432110', '98765432', 'Rua Louca Branca', 'germinado'),
(6, 'Gabriel Arantes', 'arantesloko@gmail.com', 'arantes', 'vidaloka', 'vidaloka', '12453821458', '95324857', 'Rua Nicoli bebada', 'casa'),
(7, 'Leonardo Winters', 'leonardowinters@hotmail.com', 'leleo', 'leleodelas', 'leleodelas', '58301200556', '78003498', 'Rua isabela', 'Loja'),
(8, 'Breno Souza', 'brenosouza@hotmal.com', 'breninho', 'breno1245', 'breno1245', '12457896301', '12457896', 'Rua felix', 'apartamente'),
(9, 'henrique Vieira', 'henriquevieira@gmail.com', 'henrique', 'lolo78', 'lolo78', '32165465498', '32165498', 'Rua America', 'casa'),
(10, 'Gilvani Andre Baldissera', 'gilvanibaldis@hotmail.com', 'gilva', 'sola', 'sola', '36925814709', '36925814', 'Rua belaza pura', 'prédio');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `carinho`
--
ALTER TABLE `carinho`
  ADD PRIMARY KEY (`id_carrinho`),
  ADD KEY `id_usuario` (`id_usuario`);

--
-- Índices para tabela `carinho_itens`
--
ALTER TABLE `carinho_itens`
  ADD PRIMARY KEY (`id_carinho_itens`),
  ADD KEY `id_carrinho` (`id_carrinho`),
  ADD KEY `id_produto` (`id_produto`);

--
-- Índices para tabela `pedidos`
--
ALTER TABLE `pedidos`
  ADD PRIMARY KEY (`id_pedidos`),
  ADD KEY `id_usuario` (`id_usuario`);

--
-- Índices para tabela `pedido_produto`
--
ALTER TABLE `pedido_produto`
  ADD PRIMARY KEY (`id_pedido_produto`),
  ADD KEY `id_pedido` (`id_pedido`),
  ADD KEY `id_produto` (`id_produto`);

--
-- Índices para tabela `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`id_produtos`);

--
-- Índices para tabela `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `carinho`
--
ALTER TABLE `carinho`
  MODIFY `id_carrinho` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `carinho_itens`
--
ALTER TABLE `carinho_itens`
  MODIFY `id_carinho_itens` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `pedidos`
--
ALTER TABLE `pedidos`
  MODIFY `id_pedidos` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `pedido_produto`
--
ALTER TABLE `pedido_produto`
  MODIFY `id_pedido_produto` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de tabela `produtos`
--
ALTER TABLE `produtos`
  MODIFY `id_produtos` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `carinho`
--
ALTER TABLE `carinho`
  ADD CONSTRAINT `carinho_ibfk_2` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id`);

--
-- Limitadores para a tabela `carinho_itens`
--
ALTER TABLE `carinho_itens`
  ADD CONSTRAINT `carinho_itens_ibfk_1` FOREIGN KEY (`id_carrinho`) REFERENCES `carinho` (`id_carrinho`),
  ADD CONSTRAINT `carinho_itens_ibfk_2` FOREIGN KEY (`id_produto`) REFERENCES `produtos` (`id_produtos`);

--
-- Limitadores para a tabela `pedidos`
--
ALTER TABLE `pedidos`
  ADD CONSTRAINT `pedidos_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id`);

--
-- Limitadores para a tabela `pedido_produto`
--
ALTER TABLE `pedido_produto`
  ADD CONSTRAINT `pedido_produto_ibfk_1` FOREIGN KEY (`id_pedido`) REFERENCES `pedidos` (`id_pedidos`),
  ADD CONSTRAINT `pedido_produto_ibfk_2` FOREIGN KEY (`id_produto`) REFERENCES `produtos` (`id_produtos`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
