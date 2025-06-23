# Countdown Examples in Haskell

This project demonstrates different ways to implement countdown functions in Haskell, contrasting imperative loop styles with recursive approaches.
Files

`CountDownRange.hs`
- Implements a pure function to generate a countdown list and an impure function that prints the countdown using a loop-style construct (mapM_).

`DoWhileLoopRecursion.hs`
- Implements a countdown function using recursion to mimic the behavior of a do-while loop.
- This function prints the current number, then recurses if the countdown condition is met.

## About Recursion in Haskell

Haskell relies heavily on recursion as a fundamental control structure, especially since it lacks traditional imperative loops like for or while. Recursive functions call themselves with updated parameters until a base case is reached, which stops the recursion.

The `countdownDoWhile` function demonstrates this pattern by:

- Printing the current start value.
- Recursively calling itself with start - 1 if the countdown should continue (start > end).
- Stopping (returning ()) once the countdown completes.

This recursive approach directly expresses the control flow in a clear, functional style.
Running the countdowns

You can run the recursive countdown directly:
```
runhaskell DoWhileLoopRecursion.hs
```
Or use the provided main function to run multiple countdowns sequentially.

---

## 🧠 Key Concept: Haskell Has No while!

In Haskell, we don’t use while loops directly. Instead, we use recursion, higher-order functions, or monadic actions (in IO) to simulate loops.

Let’s break it down step by step.

### 🔁 1. C while Loop

```c
int i = start;
while (i >= end) {
    printf("%d\n", i);
    i--;
}
```
This:
- Starts from start
- Prints and decrements until i < end

### 🐍 2. Python Equivalent

```python
def print_numbers_reverse(start, end):
    i = start
    while i >= end:
        print(i)
        i -= 1
```

### 🧮 3. Haskell Style

✅ Pure approach (create a list and process it):

```haskell
-- Returns a list of descending numbers
descendingList :: Int -> Int -> [Int]
descendingList start end = [start, start - 1 .. end]
```
Then you can print them:
```haskell
printNumbersReverse :: Int -> Int -> IO ()
printNumbersReverse start end = mapM_ print (descendingList start end)
```

Here’s what’s happening:
- `[start, start-1 .. end]` is Haskell’s range syntax in reverse
- `mapM_ print` is like a for loop that applies print to each element
