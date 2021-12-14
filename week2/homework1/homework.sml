fun day_of_year(month: int, day_of_month: int) =
	let
		val month_days = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 31, 31];
		fun sum_month_days (month: int, month_days: int list, pos: int) = 
			if month > 12 orelse month <= 0
			then 0
			else if month - 1 = pos
			then hd month_days
			else hd month_days + sum_month_days(month, tl month_days, pos + 1)
	in
		sum_month_days(month - 1, month_days, 0) + day_of_month
	end

fun year_in_days(year: int) =
	year * 365

fun is_older (date_one: int*int*int, date_two: int*int*int) =
	year_in_days(#1 date_one) + day_of_year(#2 date_one, #3 date_one) < year_in_days(#1 date_two) + day_of_year(#2 date_two, #3 date_two);

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
	end;

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