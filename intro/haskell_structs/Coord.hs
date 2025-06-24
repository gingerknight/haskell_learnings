-- Coord.hs
module Coord (Coordinate(..), distance, scaleCoordinate) where

-- Record syntax creates named fields, similar to struct fields in C
-- Also, it is in a different file for reference in a func like a header file
data Coordinate = Coordinate
    { x :: Int
    , y :: Int
    , z :: Int
    } deriving (Show, Eq)

-- ScaleCoordinate multiplies Coor data by 'n'
scaleCoordinate :: Coordinate -> Int -> Coordinate
scaleCoordinate (Coordinate x y z) n = Coordinate (x * n) (y * n) (z * n)


-- Euclidian Distance Practical Example
distance :: Coordinate -> Coordinate -> Int
distance (Coordinate x1 y1 z1) (Coordinate x2 y2 z2) =
    (x2 - x1)^2 + (y2 - y1)^2 + (z2 - z1)^2
