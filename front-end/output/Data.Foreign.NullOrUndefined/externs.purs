module Data.Foreign.NullOrUndefined (NullOrUndefined(NullOrUndefined), readNullOrUndefined, runNullOrUndefined) where
import Prelude ()
import Data.Foreign ()
import Prim ()
import Prelude ()
import Data.Maybe ()
import Data.Foreign ()
--  | A `newtype` wrapper whose `IsForeign` instance correctly handles
--  | null and undefined values.
--  |
--  | Conceptually, this type represents values which may be `null`
--  | or `undefined`.
--  | Unwrap a `NullOrUndefined` value
--  | Read a `NullOrUndefined` value
newtype NullOrUndefined (a :: *) = NullOrUndefined (Data.Maybe.Maybe a)
foreign import readNullOrUndefined :: forall a. (Data.Foreign.Foreign -> Data.Foreign.F a) -> Data.Foreign.Foreign -> Data.Foreign.F (Data.Foreign.NullOrUndefined.NullOrUndefined a)
foreign import runNullOrUndefined :: forall a. Data.Foreign.NullOrUndefined.NullOrUndefined a -> Data.Maybe.Maybe a