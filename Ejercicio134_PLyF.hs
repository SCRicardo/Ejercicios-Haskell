elimina :: Int -> [Int] -> [Int]
elimina n xs = [ x | x <- xs, x `rem` n /= 0 ]
criba :: [Int] -> [Int]
criba [] = []
criba (n:ns) = n : criba (elimina n ns)
primos :: [Int]
primos = criba [2..]
esPrimo :: Int -> Bool
esPrimo n = head (dropWhile (<n) primos) == n

main :: IO ()
main = do
  let res = esPrimo 2011
  putStrLn ("Es primo?: " ++ show res)