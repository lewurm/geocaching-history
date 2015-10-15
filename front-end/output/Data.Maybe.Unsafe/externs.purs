module Data.Maybe.Unsafe (unsafeThrow, fromJust) where
import Data.Maybe.Unsafe ()
import Prim ()
import Prelude ()
import Data.Maybe ()
--  | A partial function that extracts the value from the `Just` data
--  | constructor. Passing `Nothing` to `fromJust` will throw an error at
--  | runtime.
foreign import unsafeThrow :: forall a. Prim.String -> a
foreign import fromJust :: forall a. Data.Maybe.Maybe a -> a