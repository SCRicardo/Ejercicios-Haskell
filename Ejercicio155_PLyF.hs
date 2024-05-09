potenciasDeDos :: [Integer]
potenciasDeDos = [2^n | n <- [0..]]


main :: IO ()
main = do
  let res = take 10 potenciasDeDos
  putStrLn ("Lista de potencias: " ++ show res)
