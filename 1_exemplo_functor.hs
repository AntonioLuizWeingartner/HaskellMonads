--Todo tipo de lista é um functor no haskell
triplicar :: (Num a) => a -> a
triplicar a = a*3

main = do
    let list = [1..10]
    putStrLn "Lista inicial: "
    print list
    putStrLn "Após a aplicação do fmap na lista com a função triplicar: "
    let lista_triplicada = fmap triplicar list
    print lista_triplicada
    