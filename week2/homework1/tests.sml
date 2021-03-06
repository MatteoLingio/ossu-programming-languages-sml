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

val test1_dates_in_months = dates_in_months ([(2012,2,28),(2013,12,1),(2011,3,31),(2011,4,28)],[2,3,4]) = [(2012,2,28),(2011,3,31),(2011,4,28)]
val test2_dates_in_months = dates_in_months ([(2012,2,28),(2013,12,1),(2011,3,31),(2011,4,28)],[12]) = [(2013,12,1)]
val test3_dates_in_months = dates_in_months ([],[2,3,4]) = []
val test4_dates_in_months = dates_in_months ([(2012,3,28),(2013,3,1),(2011,3,31),(2011,3,28)],[3]) = [(2012,3,28),(2013,3,1),(2011,3,31),(2011,3,28)]

val test1_get_nth = get_nth (["hi", "there", "how", "are", "you"], 2) = "there"
val test2_get_nth = get_nth (["hi"], 1) = "hi"
val test3_get_nth = get_nth ([], 2) = ""
val test4_get_nth = get_nth (["hi", "there", "how", "are", "you"], 5) = "you"
val test5_get_nth = get_nth (["hi", "there", "how", "are", "you"], 6) = ""

val test1_date_to_string = date_to_string (2013, 6, 1) = "June 1, 2013"

val test1_number_before_reaching_sum = number_before_reaching_sum (10, [1,2,3,4,5]) = 3
val test2_number_before_reaching_sum = number_before_reaching_sum (1, [1,2,3,4,5]) = 0
val test3_number_before_reaching_sum = number_before_reaching_sum (2, [1,2,3,4,5]) = 1
val test4_number_before_reaching_sum = number_before_reaching_sum (0, []) = ~1

val test1_what_month = what_month 70 = 3
val test2_what_month = what_month 10 = 1
val test3_what_month = what_month 365 = 12
val test4_what_month = what_month 182 = 7

val test_1_month_range = month_range (31, 34) = [1,2,2,2]
val test_2_month_range = month_range (2, 1) = []
val test_3_month_range = month_range (28, 29) = [1, 1]

val test_1_oldest = oldest([(2012,2,28),(2011,3,31),(2011,4,28)]) = SOME (2011,3,31)
val test_2_oldest = oldest([]) = NONE
val test_3_oldest = oldest([(2012,2,28)]) = SOME (2012,2,28)
val test_4_oldest = oldest([(2012,2,28), (2011,4,28)]) = SOME (2011,4,28)
