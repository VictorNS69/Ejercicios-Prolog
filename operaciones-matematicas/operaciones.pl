% nat(X)/1 --> X is a natural number
nat(0).
nat(s(X)) :-
	nat(X).

% even(X)/1 --> X is an even number
even(0).		% 0 is an even number
even(s(s(X))) :-	% n is an even number if n-2 is an even number
	even(X).	

% addition(X,Y,Z)/3 --> Z = X+Y
addition(0,X,X).  			% 0+X = X
addition(s(X),Y,Z) :-			% (1+X)+Y = X+(Y+1)
	addition(X,s(Y),Z).

% multiply(X,Y,Z)/3 --> Z=X*Y
multiply(0,X,0) :- nat(X).          % 0*X=0
multiply(s(X),Y,Z) :-               % (X+1)*Y=(X*Y)+Y
	multiply(X,Y,A),
	addition(A,Y,Z).

% fact(X,Y)/2 --> Y = X!
fact(0,s(0)).               % 0! = 1
fact(s(X),Y) :-             % (X+1)! = X! * (X+1)
	fact(X,Z),
	multiply(s(X),Z,Y).

% TODO: Not working
% exp(X,Y,Z) --> Z = X^Y
exp(_,0,s(0)).						% X^0 = 1
exp(X,Y,Z) :-					% X^(Y+1) = X^(Y)*X
	exp(X,Y,S),
	multiply(X,S,Z).


% greater(X,Y) --> X > Y
greater(X,0) :- X\=0.		% max(X,0) = X
greater(s(X),s(Y)) :-
	greater(X,Y).

% lower(X,Y) --> X < Y
lower(0,X) :- X\=0.		% min(0,X) = X
lower(s(X),s(Y)) :-
	lower(X,Y).

% min(X,Y,Z)/3 --> Z = min(X,Y)
min(_,0,0).		% min(X,0) = 0
min(X,Y,X) :-
	lower(X,Y).
min(X,Y,Y) :-
	lower(Y,X).
