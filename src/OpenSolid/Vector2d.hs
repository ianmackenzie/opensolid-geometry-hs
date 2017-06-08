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
import {-# SOURCE #-} qualified OpenSolid.Direction2d as Direction2d


zero :: Vector2d
zero =
    Vector2d ( 0, 0 )


componentIn :: Direction2d -> Vector2d -> Float
componentIn direction vector =
    let
        ( dx, dy ) =
            Direction2d.components direction

        ( vx, vy ) =
            components vector
    in
    vx * dx + vy * dy


components :: Vector2d -> ( Float, Float )
components (Vector2d components_) =
    components_


xComponent :: Vector2d -> Float
xComponent (Vector2d ( x, _ )) =
    x


yComponent :: Vector2d -> Float
yComponent (Vector2d ( _, y )) =
    y


squaredLength :: Vector2d -> Float
squaredLength vector =
    let
        ( x, y ) =
            components vector
    in
    x * x + y * y


length :: Vector2d -> Float
length vector =
    sqrt (squaredLength vector)
