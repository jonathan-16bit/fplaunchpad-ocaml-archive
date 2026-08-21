(* First soln *)
let is_palindrome_int n = 
  let rev = 
    let rec go acc m = 
      if m = 0 then acc
      else go (acc * 10 + (m mod 10)) (m / 10)
    in
    go 0 n
  in 
  if n = rev then true else false

(* Textbook soln *)
let is_palindrome_int n =
  let rec rev acc m =
    if m = 0 then acc
    else rev (acc * 10 + (m mod 10)) (m / 10)
  in n = rev 0 n
