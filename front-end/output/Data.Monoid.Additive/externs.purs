module Data.Monoid.Additive (Additive(Additive), runAdditive) where
import Prelude ()
import Data.Monoid.Additive ()
import Prim ()
import Prelude ()
import Control.Comonad ()
import Control.Extend ()
import Data.Functor.Invariant ()
import Data.Monoid ()
--  | Monoid and semigroup for semirings under addition.
--  |
--  | ``` purescript
--  | Additive x <> Additive y == Additive (x + y)
--  | mempty :: Additive _ == Additive zero
--  | ```
newtype Additive (a :: *) = Additive a
foreign import runAdditive :: forall a. Data.Monoid.Additive.Additive a -> a
foreign import instance eqAdditive :: (Prelude.Eq a) => Prelude.Eq (Data.Monoid.Additive.Additive a)
foreign import instance ordAdditive :: (Prelude.Ord a) => Prelude.Ord (Data.Monoid.Additive.Additive a)
foreign import instance functorAdditive :: Prelude.Functor Data.Monoid.Additive.Additive
foreign import instance applyAdditive :: Prelude.Apply Data.Monoid.Additive.Additive
foreign import instance applicativeAdditive :: Prelude.Applicative Data.Monoid.Additive.Additive
foreign import instance bindAdditive :: Prelude.Bind Data.Monoid.Additive.Additive
foreign import instance monadAdditive :: Prelude.Monad Data.Monoid.Additive.Additive
foreign import instance extendAdditive :: Control.Extend.Extend Data.Monoid.Additive.Additive
foreign import instance comonadAdditive :: Control.Comonad.Comonad Data.Monoid.Additive.Additive
foreign import instance invariantAdditive :: Data.Functor.Invariant.Invariant Data.Monoid.Additive.Additive
foreign import instance showAdditive :: (Prelude.Show a) => Prelude.Show (Data.Monoid.Additive.Additive a)
foreign import instance semigroupAdditive :: (Prelude.Semiring a) => Prelude.Semigroup (Data.Monoid.Additive.Additive a)
foreign import instance monoidAdditive :: (Prelude.Semiring a) => Data.Monoid.Monoid (Data.Monoid.Additive.Additive a)