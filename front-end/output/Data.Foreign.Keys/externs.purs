module Data.Foreign.Keys (keys) where
import Data.Foreign ()
import Prelude ()
import Data.Foreign.Keys ()
import Prim ()
import Prelude ()
import Data.Either ()
import Data.Foreign ()
--  | Get an array of the properties defined on a foreign value
foreign import keys :: Data.Foreign.Foreign -> Data.Foreign.F (Prim.Array Prim.String)