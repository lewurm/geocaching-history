module Data.Nullable (Nullable(), toNullable, toMaybe) where
import Data.Maybe ()
import Data.Nullable ()
import Data.Function ()
import Prelude ()
import Prim ()
import Prelude ()
import Data.Maybe ()
import Data.Function ()
--  | A nullable type.
--  |
--  | This type constructor may be useful when interoperating with JavaScript functions
--  | which accept or return null values.
--  | The null value.
--  | Wrap a non-null value.
--  | Takes `Nothing` to `null`, and `Just a` to `a`.
--  | Represent `null` using `Maybe a` as `Nothing`. 
foreign import data Nullable :: * -> *
foreign import toNullable :: forall a. Data.Maybe.Maybe a -> Data.Nullable.Nullable a
foreign import toMaybe :: forall a. Data.Nullable.Nullable a -> Data.Maybe.Maybe a
foreign import instance showNullable :: (Prelude.Show a) => Prelude.Show (Data.Nullable.Nullable a)
foreign import instance eqNullable :: (Prelude.Eq a) => Prelude.Eq (Data.Nullable.Nullable a)
foreign import instance ordNullable :: (Prelude.Ord a) => Prelude.Ord (Data.Nullable.Nullable a)