% Base de Hechos
% hijo(X, Y) = Y es hijo de X
hijo(abuelo1, padre).
hijo(abuela1, padre).
hijo(abuelo2, madre).
hijo(abuela2, madre).
hijo(abuelo2, tio).
hijo(abuela2, tio).
hijo(padre, yo).
hijo(padre, hermano).
hijo(padre, hermana).
hijo(madre, yo).
hijo(madre, hermano).
hijo(madre, hermana).
hijo(yo, hijo).
hijo(yo, hija).
hijo(tio, primo1).
hijo(tio, primo2).
hijo(tia, primo1).
hijo(tia, primo2).
hijo(primo1, sobrino).
hijo(primo1pareja, sobrino).

% Es X hermano/a de Y
% Imprime dos veces por que una persona es
% hermano por parte de madre y de padre
hermano(X, Y) :-
    hijo(Z, X),
    hijo(Z, Y),
    X \= Y.

% X es padre/madre de Y
padre(X, Y) :-
    hijo(X, Y),
    X \= Y.

% X es abuelo/a de Y
abuelo(X, Y) :-
    padre(X, Z),
    padre(Z, Y).

% X es tio/a de Y
% Sale dos veces por que hermano devuelve dos veces
tio(X, Y) :-
    hermano(X, Z),
    padre(Z, Y).

% X es primo de Y
% Se repite dos veces porque llama a tio
primo(X,Y) :-
    hijo(Z, X),
    tio(Z,Y).

% X es sobrino de Y
% Se repite dos veces porque llama a primo
sobrino(X, Y) :-
    hijo(Z, X),
    primo(Z,Y).
