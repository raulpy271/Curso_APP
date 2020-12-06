

bublesort(SortedList, List) :- isSorted(List), SortedList = List.
bublesort(SortedList, List) :- 
    putTheMostHigherElementInTheEnd(ListWithHigherInTheEnd, List ),
    bublesort(SortedList, ListWithHigherInTheEnd).


putTheMostHigherElementInTheEnd(ListWithHigherInTheEnd, List) :-
    [_] = List,
    ListWithHigherInTheEnd = List. 


putTheMostHigherElementInTheEnd(ListWithHigherInTheEnd, List) :-
    [First | [Second | ListAfterSecond] ] = List,
    First =< Second,
    putTheMostHigherElementInTheEnd(
        SublistWithHigherInTheEnd, 
        [Second | ListAfterSecond]),
    ListWithHigherInTheEnd = [First | SublistWithHigherInTheEnd].


putTheMostHigherElementInTheEnd(ListWithHigherInTheEnd, List) :-
    [First | [Second | ListAfterSecond] ] = List,
    First >= Second,
    putTheMostHigherElementInTheEnd(
        SublistWithHigherInTheEnd, 
        [First | ListAfterSecond]),
    ListWithHigherInTheEnd = [Second | SublistWithHigherInTheEnd].


isSorted([_]).
isSorted(List) :-
    [First | [Second | ListAfterSecond] ] = List,
    First =< Second,
    isSorted([ Second | ListAfterSecond ]).


testsWork :-
    ListSorted             = [0, 1, 2, 3],
    ListNonSorted          = [3, 2, 1, 0],
    ListWithHigherInTheEnd = [2, 1, 0, 3],
    isSorted(ListSorted), 
    \+ isSorted(ListNonSorted),
    putTheMostHigherElementInTheEnd(ListSorted, ListSorted),
    putTheMostHigherElementInTheEnd(
        ListWithHigherInTheEnd,
        ListNonSorted),
    bublesort(ListSorted, ListSorted),
    bublesort(ListSorted, ListWithHigherInTheEnd),
    bublesort(ListSorted, ListNonSorted).


