# Haskell Function Declaration & Testing

This is a simple Haskell project to demonstrate:

- How to define reusable functions in a module
- How to use those functions in another file
- How to run and test them with `runhaskell`

---


---

## 📄 File Summaries

### `first_func.hs`

This file declares a Haskell module named `First_func` and defines two functions:

```haskell
module First_func (g, f) where

f x y = x * x + y * y

g x y = x ^ 2 - y ^ 2 + x - y
```

- f x y computes the sum of squares of x and y
- g x y computes a custom expression involving squares, addition, and subtraction

### `g_func.hs`

A standalone script that imports `g` from `First_func` and prints example results.

```haskell
import First_func (g)

main = do
  print $ g 3 2   -- Should print 6
  print $ g 3 4   -- Should print -8
```

Run with:

```
runhaskell g_func.hs
```

### `TestG.hs`

A test file using HUnit to validate the behavior of f and g.

```haskell
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
```

Run with:
```
runhaskell TestG.hs
```
You should see:

```
Cases: 3  Tried: 3  Errors: 0  Failures: 0
```
