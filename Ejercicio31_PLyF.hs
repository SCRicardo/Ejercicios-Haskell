replica :: Int -> a -> [a]
replica n x = [x | _ <- [1..n]]


main :: IO ()
main = do
    let res = replica 3 True
    putStrLn ("La replica es: " ++ show res)