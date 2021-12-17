fun is_older (date_one: int*int*int, date_two: int*int*int) =
	let
	  val is_year_older = #1 date_one < #1 date_two
	  val is_month_older = #1 date_one = #1 date_two andalso #2 date_one < #2 date_two
	  val is_day_older = #1 date_one = #1 date_two andalso #2 date_one = #2 date_two andalso #3 date_one < #3 date_two
	in
	  is_year_older orelse is_month_older orelse is_day_older
	end

fun number_in_month(dates: (int*int*int) list, month: int) =
	if null dates
	then 0
	else
	let
		val current_sum = number_in_month(tl dates, month)
	in 
		if (#2 (hd dates)) = month
		then 1 +  current_sum
		else current_sum
	end

fun number_in_months(dates: (int*int*int) list, months: int list) =
	if null months 
	then 0
	else 
	let
	  val sum = number_in_month(dates, hd months)
	in
	  if (sum = 0)
	  then 0
	  else number_in_months(dates, tl months) + sum
	end

fun dates_in_month(dates: (int*int*int) list, month: int) =
	if null dates 
	then []
	else
	let
	  	val date_list = dates_in_month(tl dates, month)
	in
		if(#2 (hd dates)) = month
		then (hd dates) :: date_list
		else date_list
	end

fun dates_in_months(dates: (int*int*int) list, months: int list) =
	if null months 
	then []
	else
	let
		val date_list = dates_in_month(dates, hd months)
	in
		if (null date_list)
		then date_list
		else date_list @ dates_in_months(dates, tl months)
	end

fun get_nth(strings: string list, n: int) =
	let
		fun helper(strings: string list, pos: int) =
			if null strings
			then ""
			else if n - 1 = pos
			then hd strings
			else helper(tl strings, pos + 1)
	in
		helper(strings, 0)
	end

fun date_to_string(date: (int*int*int)) =
	let
		val months = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November"] 
	in
		get_nth(months, #2 date) ^ " " ^ Int.toString (#3 date) ^ ", " ^ Int.toString (#1 date)
	end

fun number_before_reaching_sum(sum: int, int_list: int list) =
	let
		fun helper(current_sum: int, int_list: int list, pos: int) =
			if current_sum >= sum
			then pos - 1
			else helper(current_sum + hd int_list, tl int_list, pos + 1)
	in
	  helper(0, int_list, 0)
	end

fun what_month(month: int) =
	let
	  val days_per_month = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
	in
	  number_before_reaching_sum(month, days_per_month) + 1
	end

fun month_range(day1: int, day2: int) =
	let
	fun helper(day: int) =
		if day > day2
		then []
		else what_month(day) :: helper(day + 1)
	in
	  helper(day1)
	end

fun oldest(dates: (int*int*int) list) =
	if null dates
	then NONE
	else let
	  fun oldest_of_two(d1: (int*int*int), d2: (int*int*int)) =
	  	if is_older(d1, d2)
		then d1
		else d2

	  fun helper(dates: (int*int*int) list, current_oldest: (int*int*int)) =
	  	if null dates
		then SOME(current_oldest)
		else helper(tl dates, oldest_of_two(hd dates, current_oldest))
	in
	  helper(dates, hd dates)
	end