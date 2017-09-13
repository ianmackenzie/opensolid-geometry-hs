module OpenSolid.Vector2d
    ( zero
    , componentIn
    , components
    , xComponent
    , yComponent
    , squaredLength
    , length
    ) where

import Prelude hiding (length)
import OpenSolid.Geometry.Types


zero :: Vector2d
zero =
    Vector2d 0 0


componentIn :: Direction2d -> Vector2d -> Double
componentIn (Direction2d dx dy) (Vector2d vx vy) =
    vx * dx + vy * dy


components :: Vector2d -> ( Double, Double )
components (Vector2d x y) =
    ( x, y )


xComponent :: Vector2d -> Double
xComponent (Vector2d x _) =
    x


yComponent :: Vector2d -> Double
yComponent (Vector2d _ y) =
    y


squaredLength :: Vector2d -> Double
squaredLength (Vector2d x y) =
    x * x + y * y


length :: Vector2d -> Double
length vector =
    sqrt (squaredLength vector)
