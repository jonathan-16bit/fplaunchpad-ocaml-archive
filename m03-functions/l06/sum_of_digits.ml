(* Given non-negative input *)
let rec sum_digits n =
  if n < 10 then n
  else (n mod 10) + sum_digits (n / 10)
