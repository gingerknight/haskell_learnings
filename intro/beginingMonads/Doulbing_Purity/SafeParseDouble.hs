-- SafeParseDouble.hs
module SafeParseDouble (parseAndDouble) where

import Text.Read (readMaybe)

parseAndDouble :: String -> Maybe Int
parseAndDouble s = do
    n <- readMaybe s -- Might Fail
    return (2 * n)
