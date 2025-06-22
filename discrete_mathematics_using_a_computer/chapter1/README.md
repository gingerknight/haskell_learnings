## Definition Files

- Create a file called `mydefs.hs`
- Enter the repl for haskell with `gchi`

At the prompt follow along to actually have loaded values and "algebraic" equations
```
> :load mydefs
compiling bit and reading
> x
6
> y
7
> x * y
42
```

## Math

Haskell handles math similarly as expected to other languages
```
+, -, *, /, ^
```

But there are also string operators:
- `\`div\`` and `\`mod\`` --> it requires the backtick for the string
are operators to perform integer division, and modulus calculations

### Types

- `Int` is the type of integers that fit into a word on the computer.
    - Words on some computers are less than 200bits, we are literally talking about the memory size
- `Integer` is the type of mathematical integers

So if a computer has limited memory and a word is small `2^200` would result in 0. 

But if we evaluate it as mathemtical integer, the computer attemptes to allocate enough memeory to calculate the answer

```
ghci> 2**0.5
1.4142135623730951
ghci> 2^200
1606938044258990275541962092341162602522202993782792835301376
ghci> (2^200)::Int
0
ghci>
```

#### Rational and Floating Point Numbers

To represent fractions these are `Ratio Integer`s. Type of rational numbers. The numerator and the denominator are
represented as an `Integer` type.

```
ghci> import Data.Ratio
ghci> 2 % 3 :: Ratio Integer
2 % 3
ghci> 2%3 + 1%6
5 % 6
ghci> :t (5 % 6)
(5 % 6) :: Integral a => Ratio a
ghci>
```

This shows setting the type to Ratio Integer after importing the `Data.Ratio` module. 

Also, it shows the addition happening as expected with the LCM of 6. 

Then it shows the most generic typing for the `(5 % 6)` expression which is a Ratio with an Integral constraint. 

### Booleans

#### Comparison operators

The following operators can be used to compare 2 numbers
- `==` -- equality
- `/=` -- not equal
- `<` -- less than
- `>` -- greate than
- of course the two `<=` `>=` signs for lte, gte

Boolean operators are
- `&&` -- Boolean AND
- `||` -- Boolean OR
- `not` -- Boolean NOT

```
ghci> True && True
True
ghci> True && False
False
ghci> True || False
True
ghci> not False
True
ghci> 3 <= 5 && 5 <= 10
True
ghci> 3 <= 20 && 20 <= 10
False
ghci> False == True
False
ghci> 1 == 1
True
ghci> 1 /= 2
True
ghci> 1 /= 1
False
```

### Chars

Chars use the `Data.Char` library, and the are represented with single apostraphes. 

```
ghci> import Data.Char
ghci> toUpper 'w'
'W'
ghci> toLower 'Q'
'q'
ghci>
```

### Strings

A string is a sequence of zero or more characters. It is written with double quotes
```
ghci> :t "tree"
"tree" :: String
```

The length function can be used to determine how many characters in a string. CANNOT be applied to `Char` type. 

Concatonated strings can be created with the `++` operator.
```
ghci> "tree" ++ "frog"
"treefrog"
ghci> "tree " ++ "frog"
"tree frog"
```

### Tuples

Pretty straight forward, it has types and they are like normal tuple types like python

```
ghci> :t ("dog", "cat")
("dog", "cat") :: (String, String)
ghci> fst
```

THere are built-in functions `fst` and `snd` that have definitions and can return the first or second element

```
ghci> fst ("dog", "cat")
"dog"
ghci> snd ("dog", "cat")
"cat"
ghci> :t fst
fst :: (a, b) -> a
ghci>
```

### Lists

List is written as a squence of elements, separated by commas, surrounded by square brackests.

It seems that we cannot mix data types together, might have to type cast something here
```
ghci> :t [13,9,-2,0]
[13,9,-2,0] :: Num a => [a]
ghci> :t ["cat", "dog"]
["cat", "dog"] :: [String]
ghci> :t [[1,2],["dog", 1],[]]

<interactive>:1:3: error: [GHC-39999]
    • No instance for ‘Num String’ arising from the literal ‘1’
    • In the expression: 1
      In the expression: [1, 2]
      In the expression: [[1, 2], ["dog", 1], []]
ghci> :t [[1,2],["dog", "1"],[]]

<interactive>:1:3: error: [GHC-39999]
    • No instance for ‘Num String’ arising from the literal ‘1’
    • In the expression: 1
      In the expression: [1, 2]
      In the expression: [[1, 2], ["dog", "1"], []]
ghci> :t [[1,2],[2,3],[]]
[[1,2],[2,3],[]] :: Num a => [[a]]
ghci>
```
To have mixed types, we have to custom define the list as an instance like below
```
ghci> data Thing = NumVal Int | StrVal String deriving (Show)
ghci> [NumVal 1, StrVal "dog", NumVal 42 ]
[NumVal 1,StrVal "dog",NumVal 42]
ghci> :t [NumVal 1, StrVal "dog", NumVal 42 ]
[NumVal 1, StrVal "dog", NumVal 42 ] :: [Thing]
ghci>
```

We also have some short hand notation for Haskell `List`s types:
```
ghci> [1..10]
[1,2,3,4,5,6,7,8,9,10]
ghci> ['a'..'z']
"abcdefghijklmnopqrstuvwxyz"
ghci> [0,2..9]
[0,2,4,6,8]
ghci>
```


