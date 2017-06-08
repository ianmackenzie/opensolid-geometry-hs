module OpenSolid.Direction2d
    ( x
    , y
    , fromAngle
    , components
    ) where

import OpenSolid.Geometry.Types


x :: Direction2d
x =
    Direction2d ( 1, 0 )


y :: Direction2d
y =
    Direction2d ( 0, 1 )


fromAngle :: Float -> Direction2d
fromAngle angle =
    Direction2d ( cos angle, sin angle )


components :: Direction2d -> ( Float, Float )
components (Direction2d components_) =
    components_
