datatype mytype = Pizza | Str of string | TwoInts  of int * int;

fun f x =
    case x of
        Pizza => 3 |
        TwoInts(i1, i2) => i1 + i2 |
        Str s => Strign.size s

datatype exp = Constant of int |
               Negate of exp |
               Add of exp * exp |
               Multiply of exp * exp
            
fun eval e =
    case e of
        Constant i => i |
        Negate e2 =>  ~ (eval e2) |
        Add(e1, e2) => (eval e1) + (eval e2) |
        Multiply(e1, e2) => (eval e1) * (eval e2)

fun max_constant e = 
    let fun max_of_two(e1, e2)  =
        let val m1 = max_constant e1
            val m2 = max_constant e2
        in Int.max(m1, m2) 
        end
    in
    case e of
        Constant => i |
        Negate e1 => max_constant e1 |
        Add(e1, e2) => max_constant(e1, e2) |
        Multiply(e1, e2) => max_constant(e1, e2) 
    end

val test_exp = Add (Constant 19, Negate (Constant 4))
val nineteen = max_constant test_exp


fun sum_list xs = 
    case xs of
        [] => 0 |
        x::xs' => x + sum_list xs'

fun append(xs, ys) =
    case xs of
        [] => ys |
        x::xs' => x :: append(xs', ys)
