module OpenSolid.Vector2d
    ( zero
    , withComponents
    , from
    , components
    , componentIn
    , xComponent
    , yComponent
    , squaredLength
    , length
    ) where

import Prelude hiding (length)
import OpenSolid.Geometry.Types
import qualified OpenSolid.Geometry.Internal as Internal


zero :: Vector2d
zero =
    Internal.Vector2d 0 0


withComponents :: ( Double, Double ) -> Vector2d
withComponents ( x, y ) =
    Internal.Vector2d x y


from :: Point2d -> Point2d -> Vector2d
from (Internal.Point2d x1 y1) (Internal.Point2d x2 y2) =
    Internal.Vector2d (x2 - x1) (y2 - y1)


components :: Vector2d -> ( Double, Double )
components (Internal.Vector2d x y) =
    ( x, y )


componentIn :: Direction2d -> Vector2d -> Double
componentIn (Internal.Direction2d dx dy) (Internal.Vector2d vx vy) =
    vx * dx + vy * dy


xComponent :: Vector2d -> Double
xComponent (Internal.Vector2d x _) =
    x


yComponent :: Vector2d -> Double
yComponent (Internal.Vector2d _ y) =
    y


squaredLength :: Vector2d -> Double
squaredLength (Internal.Vector2d x y) =
    x * x + y * y


length :: Vector2d -> Double
length vector =
    sqrt (squaredLength vector)
