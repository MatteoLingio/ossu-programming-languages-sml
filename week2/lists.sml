(*fun get_nth(list: 'a list, pos: int, idx: int) =
	if(pos = idx *)

fun sum_all (xs: int list) =
	if null xs
	then 0
	else hd xs + sum_all(tl xs)

fun countdown (x: int) =
	if x = 1
	then [1]
	else x::countdown(x - 1)

fun append (xs: int list, ys: int list) = 
	if null xs
	then ys
	else (hd xs) :: append((tl xs), ys)

fun sum_pair_list (xs: (int * int) list) =
	if null xs
	then 0
	else (#1 (hd xs)) + (#2 (hd xs)) + sum_pair_list(tl xs)

fun firsts (xs: (int * int) list) =
	if null xs 
	then []
	else (#1 (hd xs)) :: firsts(tl xs)