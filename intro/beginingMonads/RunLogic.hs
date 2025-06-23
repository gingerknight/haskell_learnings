-- RunLogic.hs
module Main where

import PureLogic
import Text.Read (readMaybe)

-- This is the Impure IO part of the pair. 
main :: IO ()
main = do
  putStrLn "Enter an integer:"
  input <- getLine
  case readMaybe input :: Maybe Int of
    Just n  -> putStrLn (doubleIfEven n)  -- use pure logic here
    Nothing -> putStrLn "Invalid number."
