transpose :: Eq a => [[a]] -> [[a]]
transpose x 
            | x /= [] = (map head x ): transpose (map tail x) 
            | otherwise  = []