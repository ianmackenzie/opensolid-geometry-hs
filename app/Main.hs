module Main where

import OpenSolid.Geometry.Types
import qualified OpenSolid.Point2d as Point2d
import qualified OpenSolid.Vector2d as Vector2d
import qualified OpenSolid.Direction2d as Direction2d
import qualified OpenSolid.Axis2d as Axis2d


testAxis :: Axis2d
testAxis =
    Axis2d.with
        (Axis2d.OriginPoint Point2d.origin)
        (Axis2d.Direction (Direction2d.withPolarAngle (pi / 4)))


main :: IO ()
main = do
    let point = Point2d.withCoordinates ( 1, 1 )
    let vector = Vector2d.withComponents ( 3, 4 )
    print (Point2d.distanceAlong testAxis point)
    print (Vector2d.componentIn Direction2d.y vector)
