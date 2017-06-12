module OpenSolid.Point2d
    ( origin
    , coordinates
    , xCoordinate
    , yCoordinate
    , vectorFrom
    , distanceAlong
    ) where

import OpenSolid.Geometry.Types
import qualified OpenSolid.Vector2d as Vector2d
import {-# SOURCE #-} qualified OpenSolid.Axis2d as Axis2d


origin :: Point2d
origin =
    Point2d 0 0


coordinates :: Point2d -> ( Double, Double )
coordinates (Point2d x y) =
    ( x, y )


xCoordinate :: Point2d -> Double
xCoordinate (Point2d x _) =
    x


yCoordinate :: Point2d -> Double
yCoordinate (Point2d _ y) =
    y


vectorFrom :: Point2d -> Point2d -> Vector2d
vectorFrom (Point2d x1 y1) (Point2d x2 y2) =
    Vector2d (x2 - x1) (y2 - y1)


distanceAlong :: Axis2d -> Point2d -> Double
distanceAlong axis point =
    Vector2d.componentIn (Axis2d.direction axis)
        $ vectorFrom (Axis2d.originPoint axis) point
