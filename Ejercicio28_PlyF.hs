productoComplejos :: (Int, Int) -> (Int, Int) -> (Int, Int)
productoComplejos (a,b) (c,d) = (a*c-b*d, a*d+b*c)

main :: IO ()
main = do
    let res =productoComplejos (2,3) (5,6) 
    putStrLn ("Suma de complejos: " ++ show res)
