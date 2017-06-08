module OpenSolid.Axis2d
    ( x
    , y
    , originPoint
    , direction
    ) where

import OpenSolid.Geometry.Types (Axis2d(Axis2d), Point2d, Direction2d)
import qualified OpenSolid.Geometry.Types as Types
import qualified OpenSolid.Point2d as Point2d
import qualified OpenSolid.Direction2d as Direction2d


x :: Axis2d
x =
    Axis2d { originPoint = Point2d.origin, direction = Direction2d.x }


y :: Axis2d
y =
    Axis2d { originPoint = Point2d.origin, direction = Direction2d.y }


originPoint :: Axis2d -> Point2d
originPoint axis =
    Types.originPoint (axis :: Axis2d)


direction :: Axis2d -> Direction2d
direction axis =
    Types.direction (axis :: Axis2d)
