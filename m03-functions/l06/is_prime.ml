(* First solution *)
let is_prime n =
  if n < 2 then false
  else if 
    let rec are_factors = fun n k -> 
      if (k * k) > n then false
      else if n mod k = 0 then true
      else are_factors n (k + 1)
    in
    are_factors n 2 then false
  else true

(* Textbook solution *)
let is_prime n =
  if n < 2 then false
  else 
    let rec try_div k =
      if (k * k) > n then true
      else if n mod k = 0 then false
      else try_div (k + 1)
    in
    try_div 2
