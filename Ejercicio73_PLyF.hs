aproximaPiC n = sqrt(6*sum [1/x^2 | x <- [1..n]])

main :: IO ()
main = do
  let res =  aproximaPiC 1000
  putStrLn ("Aproximacion del numero PI: " ++ show res)