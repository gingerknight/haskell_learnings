-- CheckTemp.hs
module CheckTemp (checkTemp) where

checkTemp :: Int -> String
checkTemp temp
    | temp < 70 = "too cold"
    | temp > 90 = "too hot"
    | otherwise = "just right"
