
⚙️ Goal: Create a function that doubles a number in three ways:

    Pure – takes an Int, returns an Int

    Safe Input Parsing – takes a String, might fail → returns Maybe Int

    Interactive – reads from the user (side effect) → returns IO Int

1. ✅ Pure Function (No Side Effects)
```haskell
-- PureDouble.hs
module PureDouble (doubleIt) where

doubleIt :: Int -> Int
doubleIt x = 2 * x
```
- ✅ Pure
- ✅ Deterministic
- ✅ Easy to test
- 🚫 No side effects

2. 🔄 Safe Parsing with Maybe (Still Pure)
```haskell
-- SafeParseDouble.hs
module SafeParseDouble (parseAndDouble) where

import Text.Read (readMaybe)

parseAndDouble :: String -> Maybe Int
parseAndDouble s = do
    n <- readMaybe s  -- Might fail
    return (2 * n)
```
- ✅ Still pure! (Maybe Int just encodes the possibility of failure)
- 📦 Safe way to handle bad input without crashing
- 🧠 Forces the caller to handle both Just and Nothing

Example:
```
parseAndDouble "42"    → Just 84
parseAndDouble "hello" → Nothing
```
3. 📣 Interactive with IO (Impure by necessity)
```haskell
-- IODouble.hs
module Main where

main :: IO ()
main = do
    putStrLn "Enter a number:"
    input <- getLine              -- IO action
    case readMaybe input of
        Just n  -> print (2 * n)  -- Pure logic inside
        Nothing -> putStrLn "Invalid number."
```
- ❗ Marked as IO () to indicate side effects
- 🌎 Talks to the outside world (user)
- 🧼 Still separates pure logic from IO — only wrapping input/output

🔍 Comparison Table

Feature	Pure Function	With Maybe	With IO
Type	Int -> Int	String -> Maybe Int	IO ()
Purity	✅ Pure	✅ Pure	❗ Impure (uses IO)
Side effects	❌ None	❌ None	✅ Yes (input/output)
Error Handling	❌ None	✅ Explicit via Maybe	✅ Manual handling with case
Usage	Logic only	Parser-like, maybe fail	Full CLI interaction
