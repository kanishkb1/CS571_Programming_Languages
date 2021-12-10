/*Question 1: max(L,Res) function*/
max([],0).
max([Left|Right],Max) :-
    max(Right,Temp),
    Left > Temp,
    Max is Left.

max([Left|Right],Max) :-
    max(Right,Temp),
    Left =< Temp,
    Max is Temp.

/*Question 2: sum_even(L,Res) function */
sum_even([], 0).
sum_even([A],0).

sum_even([A,B|C],Ans):-
    sum_even(C,Temp),
    Ans is B+Temp.


/*Question 3: delete_first_k(X,K,L,Res) function */
delete_first_k(A,_,[],[]).
delete_first_k(A,0,L,L).
delete_first_k(A,I,[H|T],Ans) :- 
A == H,
I1 is I-1, 
delete_first_k(A,I1,T,Ans);
delete_first_k(A,I,T,L2), 
Ans = [H|L2].

