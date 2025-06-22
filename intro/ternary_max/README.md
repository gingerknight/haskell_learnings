🧪 Haskell Assignment: Maximum of Three Values with Algebra Twist

Write a Haskell function that evaluates a simple math formula, but conditionally uses the maximum of three values to decide the result.
✏️ Problem

You are given three integers: x, y, and z. Implement a function weightedMax that returns:

- `2 * max(x, y, z)` if all are positive
- `x + y + z` if all are negative
- Otherwise, return abs(x - y) + abs(y - z)

🔧 Function Signature
```haskell
weightedMax :: Int -> Int -> Int -> Int
```
You’ll use:
- if / then / else OR guards (|)
- Built-in functions like max, abs
- let bindings if needed

🧪 Test File: TestWeightedMax.hs
```haskell
import Test.HUnit
import System.Exit (exitSuccess, exitFailure)
import CheckWeighted (weightedMax)

tests :: Test
tests = TestList
  [ TestCase (assertEqual "all positive" (2 * 9) (weightedMax 3 9 2))
  , TestCase (assertEqual "all negative" (-15) (weightedMax (-5) (-6) (-4)))
  , TestCase (assertEqual "mixed" (abs(2 - 0) + abs(0 - (-3))) (weightedMax 2 0 (-3)))
  ]

main :: IO ()
main = do
  counts <- runTestTT tests
  if errors counts + failures counts == 0
    then exitSuccess
    else exitFailure
```
🗂️ Setup Notes

Put your function in:
```
-- CheckWeighted.hs
module CheckWeighted (weightedMax) where
-- define function here
```
Then run:
```
runhaskell TestWeightedMax.hs
```
