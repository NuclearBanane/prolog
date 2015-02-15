%%%%
% Name : Rodger Waldron
% Student # : 6945880 
%%%%

flight(montreal, chicoutimi, 15:30, 16:15).
flight(montreal, sherbrooke, 17:10, 17:50).
flight(montreal, sudbury, 16:40, 18:45).
flight(northbay, kenora, 13:10, 14:40).
flight(ottawa, montreal, 12:20, 13:10).
flight(ottawa, northbay, 11:25, 12:20).
flight(ottawa, thunderbay, 19:00, 20:30).
flight(ottawa, toronto, 10:30, 11:30).
flight(sherbrooke, baiecomeau, 18:40, 20:05).
flight(sudbury, kenora, 20:15, 21:55).
flight(thunderbay, kenora, 20:00, 21:55).
flight(toronto, london, 13:15, 14:05).
flight(toronto, montreal, 12:45, 14:40).
flight(windsor, toronto, 8:50, 10:10).

%%%Part 1
% Rule Set 1 is the only one that works.
%
%%%
on_time(H1 : _M1, D, A)  :- 
        flight(D, A, H2 : _M2, _H3 : _M3),H2 - H1 > 1.
on_time(H1 : M1, D, A)  :- 
        flight(D, A, H2 : M2, _H3 : _M3), 
        H2 - H1 =:= 1, MM is 60 - M1,  MM + M2 >= 60.

%%%Part 2

arrival(flight(D,A),X):-flight(D,A,Y,X).


:-op(1155,xfx,arrival).

%%%part 3

solveQuadratic(A,B,C,X) :- 
	discriminant(A,B,C,Discriminant),
 	root2(A,B,C,Discriminant,X).

discriminant(A,B,C,Discriminant) :-
	Discriminant is B*B-4*A*C.

root2(A,B,C,0,X):- X is -B / (2*A).

root2(A,B,C,Discriminant,X):-
	Discriminant>0, X is (-B + (sqrt(Discriminant))) / (2*A).

root2(A,B,C,Discriminant,X):- 
	Discriminant>0, X is ( -B - (sqrt(Discriminant))) / (2*A).

%%%part 4

harmonic(N,X):- 
	N>1,
	T is N-1,
	harmonic(T,Y),
	X is 1/N + Y.
harmonic(1,X):- X is 1.
	
