%%%%
%% Name : Rodger Waldron
%% Student Number : 6945880
%%%%%

secondLast(X,[X|[H|[]]]).

secondLast(X,[H|L]):- 
	secondLast(X,L).


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

maxmin([H|[]],Max,Min):- 
	Max is H,
	Min is H.  

maxmin([H|L],Max,Min):-
	maxmin(L,PosMax,Min),
	H > PosMax,
	H is Max.

maxmin([H|L],Max,Min):-
	maxmin(L,Max,PosMin),
	H < PosMin,
	H is Min.


maxmin([H|L],Max,Min):-
	maxmin(L,Max,Min).


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

reverseDrop(TL,R) :- 
	reverseDrop(TL,1,[],R),
 	!.

reverseDrop([HL|TL],N,I,R) :-
	N =:= 0,
	reverseDrop(TL,1,I,R).

reverseDrop([HL|TL],N,I,R) :- 
	N =:= 1,
    reverseDrop(TL,0,[HL|I],R).

reverseDrop([],N,R,R).
