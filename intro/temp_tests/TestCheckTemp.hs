import Test.HUnit
import System.Exit (exitFailure, exitSuccess)

-- Make sure your function is in CheckTemp.hs as `checkTemp`
import CheckTemp (checkTemp)

tests :: Test
tests = TestList
  [ TestCase (assertEqual "Temp 65" "too cold" (checkTemp 65))
  , TestCase (assertEqual "Temp 75" "just right" (checkTemp 75))
  , TestCase (assertEqual "Temp 95" "too hot" (checkTemp 95))
  ]

main :: IO ()
main = do
  counts <- runTestTT tests
  if errors counts + failures counts == 0
    then exitSuccess
    else exitFailure

