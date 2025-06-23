-- PureLogic.hs
module PureLogic (doubleIfEven) where

doubleIfEven :: Int -> String
doubleIfEven n
  | even n    = "Double is: " ++ show (2 * n)
  | otherwise = "Number is not even"
-- This is Pure because there is no IO, no mutation of `n`, and it is deterministic (same output based on if n is even
-- or not)
