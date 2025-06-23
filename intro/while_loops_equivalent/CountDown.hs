module CountDown (printCountDown) where
-- Task: Define 2 functions
-- Count down from an 'n' input to an 'z' endpoint

-- | Returns a list of number starting at `start` and counts down by 1 int to `end`, inclusive.
countDownRange :: Int -> Int -> [Int]
countDownRange start end = [start, start - 1 .. end] -- Setup list going from start down to end


-- | Returns the countdown from `start` to `end`, one number per line
printCountDown :: Int -> Int -> IO ()
printCountDown start end = mapM_ print (countDownRange start end) -- mapM_ print is the same thing functionally as forM_ [] print


-- | Main to print out the numbers
main :: IO ()
main = do
    putStrLn "Starting Countdown!"
    printCountDown 10 5
