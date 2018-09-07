module OpenSolid.Point2d
    ( origin
    , withCoordinates
    , coordinates
    , xCoordinate
    , yCoordinate
    , distanceAlong
    ) where

import OpenSolid.Geometry.Types
import qualified OpenSolid.Geometry.Internal as Internal
import qualified OpenSolid.Vector2d as Vector2d


origin :: Point2d
origin =
    Internal.Point2d 0 0


withCoordinates :: ( Double, Double ) -> Point2d
withCoordinates ( x, y ) =
    Internal.Point2d x y


coordinates :: Point2d -> ( Double, Double )
coordinates (Internal.Point2d x y) =
    ( x, y )


xCoordinate :: Point2d -> Double
xCoordinate (Internal.Point2d x _) =
    x


yCoordinate :: Point2d -> Double
yCoordinate (Internal.Point2d _ y) =
    y


distanceAlong :: Axis2d -> Point2d -> Double
distanceAlong (Internal.Axis2d originPoint direction) point =
    Vector2d.componentIn direction (Vector2d.from originPoint point)
