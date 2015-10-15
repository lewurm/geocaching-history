module Data.Foreign (F(), ForeignError(TypeMismatch, ErrorAtIndex, ErrorAtProperty, JSONError), Foreign(), readArray, readInt, readNumber, readBoolean, readChar, readString, isArray, isUndefined, isNull, tagOf, typeOf, unsafeReadTagged, unsafeFromForeign, toForeign, parseJSON) where
import Prelude ()
import Data.Function ()
import Data.Foreign ()
import Data.Maybe ()
import Data.String ()
import Data.Either ()
import Data.Int ()
import Prim ()
import Prelude ()
import Data.Either ()
import Data.Maybe ()
import Data.Function ()
import Data.Int ()
import Data.Int ()
import Data.String ()
--  | A type for _foreign data_.
--  |
--  | Foreign data is data from any external _unknown_ or _unreliable_
--  | source, for which it cannot be guaranteed that the runtime representation
--  | conforms to that of any particular type.
--  |
--  | Suitable applications of `Foreign` are
--  |
--  | - To represent responses from web services
--  | - To integrate with external JavaScript libraries.
--  | A type for runtime type errors
--  | An error monad, used in this library to encode possible failure when
--  | dealing with foreign data.
--  | Coerce any value to the a `Foreign` value.
--  | Unsafely coerce a `Foreign` value.
--  | Read the Javascript _type_ of a value
--  | Read the Javascript _tag_ of a value.
--  |
--  | This function wraps the `Object.toString` method.
--  | Test whether a foreign value is null
--  | Test whether a foreign value is undefined
--  | Test whether a foreign value is an array
--  | Unsafely coerce a `Foreign` value when the value has a particular `tagOf`
--  | value.
--  | Attempt to coerce a foreign value to a `String`.
--  | Attempt to coerce a foreign value to a `Number`.
--  | Attempt to coerce a foreign value to an `Int`.
--  | Attempt to coerce a foreign value to a `Char`.
--  | Attempt to coerce a foreign value to a `Boolean`.
--  | Attempt to coerce a foreign value to an array.
--  | Attempt to parse a JSON string, returning the result as foreign data.
type F = Data.Either.Either Data.Foreign.ForeignError
data ForeignError = TypeMismatch Prim.String Prim.String | ErrorAtIndex Prim.Int Data.Foreign.ForeignError | ErrorAtProperty Prim.String Data.Foreign.ForeignError | JSONError Prim.String
foreign import data Foreign :: *
foreign import readArray :: Data.Foreign.Foreign -> Data.Foreign.F (Prim.Array Data.Foreign.Foreign)
foreign import readInt :: Data.Foreign.Foreign -> Data.Foreign.F Prim.Int
foreign import readNumber :: Data.Foreign.Foreign -> Data.Foreign.F Prim.Number
foreign import readBoolean :: Data.Foreign.Foreign -> Data.Foreign.F Prim.Boolean
foreign import readChar :: Data.Foreign.Foreign -> Data.Foreign.F Prim.Char
foreign import readString :: Data.Foreign.Foreign -> Data.Foreign.F Prim.String
foreign import isArray :: Data.Foreign.Foreign -> Prim.Boolean
foreign import isUndefined :: Data.Foreign.Foreign -> Prim.Boolean
foreign import isNull :: Data.Foreign.Foreign -> Prim.Boolean
foreign import tagOf :: Data.Foreign.Foreign -> Prim.String
foreign import typeOf :: Data.Foreign.Foreign -> Prim.String
foreign import unsafeReadTagged :: forall a. Prim.String -> Data.Foreign.Foreign -> Data.Foreign.F a
foreign import unsafeFromForeign :: forall a. Data.Foreign.Foreign -> a
foreign import toForeign :: forall a. a -> Data.Foreign.Foreign
foreign import parseJSON :: Prim.String -> Data.Foreign.F Data.Foreign.Foreign
foreign import instance showForeignError :: Prelude.Show Data.Foreign.ForeignError
foreign import instance eqForeignError :: Prelude.Eq Data.Foreign.ForeignError