(* Hofststadter's female and male sequence *)
let rec female n =
  if n = 0 then 1
  else n - male (female (n - 1))
and male n = 
  if n = 0 then 0
  else n - female (male (n - 1))
