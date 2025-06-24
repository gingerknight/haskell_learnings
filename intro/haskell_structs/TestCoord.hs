-- TestCoord.hs
import Test.HUnit
import System.Exit (exitFailure, exitSuccess)

import Coord (Coordinate(..), scaleCoordinate, distance)

-- Tests
tests :: Test
tests = TestList
  [ TestCase $ assertEqual
      "Scaling (1,2,3) by 5 should be (5,10,15)"
      (Coordinate 5 10 15)
      (scaleCoordinate (Coordinate 1 2 3) 5)

  , TestCase $ assertEqual
      "Distance squared between (1,2,3) and (10,11,12) should be 243"
      243
      (distance (Coordinate 1 2 3) (Coordinate 10 11 12))
  ]

-- Run tests
main :: IO ()
main = do
  counts <- runTestTT tests
  if errors counts + failures counts == 0
    then exitSuccess
    else exitFailure
