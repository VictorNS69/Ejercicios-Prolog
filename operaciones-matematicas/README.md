# Operaciones matemáticas
Algunas operaciones matemáticas con números naturales.
## Numeros naturales
nat(X)/1 --> Dice si X es un natural o no

Ejemplos:
```prolog
?- nat(0).		% ¿0 es un número natural?
?- nat(s(0)).		% ¿1 (sucesor de 0) es natural?
```
## Nuemros pares
even(X)/1 --> Dice si X es un número par

Ejemplos:
```prolog
?- even(s(s(0))).	% ¿2 es un número par?
?- even(s(s(s(0)))).	% ¿3 es un número par?
?- even(_).		% ¿Existe algún número par?
```
## Suma
addition(X,Y,Z)/3 --> Dice si Z = X + Y

Ejemplos:
```prolog
?- addition(0,s(0),s(0)).               % ¿0 + 1 = 1?
?- addition(0,s(s(0)),0).               % ¿0 + 2 = 0?
?- addition(s(0),s(s(0)),s(s(s(0)))).	% ¿1 + 2 = 3?
```

## Multiplicación
multiply(X,Y,Z) --> Dice si Z = X * Y

Ejemplos:
```prolog
?- multiply(0,0,0).                             % ¿0 * 0 = 0?
?- multiply(s(s(0)),s(s(0)),s(s(s(s(0))))).     % ¿2 * 2 = 4?
?- multiply(s(s(0)),s(s(s(s(0)))),0).           % ¿2 * 4 = 0?
```

## Factorial
fact(X,Y)/2 --> Dice si Y = X!

Ejemplos:
```prolog
?- fact(s(0),s(0)).         % ¿1! = 1?
?- fact(s(0),s(s(s(0)))).   % ¿1! = 3?
?- fact(s(s(0)),s(s(0))).   % ¿2! = 2?
```
## Exponencial
exp(X,Y,Z)/3 --> Dice si Z = X^Y
Ejemplos:
```prolog
?- exp(s(s(0)),s(s(0)),s(s(s(s(0))))).        % ¿2^2 = 4?
?- exp(s(s(0)),s(s(0)),s(s(s(s(s(0)))))).     % ¿2^2 = 5?
```

## Menor que
lower(X,Y)/2 --> Dice si X < Y

Ejemplos:
```prolog
?- lower(s(0),s(s(0))).     % ¿1 < 2?
?- lower(s(0),s(0)).        % ¿1 < 1?
```
## Mayor que
greater(X,Y)/2 --> Dice si X > Y

Ejemplos:
```prolog
?- greater(s(0),s(s(0))).   % ¿1 > 2?
?- greater(s(0),0).         % ¿1 > 0?
```

## Minimo
min(X,Y,Z)/3 --> Dice si Z es el  min(X,Y)

Ejemplos:
```prolog
?- min(s(0),s(s(s(0))),s(0)).   % ¿min(1,3) = 1?
?- min(s(s(s(0))),s(s(s(0))),0).   % ¿min(3,3) = 0?
```
