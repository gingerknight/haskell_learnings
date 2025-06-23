-- DoWhileMain driver
import DoWhileLoopRecursion (countdownDoWhile)

main :: IO ()
main = do
    putStrLn "Countdown 1:"
    countdownDoWhile 5 1

    putStrLn "\nCountdown 2:"
    countdownDoWhile 3 9

    putStrLn "\nCountdown 3:"
    countdownDoWhile 2 2

