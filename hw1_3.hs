countSub _ [] = 0 
countSub x (y:ys)
    | head x == y = countSub x ys + countSub_aux (tail x) ys
    | otherwise = countSub x ys
    where
      countSub_aux [] _ = 1
      countSub_aux _ [] = 0
      countSub_aux x (y:ys)
        | head x == y = countSub_aux (tail x) ys
        | otherwise = 0