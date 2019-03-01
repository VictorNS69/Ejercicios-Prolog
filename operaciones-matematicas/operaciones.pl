% nat(X)/1 --> X is a natural number
nat(0).
nat(s(X)) :-
	nat(X).

% addition(X,Y,Z)/3 --> Z = X+Y
addition(0,X,X) :- 			% 0+X=X
	nat(X).		
addition(s(X),Y,Z) :- 			% (1+X)+Y=X+(Y+1)
	addition(X,s(Y),Z). 		

% multiply(X,Y,Z)/3 --> Z=X*Y
multiply(0,X,0).                	  % 0*X=0
multiply(s(X),Y,Z) :-          		  % (X+1)*Y=(X*Y)+Y
	multiply(X,Y,A),
	addition(Y,A,Z).

