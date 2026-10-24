let trailing_zeros n =
  let rec go acc m =
    if m mod 2 = 1 then acc
    else go (acc + 1) (m / 2)
  in
  go 0 n
