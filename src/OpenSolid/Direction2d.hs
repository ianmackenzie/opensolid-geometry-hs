module OpenSolid.Direction2d
    ( x
    , y
    , withPolarAngle
    , components
    ) where


import OpenSolid.Geometry.Types
import qualified OpenSolid.Geometry.Internal as Internal


x :: Direction2d
x =
    Internal.Direction2d 1 0


y :: Direction2d
y =
    Internal.Direction2d 0 1


withPolarAngle :: Double -> Direction2d
withPolarAngle angle =
    Internal.Direction2d (cos angle) (sin angle)


components :: Direction2d -> ( Double, Double )
components (Internal.Direction2d x y) =
    ( x, y )
