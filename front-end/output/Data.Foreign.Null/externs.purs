module Data.Foreign.Null (Null(Null), readNull, runNull) where
import Data.Foreign ()
import Prelude ()
import Prim ()
import Prelude ()
import Data.Maybe ()
import Data.Foreign ()
--  | A `newtype` wrapper whose `IsForeign` instance correctly handles
--  | null values.
--  |
--  | Conceptually, this type represents values which may be `null`,
--  | but not `undefined`.
--  | Unwrap a `Null` value
--  | Read a `Null` value
newtype Null (a :: *) = Null (Data.Maybe.Maybe a)
foreign import readNull :: forall a. (Data.Foreign.Foreign -> Data.Foreign.F a) -> Data.Foreign.Foreign -> Data.Foreign.F (Data.Foreign.Null.Null a)
foreign import runNull :: forall a. Data.Foreign.Null.Null a -> Data.Maybe.Maybe a