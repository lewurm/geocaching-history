module Data.Foreign.Undefined (Undefined(Undefined), readUndefined, runUndefined) where
import Data.Foreign ()
import Prelude ()
import Prim ()
import Prelude ()
import Data.Maybe ()
import Data.Foreign ()
--  | A `newtype` wrapper whose `IsForeign` instance correctly handles
--  | undefined values.
--  |
--  | Conceptually, this type represents values which may be `undefined`,
--  | but not `null`.
--  | Unwrap an `Undefined` value
--  | Read an `Undefined` value
newtype Undefined (a :: *) = Undefined (Data.Maybe.Maybe a)
foreign import readUndefined :: forall a. (Data.Foreign.Foreign -> Data.Foreign.F a) -> Data.Foreign.Foreign -> Data.Foreign.F (Data.Foreign.Undefined.Undefined a)
foreign import runUndefined :: forall a. Data.Foreign.Undefined.Undefined a -> Data.Maybe.Maybe a