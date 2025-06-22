-- TestCompareAB.hs
import CompareAB (compareAB)
main :: IO ()
main = do
    print $ compareAB 5 10  -- should print 10
    print $ compareAB 20 10 -- should print 20
    print $ compareAB 7 7   -- should print 7
