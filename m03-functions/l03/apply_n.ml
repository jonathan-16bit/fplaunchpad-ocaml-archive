(* 
  Write apply_n : int -> ('a -> 'a) -> 'a -> 'a so that apply_n n f x computes f (f (... (f x))) with n applications of f.
  For n <= 0, return x unchanged.
 *)

let rec apply_n n f x =
  if n <= 0 then x
  else apply_n (n - 1) f (f x)
