-- What is your name
main = do
    print "What is your name?"
    name <- getLine
    print("Hello " ++ name ++ "!")
