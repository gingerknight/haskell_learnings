-- TestG.hs
-- A test file using HUnit to validate the behavior of f and g.

import Test.HUnit
import First_func (g, f)

tests :: Test
tests = TestList
  [ TestCase (assertEqual "g 3 2" 6 (g 3 2))
  , TestCase (assertEqual "g 3 4" (-8) (g 3 4))
  , TestCase (assertEqual "f 3 4" 25 (f 3 4))
  ]

main :: IO Counts
main = runTestTT tests

-- You should see:
-- Cases: 3  Tried: 3  Errors: 0  Failures: 0

