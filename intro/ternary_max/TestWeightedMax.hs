import Test.HUnit
import System.Exit (exitSuccess, exitFailure)
import CheckWeighted (weightedMax)
import CheckIfThenElse (almostTernary)

tests :: Test
tests = TestList
  [ TestCase (assertEqual "all positive" (2 * 9) (weightedMax 3 9 2))
  , TestCase (assertEqual "all negative" (-15) (weightedMax (-5) (-6) (-4)))
  , TestCase (assertEqual "mixed" (abs(2 - 0) + abs(0 - (-3))) (weightedMax 2 0 (-3)))
  , TestCase (assertEqual "all positive" (2 * 9) (almostTernary 3 9 2))
  , TestCase (assertEqual "all negative" (-15) (almostTernary (-5) (-6) (-4)))
  , TestCase (assertEqual "mixed" (abs(2 - 0) + abs(0 - (-3))) (almostTernary 2 0 (-3)))
  ]

main :: IO ()
main = do
  counts <- runTestTT tests
  if errors counts + failures counts == 0
    then exitSuccess
    else exitFailure

