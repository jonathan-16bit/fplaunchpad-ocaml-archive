(* Tail-recursive and iterative *)
let fib n =
  let rec go l r k =
    if k = n then l else go r (l + r) (k + 1)
  in
  go 0 1 0

(* 
   At any given point:
   l = fib(k)
   r = fib(k+1)
 *)
