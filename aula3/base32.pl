%% parada da recursão
pai(X, Y) :-  filho(Y, X) .
%% passo da recursividade
pai(X, Y) :- pai(X, Z) , pai(Z, Y) .


filho(pedro, joao) .
filho(joao, tadeu) .
filho(hugo, tadeu) .
filho(vitor, tadeu) .
filho(luiz, vitor) .