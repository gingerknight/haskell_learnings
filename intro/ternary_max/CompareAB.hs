-- CompareAB.hs
module CompareAB (compareAB) where

-- Define compareAB: returns 'a' if a > b, else returns 'b'
compareAB :: Int -> Int -> Int
compareAB a b = if a > b then a else b
