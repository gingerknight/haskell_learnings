-- CheckIfThenElse.hs
module CheckIfThenElse (almostTernary) where
-- define func
almostTernary :: Int -> Int -> Int -> Int
almostTernary x y z = if x > 0 && y > 0 && z > 0 then 2 * maximum [x,y,z]
                    else if x < 0 && y < 0 && z < 0 then x + y + z
                    else abs (x - y) + abs (y - z)
