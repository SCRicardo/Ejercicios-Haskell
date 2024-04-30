divisores :: Integer -> [Integer]
divisores x = [d | d <- [1..x], x `rem` d == 0]


main :: IO ()
main = do
  let res =  divisores 30
  putStrLn ("Divisores de números especiales: " ++ show res)