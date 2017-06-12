module OpenSolid.Geometry.Types
    ( Point2d(..)
    , Point3d(..)
    , Vector2d(..)
    , Vector3d(..)
    , Direction2d(..)
    , Direction3d(..)
    , Axis2d(..)
    , Axis3d(..)
    ) where


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
    = Axis2d
        { originPoint :: !Point2d
        , direction :: !Direction2d
        } deriving (Eq, Show)


data Axis3d
    = Axis3d
        { originPoint :: !Point3d
        , direction :: !Direction3d
        } deriving (Eq, Show)
