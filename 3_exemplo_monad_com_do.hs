main = do
    a <- getLine
    print ((read a :: Int)*8)