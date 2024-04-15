volumenEsfera :: Float -> Float
volumenEsfera r = (4/3) * pi * r^3

main :: IO ()
main = do
    let res = volumenEsfera 10
    putStrLn ("El volumen de la esfera es de: " ++ show res)

