% nat(X)/1 --> X is a natural number
nat(0).
nat(s(X)) :-
	nat(X).

% add(X,Y,Z)/3 --> Z = X+Y
add(0,X,X) :- 			% 0+X=X
	nat(X).		
add(s(X),Y,Z) :- 		% (1+X)+Y=X+(Y+1)
	add(X,s(Y),Z). 		

% times(X,Y,Z)/3 --> Z=X*Y
times(0,X,0).                  % 0*X=0
times(s(X),Y,Z) :-             % (X+1)*Y=(X*Y)+Y
       times(X,Y,A),
       add(Y,A,Z).

