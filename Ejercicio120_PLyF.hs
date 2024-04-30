numeroDivisores :: Int -> Int
numeroDivisores n = length [x | x <- [1..n], n `mod` x == 0]

esMuyCompuesto :: Int -> Bool
esMuyCompuesto x =
    and [numeroDivisores y < n | y <- [1..x-1]]
    where n = numeroDivisores x

main :: IO ()
main = do
  let res = esMuyCompuesto 25
  putStrLn ("Numeros muy compuestos: " ++ show res)
