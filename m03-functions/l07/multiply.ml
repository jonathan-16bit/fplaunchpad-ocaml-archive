(* My soln *)
let multiply a b =
  if b = 0 then 0
  else 
    let rec go acc b =
      if b = 0 then acc
      else go (acc + a) (b - 1)
    in 
    go 0 (abs b) * (b / (abs b))

(* Textbook soln *)
let multiply a b =
  let rec go acc n =
    if n = 0 then acc
    else go (acc + a) (n - 1)
  in
  if b >= 0 then go 0 b
  else - (go 0 (- b))
