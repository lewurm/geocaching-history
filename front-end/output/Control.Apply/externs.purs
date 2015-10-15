module Control.Apply (lift5, lift4, lift3, lift2, (*>), (<*)) where
import Prelude ()
import Prim ()
import Prelude ()
infixl 4 <*
infixl 4 *>
--  | Combine two effectful actions, keeping only the result of the first.
--  | Combine two effectful actions, keeping only the result of the second.
--  | Lift a function of five arguments to a function which accepts and returns
--  | values wrapped with the type constructor `f`.
--  | Lift a function of four arguments to a function which accepts and returns
--  | values wrapped with the type constructor `f`.
--  | Lift a function of three arguments to a function which accepts and returns
--  | values wrapped with the type constructor `f`.
--  | Lift a function of two arguments to a function which accepts and returns
--  | values wrapped with the type constructor `f`.
foreign import lift5 :: forall a b c d e f g. (Prelude.Apply f) => (a -> b -> c -> d -> e -> g) -> f a -> f b -> f c -> f d -> f e -> f g
foreign import lift4 :: forall a b c d e f. (Prelude.Apply f) => (a -> b -> c -> d -> e) -> f a -> f b -> f c -> f d -> f e
foreign import lift3 :: forall a b c d f. (Prelude.Apply f) => (a -> b -> c -> d) -> f a -> f b -> f c -> f d
foreign import lift2 :: forall a b c f. (Prelude.Apply f) => (a -> b -> c) -> f a -> f b -> f c
foreign import (*>) :: forall a b f. (Prelude.Apply f) => f a -> f b -> f b
foreign import (<*) :: forall a b f. (Prelude.Apply f) => f a -> f b -> f a