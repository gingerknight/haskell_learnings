-- CheckWeighted.hs
module CheckWeighted (weightedMax) where
-- define function here
weightedMax :: Int -> Int -> Int -> Int
weightedMax x y z
    | x > 0 && y > 0 && z > 0   = 2 * maximum [x, y, z]
    | x < 0 && y < 0 && z < 0   = x + y + z
    | otherwise                 = abs (x - y) + abs (y - z)
