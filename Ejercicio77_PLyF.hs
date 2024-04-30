digitos :: Integer -> [Integer]
digitos n = [read [x] | x <- show n]

main :: IO ()
main = do
  let res =  digitos 320274
  putStrLn ("Menor número con todos los dígitos en la factorización de su factorial: " ++ show res)