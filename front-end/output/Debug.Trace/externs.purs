module Debug.Trace (traceShowM, traceAnyM, traceShowA, traceA, traceAnyA, traceAny, traceShow, trace) where
import Debug.Trace ()
import Prelude ()
import Prim ()
import Prelude ()
--  | Log any PureScript value to the console for debugging purposes and then
--  | return a value. This will log the value's underlying representation for
--  | low-level debugging.
--  | Same as `traceAnyM` but only for `Show`able values
--  | Log a `Show`able value to the console for debugging purposes and then
--  | return a value.
--  | Log any PureScript value to the console and return it in `Monad`
--  | useful when one has monadic chains
--  | ```purescript
--  | mbArray :: Maybe (Array Int)
--  | foo :: Int
--  | foo = fromMaybe zero
--  |   $ mbArray
--  |   >>= traceAnyM
--  |   >>= head
--  |   >>= traceAnyM
--  | ```
--  | Log any PureScript value to the console and return the unit value of the
--  | Applicative `a`.
--  | Log a `Show`able value to the console for debugging purposes and then
--  | return the unit value of the Applicative `a`.
--  | Log a message to the console for debugging purposes and then return the
--  | unit value of the Applicative `a`.
--  |
--  | For example:
--  | ``` purescript
--  | doSomething = do
--  |   traceA "Hello"
--  |   ... some value or computation ...
--  | ```
--  | Log a message to the console for debugging purposes and then return a
--  | value. The return value is thunked so it is not evaluated until after the
--  | message has been printed, to preserve a predictable console output.
--  |
--  | For example:
--  | ``` purescript
--  | doSomething = trace "Hello" \_ -> ... some value or computation ...
--  | ```
foreign import traceShowM :: forall m a. (Prelude.Show a, Prelude.Monad m) => a -> m a
foreign import traceAnyM :: forall m a. (Prelude.Monad m) => a -> m a
foreign import traceShowA :: forall a b. (Prelude.Show b, Prelude.Applicative a) => b -> a Prelude.Unit
foreign import traceA :: forall a. (Prelude.Applicative a) => Prim.String -> a Prelude.Unit
foreign import traceAnyA :: forall a b. (Prelude.Applicative a) => b -> a Prelude.Unit
foreign import traceAny :: forall a b. a -> (Prelude.Unit -> b) -> b
foreign import traceShow :: forall a b. (Prelude.Show a) => a -> (Prelude.Unit -> b) -> b
foreign import trace :: forall a. Prim.String -> (Prelude.Unit -> a) -> a