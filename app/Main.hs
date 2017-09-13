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
    print (Point2d.distanceAlong testAxis $ Point2d 1 1)
    print (Vector2d.componentIn Direction2d.y $ Vector2d 3 4)
