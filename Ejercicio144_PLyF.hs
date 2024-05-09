derivada :: Double -> (Double -> Double) -> Double -> Double
derivada a f x = (f(x+a)-f(x))/a

main :: IO ()
main = do
  let res = derivada 0.001 cos pi
  putStrLn ("Diferenciación: " ++ show res)