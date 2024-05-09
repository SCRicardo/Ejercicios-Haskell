traspuesta :: [[a]] -> [[a]]
traspuesta [] = []
traspuesta ([]:xss) = traspuesta xss
traspuesta ((x:xs):xss) =
    (x:[h | (h:_) <- xss]) : traspuesta (xs : [t | (_:t) <- xss])


main :: IO ()
main = do
  let res = traspuesta [[1,4],[2,5],[3,6]]
  putStrLn ("Transpuestas: " ++ show res)