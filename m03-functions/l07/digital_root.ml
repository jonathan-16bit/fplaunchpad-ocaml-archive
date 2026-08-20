(* First soln *)
let digital_root n = 
  let rec sum_digits n = 
    if n = 0 then 0 
    else (n mod 10) + sum_digits (n / 10) 
  in 
  let rec go acc n = 
    if n < 10 then n
    else go (acc + sum_digits n) (sum_digits n)
  in 
  go 0 n

(* Textbook soln *)
let rec digital_root n = 
  if n < 10 then n
  else
    let rec sum m =
      if m = 0 then 0
      else (m mod 10) + sum (m / 10)
    in
    digital_root (sum n)
