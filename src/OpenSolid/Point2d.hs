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
    Point2d ( 0, 0 )


coordinates :: Point2d -> ( Float, Float )
coordinates (Point2d coordinates_) =
    coordinates_


xCoordinate :: Point2d -> Float
xCoordinate (Point2d ( x, _ )) =
    x


yCoordinate :: Point2d -> Float
yCoordinate (Point2d ( _, y )) =
    y


vectorFrom :: Point2d -> Point2d -> Vector2d
vectorFrom firstPoint secondPoint =
    let
        ( x1, y1 ) =
            coordinates firstPoint

        ( x2, y2 ) =
            coordinates secondPoint
    in
    Vector2d ( x2 - x1, y2 - y1 )


distanceAlong :: Axis2d -> Point2d -> Float
distanceAlong axis point =
    Vector2d.componentIn (Axis2d.direction axis) $ vectorFrom (Axis2d.originPoint axis) point
