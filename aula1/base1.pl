/** 
 *   Este arquivo é a base de conhecimento 1 usada na aula 2.
 *
 *   Essa base possui: 
 *       >>> 6 - fatos
 *       >>> 4 - regras
 */

festa .                    %% Fato/Átomo/Termo simples.

feliz(abel) .              %% Fato/Functor/Termo Composto. 
feliz(kain) .              %% Fato/Functor/Termo Composto.
ouvemusica(abel) .         %% Fato/Functor/Termo Composto.
ouvemusica(frank).         %% Fato/Functor/Termo Composto.
tocaviolao(frank).         %% Fato/Functor/Termo Composto.

tocaviolao(abel) :- feliz(abel), ouvemusica(abel).