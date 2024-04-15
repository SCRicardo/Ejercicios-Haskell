segmento :: Int -> Int -> [a] -> [a]
segmento m n xs = drop (m-1) (take n xs)

main :: IO ()
main = do
    let res = segmento 3 6 [3,4,1,2,7,9,0]
    putStrLn ("Segmento: " ++ show res)
