finales :: Int -> [a] -> [a]
finales n xs = drop (length xs - n) xs

main :: IO ()
main = do
    let res = finales 3 [6,7,8,9]
    putStrLn ("Finales: " ++ show res)
