-- Banco de dados do 'Tilojo'
-- NÃO EXECUTAR APÓS DEPLOY DO SITE (PRODUÇÃO)

-- Apaga o banco de dados caso exista
DROP DATABASE IF EXISTS tilojo;

-- Cria database novamente com buscas 'case insensitive'
CREATE DATABASE tilojo CHARACTER SET utf8 COLLATE utf8_general_ci;

-- Selecionar o database
USE tilojo;

-- Cria tabela com autores dos artigos
CREATE TABLE authors (
    aut_id INT PRIMARY KEY AUTO_INCREMENT,
    aut_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    aut_name VARCHAR(127) NOT NULL, 
    aut_image VARCHAR(255),
    aut_link VARCHAR(255),
    aut_email VARCHAR(255) NOT NULL,
    aut_status ENUM('inativo', 'ativo') DEFAULT 'ativo'
);

-- Inserir autores
INSERT INTO authors (
    aut_id,
    aut_name,
    aut_image,
    aut_link,
    aut_email
) VALUES 
(
    '1',
    'Joca da Silva',
    'https://randomuser.me/api/portraits/lego/7.jpg',
    'http://www.joca.com/',
    'joca@silva.com'
),
(
    '2',
    'André Luferat',
    'https://randomuser.me/api/portraits/lego/4.jpg',
    'http://www.luferat.net/',
    'andre@luferat.net'
),
(
    '3',
    'Setembrina Trocatapas',
    'https://randomuser.me/api/portraits/lego/3.jpg',
    'http://www.set.net/',
    'setembrina@set.net'
);

-- Cria tabela com Artigos
CREATE TABLE articles (
    art_id INT PRIMARY KEY AUTO_INCREMENT,
    art_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    art_image VARCHAR(255) NOT NULL,
    art_title VARCHAR(127) NOT NULL,
    art_intro VARCHAR(255) NOT NULL,
    art_text LONGTEXT NOT NULL,
    art_author INT NOT NULL,
    art_status ENUM ('inativo', 'ativo') DEFAULT 'ativo',
    FOREIGN KEY (art_author) REFERENCES authors (aut_id)
);

-- Insere artigos
INSERT INTO articles (
    art_date,
    art_image,
    art_title,
    art_intro,
    art_text,
    art_author
) VALUES  
(
    '2021-03-10 10:10:00',
    'https://picsum.photos/300',
    'ALTA MODA SUSTENTÁVEL',
    'Moda Sustentável e sua importância.',
    '<p>Desenvolver uma coleção utilizando matéria-prima do setor automobilístico que seria descartado devido a falta da padronização estipulado pela empresa. Matérias como o tecido para revestimento dos centos e os cintos de segurança que possuem muita resistência e estrutura serão usados para desenvolver pecas em alta moda. As peças estruturadas e com volume como vestidos, saias, corsets, darão a identidade da coleção que será destinada a homens e mulheres com personalidade e estilo marcante. Com uma modelagem desenvolvida exclusivamente para os materiais citados darão conforto e versatilidade ao produto. A inspiração para o desenvolvimento do projeto vem das grandes metrópoles mundiais, unificando as diversidades culturais e transformar em um estilo universal.</p>',
    '2'
),
(
    '2021-03-13 10:10:00',
    'https://picsum.photos/301',
    'A MODA NO SÉCULO XX',
    'Como essa época foi impportante para a moda',
    '<p>O século XX foi muito importante para o desenvolvimento da moda. Foi o momento em que as mudanças se tornaram mais eletrizantes e com ritmo considerável. “Esse período testemunhou o rápido desenvolvimento da produção e da disseminação da moda e a maior transformação em seu consumo: passou de couture (alta costura) destinada à elite no início do século à quase universalidade atual, disponível para todos em qualquer loja […]” (BLACKMAN, 2012, p. 6).

Este século observou acontecimentos consideráveis como duas Guerras Mundiais, ocupação de novos lugares pelas mulheres (práticas esportivas, direito ao voto, inserção no mercado de trabalho), movimentos jovens nos anos 50, 60 e 70, a ruptura da produção artesanal para produção em massa de produtos como roupas, surgimento de novos estilistas, e também a influência de personalidades da música e do cinema.

A figura exibida na sequência objetiva apresentar as cores, formas e conceitos da moda durante o século XX.</p>',
    '1'
);

INSERT INTO articles (
    art_date,
    art_image,
    art_title,
    art_intro,
    art_text,
    art_author
) VALUES 
(
    '2021-03-13 11:42:00',
    'https://picsum.photos/302',
    'MODA, IDENTIDADE E HIP HOP',
    'HIP HOP Tendenências',
    '<p>Este trabalho objetiva estudar as contribuições que o conceito de identidade e o movimento hip hop trazem para a moda. Para tanto, cabe, primeiramente, entender a formação da identidade partindo de um âmbito de reconhecimento individual e, em seguida, explanar a importância cultural para a sua formação. Dispõe-se a explorar a relação que a moda exerce na construção da identidade de um indivíduo, observando que tais construções são naturalmente explanadas por intermédio do vestuário. Esse é considerado como um meio de comunicação, uma forma do indivíduo expressar-se através do corpo e de elementos simbólicos, a fim de transmitir significados e valores. Conseguinte, aborda-se a formação do movimento hip hop e os seus conceitos, especificando sua moda com o intuito de conhecer o estilo de vida proposto, de modo que a interação identidade, moda e hip hop deve permitir entender a imbricação destes elementos na transmissão de significados que a indumentária realiza sobre aspectos culturais daqueles que a usam..</p>',
    '3'
),
(
    '2021-03-14 10:10:00',
    'https://picsum.photos/303',
    'TRUQUES DA MODA: HARMONIA ENTRE ROUPA E CORPO',
    'Como harmonizar a vestimenta e o corpo',
    '<p>Está cada vez mais claro que as pessoas enfrentam dificuldades relacionadas à como se vestirão, qual cor, modelo, a qual estilo pertencem. Tudo isso, as vezes, se resumo ao fato de não haver autoconhecimento. Não entendem o formato corporal, a cor do subtom de pele, as cores que estão em maior harmonia com o subtom da pele, os modelos de roupas que equilibram a silhueta. A consultoria de Imagem e Estilo tem sido o meio prático e contemporâneo para solucionar tais questões. Foi identificando essa necessidade que esse projeto foi desenvolvido, reunindo citações de grandes nomes do mundo da Moda. Com o objetivo de clarear o entendimento sobre a Consultoria de Imagem e Estilo, explicar a diferença entre o Consultor de Imagem e Estilo e o Personal Stylist, e de forma muito prática ajudar a entender o quão fundamental é o autoconhecimento. Trazendo, de forma simples e clara, explicações e aplicações de métodos de análise da coloração pessoal, identificação do tipo físico, teste de estilo. À luz da metodologia de Löbach esses testes foram aplicados e, de forma clara, os resultados foram obtidos e divulgados nesse projeto, com a participação de três modelos, como prova de que através do autoconhecimento, o conhecimento do trabalho de um Consultor de Imagem e Estilo e seus métodos e a aplicação correta de cada técnica, é possível sim alcançar a HARMONIA ENTRE ROUPA E CORPO.</p>',
    '2'
);

-- Cria tabela para contatos
CREATE TABLE contacts (
    id INT PRIMARY KEY AUTO_INCREMENT,
    date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    name VARCHAR(127) NOT NULL,
    email VARCHAR(255) NOT NULL,
    subject VARCHAR(255) NOT NULL,
    message LONGTEXT NOT NULL,
    status ENUM('recebida', 'lida', 'respondida', 'apagada') DEFAULT 'recebida'
);

-- Cria tabela para configurações do site
CREATE TABLE config (
    id INT PRIMARY KEY AUTO_INCREMENT,
    var VARCHAR(63) NOT NULL,
    val LONGTEXT NOT NULL
);

-- Insere configurações
INSERT INTO config (var, val) VALUES
('pageTitle', ''),
('pageCSS', ''),
('pageJS', ''),
('siteName', 'Nouvelles de la mode'),
('siteFullName', 'Nouvelles de la mode'),
('siteSlogan', 'Trends da Alta-Costura'),
('siteLogo', '/img/logo_02.png'),
('favicon', '/favicon.png'),
('templateCSS', '/css/global.css'),
('social_github', 'http://github.com/moda'),
('social_youtube', 'http://youtube.com/moda'),
('social_linkedin', 'http://linkedin.com/moda'),
('social_facebook', 'http://facebook.com/moda'),
('siteOwner', ' Pedrinho Matador'),
('siteOwnerEmail', 'andre@luferat.net'),
('siteYear', '2021'),
('meta_author', ' Pedrinho Matador'),
('meta_description', 'Site sobre tendências da Alta Costura'),
('meta_keywords', 'fuinha, furão, pet, exótico, mamífero'),
('meta_copyright', '© 2021 Pedrinho Matador')
;