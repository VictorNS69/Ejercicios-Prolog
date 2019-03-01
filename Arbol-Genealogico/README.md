# Árbol Genealógico
Pequeño árbol genealógico hecho en Prolog.

## Árbol
Árbol implementado en la Base de Hechos:
![Árbol Genealógico de ejemplo](/Arbol-Genealogico/arbol.png)

## Preguntas que se pueden hacer
```Prolog
?- hijo(X, yo).		% ¿'yo' de quién es hijo?
?- hermano(X, yo).	% ¿De quién es hermano 'yo'?
?- padre(X, yo).	% ¿Quiénes son los padres de 'yo'?
?- abuelo(X, yo).	% ¿Quiénes son los abuelos de 'yo'?
?- tio(X, yo).		% ¿Quiénes son los tios de 'yo'?
?- primo(X, yo).	% ¿Quiénes son los primos de 'yo'?
?- sobrino(X, yo).	% ¿Quiénes son los sobrinos de 'yo'?
...
```
