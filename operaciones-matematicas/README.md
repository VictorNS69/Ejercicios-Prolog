# Operaciones matemáticas
Algunas operaciones matemáticas con números naturales.
## Numeros naturales
nat(X)/1 --> Dice si X es un natural o no

Ejemplos:
```txt
?- nat(0).		% ¿0 es un número natural?
?- nat(s(0)).		% ¿1 (sucesor de 0) es natural?
```

## Suma
addition(X,Y,Z)/3 --> Dice si Z = X + Y

Ejemplos:
```txt
?- addition(0,s(0),s(0)).		% ¿0 + 1 = 1?
?- addition(0,s(s(0)),0).		% ¿0 + 2 = 0?
?- addition(s(0),s(s(0)),s(s(s(0)))).	% ¿1 + 2 = 3?
```

# Multiplicación
multiply(X,Y,Z) --> Dice si Z = X * Y

Ejemplos:
```txt
?- multiply(0,0,0).				% ¿0 * 0 = 0?
?- multiply(s(s(0)),s(s(0)),s(s(s(s(0))))).	% ¿2 * 2 = 4?
?- multiply(s(s(0)),s(s(s(s(0)))),0).		% ¿2 * 4 = 0?
```
