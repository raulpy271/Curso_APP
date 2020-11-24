%% Passo de parada da recursão
esta_digerindo(X, Y) :- comeu(X,Y).
%% Passo da chamada recursiva
esta_digerindo(X, Y) :- comeu(X, Z) , esta_digerindo(Z, Y) . 


comeu(gato, roeu(rato, queijo)).
comeu(gato, rato).
comeu(cobra, sapo).

comeu(leão, gato).
comeu(urso, gato).
comeu(urso, cobra).



%% esta_digerindo(urso, rato). ---> true (sim)!!!!!

%%  1ª coisa: esta_digerindo(urso, rato)
%%  2ª coisa: comeu(urso, Z) , esta_digerindo(Z, rato) .  Z = gato, 
%%  3ª esta_digerindo(gato, rato) .

%% x -> y, X |- y