transpose :: Eq a => [[a]] -> [[a]]
transpose [[]] = []
transpose (xs:[]) = []
transpose ([]:xs) = []
transpose (xs:[]:ys) = []
transpose x 
            | x /= [] = (map head x ): transpose (map tail x) 
            | otherwise  = []
