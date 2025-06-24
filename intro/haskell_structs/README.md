## 📦 Coord.hs
Defines a record type (similar to struct in C) called Coordinate.

Implements:
- scaleCoordinate :: Coordinate -> Int -> Coordinate — multiplies all fields by a scalar.
- distance :: Coordinate -> Coordinate -> Int — computes squared Euclidean distance between two coordinates.

These functions are pure and return values without side effects.

### ▶️ Main.hs

Demonstrates using functions from Coord.hs. Outputs results via putStrLn (side-effectful, i.e., impure).

Example:
- let scaled = scaleCoordinate (Coordinate 1 2 3) 5

### ✅ TestCoord.hs
Uses HUnit to test the pure logic in Coord.hs.

Each test uses:
```haskell
TestCase $ assertEqual "description" expected actual
```
Run it with:
```bash
runhaskell TestCoord.hs
```

## 💡 Key Haskell Concepts Covered
### ✅ Pure Functions
- Always return the same output for the same input.
- No I/O or state changes.
- Great for testing and reuse.

### 📦 Data Types like Structs
- Use data and record syntax to define types with named fields:
```haskell
    data Coordinate = Coordinate { x :: Int, y :: Int, z :: Int }
```
### 🧪 Unit Testing with HUnit
- Haskell’s HUnit is similar to Python’s unittest or pytest.
- Pure functions are easily tested since they produce deterministic results.

### 🧮 Composition over Mutation
- Rather than updating state, you define new values and pass them around.

### 🚀 How to Run
- Run main logc:
```bash
runhaskell Main.hs
```
Run tests:
```bash
runhaskell TestCoord.hs
```
