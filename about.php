<?php

// Configurações globais
require_once ('_config.php');





/***** Configurações da página *****/

// Título da página
$T['pageTitle'] = 'Página Modelo';

// CSS da página
$T['pageCSS'] = '/css/template.css';

// JavaScript da página
$T['pageJS'] = '/js/template.js';

// Cabeçalho da página
require_once('_header.php');

?>

            <!-- Conteúdo principal -->
            <article>

                <h2>Sobre nossa Editora</h2>
                <p>Para quem gosta de editoriais de moda com imagens que fogem do óbvio, a Nouvelles de la mode é a escolha certa. Além dos ensaios fotográficos impecáveis nossa revista de moda, muitas vezes controversa, traz o “who, what, where, when, and why” (quem, o que, onde, quando e por que) de tudo o que envolve o mundo fashion como celebridades, design, beleza, música e viagens. Infelizmente, não existe a edição brasileira dessa publicação. .</p>
                <img src="https://picsum.photos/400/300" class="flush" alt="Imagem aleatória">
                

            </article>

            <!-- Barra lateral -->
            <aside>
                <h3>Barra lateral</h3>
                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit.</p>
                <ul>
                    <li><a href="/">Link 1</a></li>
                    <li><a href="/">Link 2</a></li>
                    <li><a href="/">Link 3</a></li>
                    <li><a href="/">Link 4</a></li>
                </ul>
            </aside>

<?php

// Rodapé da página
require_once ('_footer.php');