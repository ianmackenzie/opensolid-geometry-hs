module OpenSolid.Axis2d
    ( x
    , y
    , with
    , OriginPoint(..)
    , Direction(..)
    , originPoint
    , direction
    ) where

import OpenSolid.Geometry.Types
import qualified OpenSolid.Geometry.Internal as Internal
import qualified OpenSolid.Point2d as Point2d
import qualified OpenSolid.Direction2d as Direction2d


x :: Axis2d
x =
    Internal.Axis2d Point2d.origin Direction2d.x


y :: Axis2d
y =
    Internal.Axis2d Point2d.origin Direction2d.y


with :: ( OriginPoint, Direction ) -> Axis2d
with ( OriginPoint originPoint, Direction direction ) =
    Internal.Axis2d originPoint direction


newtype OriginPoint
    = OriginPoint Point2d


newtype Direction
    = Direction Direction2d


originPoint :: Axis2d -> Point2d
originPoint (Internal.Axis2d originPoint _) =
    originPoint


direction :: Axis2d -> Direction2d
direction (Internal.Axis2d _ direction) =
    direction
