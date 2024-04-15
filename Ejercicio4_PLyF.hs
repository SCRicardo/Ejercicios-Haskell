areaCoronaCircular :: Float -> Float -> Float
areaCoronaCircular r1 r2 = pi * (r2^2 - r1^2)

main :: IO ()
main = do
    let res = areaCoronaCircular 3 5
    putStrLn ("El area de una corona circular es de: " ++ show res)
