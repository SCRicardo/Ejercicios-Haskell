simetrico :: (Int, Int) -> (Int,Int)
simetrico (x,y) = (x,-y)

main :: IO ()
main = do
    let res = simetrico (2,-5) 
    putStrLn ("Punto simétrico: " ++ show res)
