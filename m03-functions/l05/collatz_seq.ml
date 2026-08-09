(* Collatz conjecture, which claims these sequences always reach 1 *)
(* 1 -> 4 -> 2 -> 1, but here we terminate on obtaining 1 *)
let rec collatz n =
  print_endline (string_of_int n);
  if n = 1 then ()
  else if n mod 2 = 1 then collatz (3 * n + 1)
  else collatz (n / 2)
