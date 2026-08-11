(* Works for non-negative input *)
let rec count_digits n =
  if n < 10 then 1 else 1 + count_digits (n / 10)

(* Works for any integer input *)
let count_digits n = 
  let rec go n =
    if n < 10 then 1 else 1 + go (n / 10)
  in 
  go (abs n)
