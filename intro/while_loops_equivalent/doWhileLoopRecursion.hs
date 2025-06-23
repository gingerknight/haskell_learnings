module DoWhileLoopRecursion (countdownDoWhile) where
-- Do While is recursion in Haskell. Imperative lang like C/Python have do while
-- This should print the input and then check if it should recurse
-- It won't recurse if start < end

countdownDoWhile :: Int -> Int -> IO ()
countdownDoWhile start end = do
    print start
    if start > end
        then countdownDoWhile (start -1) end
    else return ()

