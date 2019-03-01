% nat(X)/1 --> X is a natural number
nat(0).
nat(s(X)) :-
	nat(X).

% add(X,Y,Z)/3 --> Z = X+Y
add(0,X,X) :- 			% 0+X=X
	nat(X).		
add(s(X),Y,s(Z)) :- 		% (1+X)+Y=(1+Z)
	add(X,Y,Z). 		

