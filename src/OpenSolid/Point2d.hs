module OpenSolid.Point2d
    ( origin
    , withCoordinates
    , coordinates
    , xCoordinate
    , yCoordinate
    , distanceAlong
    ) where

import OpenSolid.Geometry.Types
import qualified OpenSolid.Vector2d as Vector2d
import {-# SOURCE #-} qualified OpenSolid.Axis2d as Axis2d


origin :: Point2d
origin =
    Point2d 0 0


withCoordinates :: ( Double, Double ) -> Point2d
withCoordinates ( x, y ) =
    Point2d x y


coordinates :: Point2d -> ( Double, Double )
coordinates (Point2d x y) =
    ( x, y )


xCoordinate :: Point2d -> Double
xCoordinate (Point2d x _) =
    x


yCoordinate :: Point2d -> Double
yCoordinate (Point2d _ y) =
    y


distanceAlong :: Axis2d -> Point2d -> Double
distanceAlong axis point =
    Vector2d.componentIn (Axis2d.direction axis) $
        Vector2d.from (Axis2d.originPoint axis) point
