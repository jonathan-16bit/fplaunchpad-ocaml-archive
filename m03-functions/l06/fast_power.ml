(* Decompose by parity *)
(* About 2 * log2(n) calls *)
let rec fast_power x n = 
  if n = 0 then 1
  else if n mod 2 = 0 then 
    let half = fast_power x (n / 2) in
    half * half
  else x * fast_power x (n - 1)
