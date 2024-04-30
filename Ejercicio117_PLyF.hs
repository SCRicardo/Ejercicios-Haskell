primos :: Integral a => [a]
primos = criba [2..]
    where  
        criba [] = []
        criba (n:ns) = n : criba (elimina n ns)
        elimina n xs = [x | x <- xs, x `mod` n /= 0]

main :: IO ()
main = do
  let res = take 10 primos
  putStrLn ("Numeros primos: " ++ show res)