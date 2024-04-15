extremo :: Int -> [a] -> [a]
extremo n xs = take n xs ++ drop (length xs - n) xs

main :: IO ()
main = do
    let res = extremo 3 [2,6,7,1,2,4,5,8,9,2,3]
    putStrLn ("Extremos: " ++ show res)
