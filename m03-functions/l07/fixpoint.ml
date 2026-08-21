(* First soln: use inner recursive helper *)
let fixpoint f x =
  let rec go prev x = 
    if prev = f x then prev
    else go (f x) (f (f x))
  in
  go x x

(* Textbook soln *)
let rec fixpoint f x =
  let y = f x in
  if y = x then x else fixpoint f y
