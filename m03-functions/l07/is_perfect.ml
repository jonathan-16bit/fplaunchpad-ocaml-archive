let is_perfect n =
  let rec go acc d =
    if d >= n then acc
    else go (acc + (if n mod d = 0 then d else 0)) (d + 1)
  in
  n > 0 && go 0 1 = n
