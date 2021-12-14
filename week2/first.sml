(*this is a command*)

val x = 34; (* int *)
(*static envirmonment: x: int*)
(*dynamic envirmonment: x --> 34*)
val y = 17;
(*static envirmonment: y: int*)
(*dynamic envirmonment: x --> 34, y --> 17*)

val z = (x + y) + (y + 2);
(*static envirmonment: z: int*)
(*dynamic envirmonment: x --> 34, y --> 17, z --> 70*)

val q = z + 1;
(*static envirmonment: 1: int*)
(*dynamic envirmonment: x --> 34, y --> 17, z --> 70, q --> 71*)
val abs_of_z =  if z < 0 then 0 - z else z;

fun pow(x: int, y: int) = 
    if y=0
    then 1
    else x * pow(x, y-1)