-- TestPrintCountDown.hs
import Test.HUnit
import System.Exit (exitFailure, exitSuccess)
import System.IO.Silently (capture)
import CountDown (printCountDown)

-- The test function
testPrintCountDown :: Test
testPrintCountDown = TestCase $ do
    (output, _) <- capture $ printCountDown 5 2
    let expected = unlines ["5", "4", "3", "2"]
    assertEqual "Should print countdown from 5 to 2" expected output

-- Main runner
main :: IO ()
main = do
    counts <- runTestTT testPrintCountDown
    if errors counts + failures counts == 0
        then exitSuccess
        else exitFailure

