--Monad Maybe representa um conteiner para valores opcionais
--data Maybe a = Just a | Nothing


divisaoSegura :: Integer -> Integer -> Maybe Integer
divisaoSegura a 0 = Nothing
divisaoSegura a b = Just (a `div` b)


computar :: Integer -> Maybe Integer
computar a = do
    res_a <- (divisaoSegura 100 a)
    res_b <- (divisaoSegura 100 res_a)
    res_c <- (divisaoSegura 100 res_b)
    return res_c


main = do
    print $ computar 3
    print $ computar 0