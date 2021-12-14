
fun countup_from1(x: int) = 
	let
		fun count (from: int) 
			if(from = to)
			then x :: []
			else from :: count(from + 1)
	in
	  count(1)
	end

fun max (num_list: int list) = 
	if null num_list
	then 0
	else if null tl num_list
	then hd num_list
	else if hd num_list > num_list tl num_list
	then hd num_list
	else max tl num_list

fun memoized_max (num_list: int list) = 
	if null num_list
	then NONE
	else if null tl num_list
	then hd num_list
	let
	  let max = memoized_max(tl num_list)
	in if isSome max andalso hd num_list > valof max
	   then max
	   else SOME (hd num_list)
	end