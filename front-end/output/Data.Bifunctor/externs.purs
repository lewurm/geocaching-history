module Data.Bifunctor (Bifunctor, rmap, lmap, bimap) where
import Data.Bifunctor ()
import Prelude ()
import Prim ()
import Prelude ()
--  | A `Bifunctor` is a `Functor` from the pair category `(Type, Type)` to `Type`.
--  |
--  | A type constructor with two type arguments can be made into a `Bifunctor` if
--  | both of its type arguments are covariant.
--  |
--  | The `bimap` function maps a pair of functions over the two type arguments
--  | of the bifunctor.
--  |
--  | Laws:
--  |
--  | - Identity: `bimap id id == id`
--  | - Composition: `bimap f1 g1 <<< bimap f2 g2 == bimap (f1 <<< f2) (g1 <<< g2)`
--  |
--  | A `Bifunctor` is a `Functor` from the pair category `(Type, Type)` to `Type`.
--  |
--  | A type constructor with two type arguments can be made into a `Bifunctor` if
--  | both of its type arguments are covariant.
--  |
--  | The `bimap` function maps a pair of functions over the two type arguments
--  | of the bifunctor.
--  |
--  | Laws:
--  |
--  | - Identity: `bimap id id == id`
--  | - Composition: `bimap f1 g1 <<< bimap f2 g2 == bimap (f1 <<< f2) (g1 <<< g2)`
--  |
--  | A `Bifunctor` is a `Functor` from the pair category `(Type, Type)` to `Type`.
--  |
--  | A type constructor with two type arguments can be made into a `Bifunctor` if
--  | both of its type arguments are covariant.
--  |
--  | The `bimap` function maps a pair of functions over the two type arguments
--  | of the bifunctor.
--  |
--  | Laws:
--  |
--  | - Identity: `bimap id id == id`
--  | - Composition: `bimap f1 g1 <<< bimap f2 g2 == bimap (f1 <<< f2) (g1 <<< g2)`
--  |
--  | Map a function over the first type argument of a `Bifunctor`.
--  | Map a function over the second type arguments of a `Bifunctor`.
class Bifunctor f where
  bimap :: forall a b c d. (a -> b) -> (c -> d) -> f a c -> f b d
foreign import rmap :: forall f a b c. (Data.Bifunctor.Bifunctor f) => (b -> c) -> f a b -> f a c
foreign import lmap :: forall f a b c. (Data.Bifunctor.Bifunctor f) => (a -> b) -> f a c -> f b c