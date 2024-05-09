esSemiPerfecto :: Int -> Bool
esSemiPerfecto n =
    or [sum ys == n | ys <- subconjuntos (divisores n)]
subconjuntos :: [a] -> [[a]]
subconjuntos [] = [[]]
subconjuntos (x:xs) = zss++[x:ys | ys <- zss]
    where zss = subconjuntos xs
divisores :: Int -> [Int]
divisores n = [x | x <- [1..n-1], mod n x == 0]


main :: IO ()
main = do
  let res = esSemiPerfecto 24
  putStrLn ("Semiperfecto: " ++ show res)