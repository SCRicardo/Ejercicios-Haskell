sumaComplejos :: (Int, Int) -> (Int, Int) -> (Int, Int)
sumaComplejos (a,b) (c,d) = (a+c, b+d)

main :: IO ()
main = do
    let res =sumaComplejos (2,3) (5,6) 
    putStrLn ("Suma de complejos: " ++ show res)
