
import Control.Applicative

quadriplicar :: (Num a) => a -> a
quadriplicar a = a*4

dobrar :: (Num a) => a -> a
dobrar a = a * 2


main = do
    let lista_de_dados = [1..10]
    let lista_de_funcoes = [quadriplicar, dobrar]
    putStrLn "Lista de dados inicial: "
    print lista_de_dados
    putStrLn "Lista de dados após aplicação do (<*>): "
    let lista_alterada = lista_de_funcoes <*> lista_de_dados
    print lista_alterada

