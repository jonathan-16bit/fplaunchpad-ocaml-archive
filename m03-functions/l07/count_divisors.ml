(* First soln *)
let count_divisors n = 
  let rec go acc m =
    if m = 0 then acc
    else if (n mod m = 0) then go (acc + 1) (m - 1)
    else go acc (m - 1)
  in
  go 0 n

(* Textbook soln *)
let count_divisors n =
  let rec go acc d =
    if d > n then acc
    else go (if n mod d = 0 then (acc + 1) else acc) (d + 1)
  in
  go 0 1
