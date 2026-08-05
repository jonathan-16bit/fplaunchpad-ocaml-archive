(* Writing in desugared (ish) form *)
(* Binding the fn definition to the name "go" *)
let factorial n = 
  let rec go = 
    fun acc n -> 
      if n = 0 then acc else go (acc * n) (n - 1)
  in
  go 1 n
