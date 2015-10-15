module Data.Unfoldable (Unfoldable, singleton, none, replicateA, replicate, unfoldr) where
import Control.Monad.Eff ()
import Data.Array.ST ()
import Prelude ()
import Control.Monad.ST ()
import Data.Unfoldable ()
import Data.Traversable ()
import Prim ()
import Prelude ()
import Data.Maybe ()
import Data.Tuple ()
import Data.Array.ST ()
import Data.Traversable ()
import Control.Monad.Eff ()
import Control.Monad.ST ()
--  | This class identifies data structures which can be _unfolded_,
--  | generalizing `unfoldr` on arrays.
--  |
--  | The generating function `f` in `unfoldr f` in understood as follows:
--  |
--  | - If `f b` is `Nothing`, then `unfoldr f b` should be empty.
--  | - If `f b` is `Just (Tuple a b1)`, then `unfoldr f b` should consist of `a`
--  |   appended to the result of `unfoldr f b1`.
--  | This class identifies data structures which can be _unfolded_,
--  | generalizing `unfoldr` on arrays.
--  |
--  | The generating function `f` in `unfoldr f` in understood as follows:
--  |
--  | - If `f b` is `Nothing`, then `unfoldr f b` should be empty.
--  | - If `f b` is `Just (Tuple a b1)`, then `unfoldr f b` should consist of `a`
--  |   appended to the result of `unfoldr f b1`.
--  | This class identifies data structures which can be _unfolded_,
--  | generalizing `unfoldr` on arrays.
--  |
--  | The generating function `f` in `unfoldr f` in understood as follows:
--  |
--  | - If `f b` is `Nothing`, then `unfoldr f b` should be empty.
--  | - If `f b` is `Just (Tuple a b1)`, then `unfoldr f b` should consist of `a`
--  |   appended to the result of `unfoldr f b1`.
--  | Replicate a value some natural number of times.
--  | For example:
--  |
--  | ~~~ purescript
--  | replicate 2 "foo" == ["foo", "foo"] :: Array String
--  | ~~~
--  | Perform an Applicative action `n` times, and accumulate all the results.
--  | Contain a single value.
--  | For example:
--  |
--  | ~~~ purescript
--  | singleton "foo" == ["foo"] :: Array String
--  | ~~~
--  | The container with no elements - unfolded with zero iterations.
--  | For example:
--  |
--  | ~~~ purescript
--  | none == [] :: forall a. Array a
--  | ~~~
class Unfoldable t where
  unfoldr :: forall a b. (b -> Data.Maybe.Maybe (Data.Tuple.Tuple a b)) -> b -> t a
foreign import singleton :: forall f a. (Data.Unfoldable.Unfoldable f) => a -> f a
foreign import none :: forall f a. (Data.Unfoldable.Unfoldable f) => f a
foreign import replicateA :: forall m f a. (Prelude.Applicative m, Data.Unfoldable.Unfoldable f, Data.Traversable.Traversable f) => Prim.Int -> m a -> m (f a)
foreign import replicate :: forall f a. (Data.Unfoldable.Unfoldable f) => Prim.Int -> a -> f a
foreign import instance unfoldableArray :: Data.Unfoldable.Unfoldable Prim.Array