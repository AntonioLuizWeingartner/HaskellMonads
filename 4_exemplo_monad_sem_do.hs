main = getLine >>= (\input -> print((read input :: Int)*8))