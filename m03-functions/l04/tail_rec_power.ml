(* First solution *)
let power x n =
  let rec go acc x n =
    if n = 0 then acc else go (acc * x) x (n - 1) 
  in 
  go 1 x n

(* Since x stays the same across calls, we can omit it from the params *)
let power x n =
  let rec go acc n =
    if n = 0 then acc else go (acc * x) (n - 1) 
  in 
  go 1 n
