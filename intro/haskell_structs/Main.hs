-- Main func for Coord.hs
import qualified Coord

main :: IO ()
main = do
    putStrLn "Multiplying Coordinates data..."
    let scaled = Coord.scaleCoordinate (Coord.Coordinate 1 2 3) 5
    putStrLn $ "Scaled coordinate: " ++ show scaled

    let point1 = Coord.Coordinate 1 2 3
    let point2 = Coord.Coordinate 10 11 12
    let dist = Coord.distance point1 point2
    putStrLn $ "Distance squared: " ++ show dist

