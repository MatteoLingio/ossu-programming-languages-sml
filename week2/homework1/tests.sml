(* Homework1 Simple Test *)
(* These are basic test cases. Passing these tests does not guarantee that your code will pass the actual homework grader *)
(* To run the test, add a new line to the top of this file: use "homeworkname.sml"; *)
(* All the tests should evaluate to true. For example, the REPL should say: val test1 = true : bool *)
use "homework.sml";


val test1_older = is_older ((1,2,3),(2,3,4)) = true
val test2_older = is_older ((2012,7,4),(1999,8,9)) = false
val test3_older = is_older ((2011,9,4),(2011,9,4)) = false
val test4_older = is_older ((2022,8,9),(2022,12,12)) = true


val test1_n_in_month = number_in_month ([(2012,2,28),(2013,12,1)],2) = 1
val test2_n_in_month = number_in_month ([(2021,5,7), (1999,5,21), (2011,6,9), (2,5,3)], 5) = 3
val test3_n_in_month = number_in_month ([],2) = 0
val test4_n_in_month = number_in_month ([(2030,6,28),(2019,1,9),(2011,4,6), (2089,1,7)], 1) = 2

val test1_n_in_months = number_in_months ([(2012,2,28),(2013,12,1),(2011,3,31),(2011,4,28)],[2,3,4]) = 3
val test2_n_in_months = number_in_months ([(2012,2,28),(2013,1,1)],[1,3]) = 1
val test3_n_in_months = number_in_months ([(2012,10,28),(2013,7,1)],[10,7,4]) = 2
val test4_n_in_months = number_in_months ([],[2,3,4]) = 0

val test1_dates_in_month = dates_in_month ([(2012,2,28),(2013,12,1)],2) = [(2012,2,28)]
val test2_dates_in_month = dates_in_month ([(2012,3,28),(2013,3,1)],3) = [(2012,3,28), (2013,3,1)]
val test3_dates_in_month = dates_in_month ([(2012,2,28),(2013,12,1), (2013,2,1)],2) = [(2012,2,28), (2013,2,1)]
val test4_dates_in_month = dates_in_month ([],2) = []
(*)

val test5 = dates_in_months ([(2012,2,28),(2013,12,1),(2011,3,31),(2011,4,28)],[2,3,4]) = [(2012,2,28),(2011,3,31),(2011,4,28)]

val test6 = get_nth (["hi", "there", "how", "are", "you"], 2) = "there"

val test7 = date_to_string (2013, 6, 1) = "June 1, 2013"

val test8 = number_before_reaching_sum (10, [1,2,3,4,5]) = 3

val test9 = what_month 70 = 3

val test10 = month_range (31, 34) = [1,2,2,2]

val test11 = oldest([(2012,2,28),(2011,3,31),(2011,4,28)]) = SOME (2011,3,31)

*)