--Monad Maybe representa um conteiner para valores opcionais
--data Maybe a = Just a | Nothing


divisaoSegura :: Integer -> Integer -> Maybe Integer
divisaoSegura a 0 = Nothing
divisaoSegura a b = Just (a `div` b)

main = do
    print (divisaoSegura 100 3 >>= divisaoSegura 100 >>= divisaoSegura 100)
    print (divisaoSegura 100 0 >>= divisaoSegura 100 >>= divisaoSegura 100)