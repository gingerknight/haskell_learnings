-- TestDoWhileLoop.hs
import Test.HUnit
import System.Exit (exitFailure, exitSuccess)
import System.IO.Silently (capture)

import DoWhileLoopRecursion (countdownDoWhile)

testCountDowns :: Test
testCountDowns = TestList
    [ TestCase $ do
        -- start=1, end=5 (start < end, should print "1" only)
        (output, _) <- capture $ countdownDoWhile 1 5
        let expected = "1\n"
        assertEqual "Should print only '1' and stop" expected output

    , TestCase $ do
        -- start=5, end=1 (prints 5,4,3,2,1)
        (output, _) <- capture $ countdownDoWhile 5 1
        let expected = unlines ["5", "4", "3", "2", "1"]
        assertEqual "Should count down from 5 to 1" expected output

    , TestCase $ do
        -- start=3, end=3 (prints only 3)
        (output, _) <- capture $ countdownDoWhile 3 3
        let expected = "3\n"
        assertEqual "Should print only '3' when start == end" expected output
    ]

main :: IO ()
main = do
    counts <- runTestTT testCountDowns
    if errors counts + failures counts == 0
        then exitSuccess
        else exitFailure


