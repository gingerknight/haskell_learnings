-- DoubleTrouble.hs
module DoubleTrouble where

import SafeParseDouble
import PureDouble

-- Module for testing
doubleParsedInput :: String -> Maybe Int
doubleParsedInput s = 
    parseAndDouble s >>= \n -> return (doubleIt n)
