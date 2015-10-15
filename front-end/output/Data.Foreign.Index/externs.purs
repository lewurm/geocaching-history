module Data.Foreign.Index (Index, errorAt, hasOwnProperty, hasProperty, (!), ix, index, prop) where
import Data.Foreign.Index ()
import Data.Function ()
import Data.Foreign ()
import Prelude ()
import Prim ()
import Prelude ()
import Data.Either ()
import Data.Foreign ()
import Data.Function ()
import Data.Int ()
--  | This type class identifies types wich act like _property indices_.
--  |
--  | The canonical instances are for `String`s and `Number`s.
--  | This type class identifies types wich act like _property indices_.
--  |
--  | The canonical instances are for `String`s and `Number`s.
infixl 9 !
--  | Attempt to read a value from a foreign value property
--  | This type class identifies types wich act like _property indices_.
--  |
--  | The canonical instances are for `String`s and `Number`s.
--  | An infix alias for `ix`.
--  | Attempt to read a value from a foreign value at the specified numeric index
--  | This type class identifies types wich act like _property indices_.
--  |
--  | The canonical instances are for `String`s and `Number`s.
--  | This type class identifies types wich act like _property indices_.
--  |
--  | The canonical instances are for `String`s and `Number`s.
--  | This type class identifies types wich act like _property indices_.
--  |
--  | The canonical instances are for `String`s and `Number`s.
class Index i where
  ix :: Data.Foreign.Foreign -> i -> Data.Foreign.F Data.Foreign.Foreign
  hasProperty :: i -> Data.Foreign.Foreign -> Prim.Boolean
  hasOwnProperty :: i -> Data.Foreign.Foreign -> Prim.Boolean
  errorAt :: i -> Data.Foreign.ForeignError -> Data.Foreign.ForeignError
foreign import (!) :: forall i. (Data.Foreign.Index.Index i) => Data.Foreign.Foreign -> i -> Data.Foreign.F Data.Foreign.Foreign
foreign import index :: Prim.Int -> Data.Foreign.Foreign -> Data.Foreign.F Data.Foreign.Foreign
foreign import prop :: Prim.String -> Data.Foreign.Foreign -> Data.Foreign.F Data.Foreign.Foreign
foreign import instance indexString :: Data.Foreign.Index.Index Prim.String
foreign import instance indexInt :: Data.Foreign.Index.Index Prim.Int