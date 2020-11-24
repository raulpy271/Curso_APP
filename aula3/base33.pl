%% 0 é natural.
natural(0).
%% Se X é natural, então suc(X) é um natural.
natural(suc(X)) :- natural(X) .

%% 