let rec choose n k =
  if k < 0 || k > n then 0
  else if k = 0 || k = n then 1
  else choose (n - 1) (k - 1) + choose (n - 1) k
