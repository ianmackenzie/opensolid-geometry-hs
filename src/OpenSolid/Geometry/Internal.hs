module OpenSolid.Geometry.Internal where


data Point2d
    = Point2d
        {-# UNPACK #-} !Double
        {-# UNPACK #-} !Double
        deriving (Eq, Show)


data Point3d
    = Point3d
        {-# UNPACK #-} !Double
        {-# UNPACK #-} !Double
        {-# UNPACK #-} !Double
        deriving (Eq, Show)


data Vector2d
    = Vector2d
        {-# UNPACK #-} !Double
        {-# UNPACK #-} !Double
        deriving (Eq, Show)


data Vector3d
    = Vector3d
        {-# UNPACK #-} !Double
        {-# UNPACK #-} !Double
        {-# UNPACK #-} !Double
        deriving (Eq, Show)


data Direction2d
    = Direction2d
        {-# UNPACK #-} !Double
        {-# UNPACK #-} !Double
        deriving (Eq, Show)


data Direction3d
    = Direction3d
        {-# UNPACK #-} !Double
        {-# UNPACK #-} !Double
        {-# UNPACK #-} !Double
        deriving (Eq, Show)


data Axis2d
    = Axis2d Point2d Direction2d
        deriving (Eq, Show)


data Axis3d
    = Axis3d Point3d Direction3d
        deriving (Eq, Show)
