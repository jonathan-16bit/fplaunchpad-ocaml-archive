(* _ for head because it is unused *)
let rec length xs = 
  match xs with [] -> 0 | _ :: rest -> 1 + length rest

(* Prints 6 *)
let sample = length [ 1; 2; 4; 8; 16; 32 ]
let () = print_endline (string_of_int sample)
