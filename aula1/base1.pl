/** 
 *   Este arquivo é a base de conhecimento 1 usada na aula 1.
 *
 *   Essa base possui: 
 *       >>> 6 - fatos
 *       >>> 1 - regra
 */

festa .                    %% Fato/Átomo/Termo simples.

feliz(abel) .              %% Fato/Functor/Termo Composto. 
feliz(kain) .              %% Fato/Functor/Termo Composto.
ouvemusica(abel) .         %% Fato/Functor/Termo Composto.
ouvemusica(frank).         %% Fato/Functor/Termo Composto.
ouvemusica(ted)  .         %% Fato/Functor/Termo Composto.         
tocaviolao(frank).         %% Fato/Functor/Termo Composto.

tocaviolao(abel) :- feliz(abel), ouvemusica(abel). %% Regra/functor/Termo composto.