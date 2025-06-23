-- TestDoubleTrouble.hs
import Test.HUnit
import System.Exit (exitFailure, exitSuccess)

-- Test the DoulbeTrouble parser
import DoubleTrouble (doubleParsedInput)

tests :: Test
tests = TestList
    [ TestCase (assertEqual "S '42'" (Just 168) (doubleParsedInput "42")) -- Doulbes twice
    ]

main :: IO ()
main = do
    counts <- runTestTT tests
    if errors counts + failures counts == 0
        then exitSuccess
        else exitFailure
