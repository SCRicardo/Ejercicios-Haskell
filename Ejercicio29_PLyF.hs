conjugado :: (Int, Int) -> (Int, Int)
conjugado (a,b) = (a,-b)

main :: IO ()
main = do
    let res =conjugado (2,3) 
    putStrLn ("Suma de complejos: " ++ show res)
