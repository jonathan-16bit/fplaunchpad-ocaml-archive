let reverse_int num = 
  let rec go rev n = 
    if n = 0 then rev
    else go (rev * 10 + (n mod 10)) (n / 10)
  in
  go 0 num
