module Data.Maybe (Maybe(Nothing, Just), isNothing, isJust, fromMaybe', fromMaybe, maybe', maybe) where
import Prelude ()
import Data.Maybe ()
import Data.Functor.Invariant ()
import Prim ()
import Prelude ()
import Control.Alt ()
import Control.Alternative ()
import Control.Extend ()
import Control.MonadPlus ()
import Control.Plus ()
import Data.Functor.Invariant ()
import Data.Monoid ()
--  | The `Maybe` type is used to represent optional values and can be seen as
--  | something like a type-safe `null`, where `Nothing` is `null` and `Just x`
--  | is the non-null value `x`.
--  | The `Functor` instance allows functions to transform the contents of a
--  | `Just` with the `<$>` operator:
--  |
--  | ``` purescript
--  | f <$> Just x == Just (f x)
--  | ```
--  |
--  | `Nothing` values are left untouched:
--  |
--  | ``` purescript
--  | f <$> Nothing == Nothing
--  | ```
--  | The `Apply` instance allows functions contained within a `Just` to
--  | transform a value contained within a `Just` using the `apply` operator:
--  |
--  | ``` purescript
--  | Just f <*> Just x == Just (f x)
--  | ```
--  |
--  | `Nothing` values are left untouched:
--  |
--  | ``` purescript
--  | Just f <*> Nothing == Nothing
--  | Nothing <*> Just x == Nothing
--  | ```
--  |
--  | Combining `Functor`'s `<$>` with `Apply`'s `<*>` can be used transform a
--  | pure function to take `Maybe`-typed arguments so `f :: a -> b -> c`
--  | becomes `f :: Maybe a -> Maybe b -> Maybe c`:
--  |
--  | ``` purescript
--  | f <$> Just x <*> Just y == Just (f x y)
--  | ```
--  |
--  | The `Nothing`-preserving behaviour of both operators means the result of
--  | an expression like the above but where any one of the values is `Nothing`
--  | means the whole result becomes `Nothing` also:
--  |
--  | ``` purescript
--  | f <$> Nothing <*> Just y == Nothing
--  | f <$> Just x <*> Nothing == Nothing
--  | f <$> Nothing <*> Nothing == Nothing
--  | ```
--  | The `Applicative` instance enables lifting of values into `Maybe` with the
--  | `pure` or `return` function (`return` is an alias for `pure`):
--  |
--  | ``` purescript
--  | pure x :: Maybe _ == Just x
--  | return x :: Maybe _ == Just x
--  | ```
--  |
--  | Combining `Functor`'s `<$>` with `Apply`'s `<*>` and `Applicative`'s
--  | `pure` can be used to pass a mixture of `Maybe` and non-`Maybe` typed
--  | values to a function that does not usually expect them, by using `pure`
--  | for any value that is not already `Maybe` typed:
--  |
--  | ``` purescript
--  | f <$> Just x <*> pure y == Just (f x y)
--  | ```
--  |
--  | Even though `pure = Just` it is recommended to use `pure` in situations
--  | like this as it allows the choice of `Applicative` to be changed later
--  | without having to go through and replace `Just` with a new constructor.
--  | The `Alt` instance allows for a choice to be made between two `Maybe`
--  | values with the `<|>` operator, where the first `Just` encountered
--  | is taken.
--  |
--  | ``` purescript
--  | Just x <|> Just y == Just x
--  | Nothing <|> Just y == Just y
--  | Nothing <|> Nothing == Nothing
--  | ```
--  | The `Plus` instance provides a default `Maybe` value:
--  |
--  | ``` purescript
--  | empty :: Maybe _ == Nothing
--  | ```
--  | The `Alternative` instance guarantees that there are both `Applicative` and
--  | `Plus` instances for `Maybe`.
--  | The `Bind` instance allows sequencing of `Maybe` values and functions that
--  | return a `Maybe` by using the `>>=` operator:
--  |
--  | ``` purescript
--  | Just x >>= f = f x
--  | Nothing >>= f = Nothing
--  | ```
--  | The `Monad` instance guarantees that there are both `Applicative` and
--  | `Bind` instances for `Maybe`. This also enables the `do` syntactic sugar:
--  |
--  | ``` purescript
--  | do
--  |   x' <- x
--  |   y' <- y
--  |   pure (f x' y')
--  | ```
--  |
--  | Which is equivalent to:
--  |
--  | ``` purescript
--  | x >>= (\x' -> y >>= (\y' -> pure (f x' y')))
--  | ```
--  | The `MonadPlus` instance guarantees that there are both `Monad` and
--  | `Alternative` instances for `Maybe`.
--  | The `Extend` instance allows sequencing of `Maybe` values and functions
--  | that accept a `Maybe a` and return a non-`Maybe` result using the
--  | `<<=` operator.
--  |
--  | ``` purescript
--  | f <<= Nothing = Nothing
--  | f <<= Just x = Just (f x)
--  | ```
--  | The `Semigroup` instance enables use of the operator `<>` on `Maybe` values
--  | whenever there is a `Semigroup` instance for the type the `Maybe` contains.
--  | The exact behaviour of `<>` depends on the "inner" `Semigroup` instance,
--  | but generally captures the notion of appending or combining things.
--  |
--  | ``` purescript
--  | Just x <> Just y = Just (x <> y)
--  | Just x <> Nothing = Just x
--  | Nothing <> Just y = Just y
--  | Nothing <> Nothing = Nothing
--  | ```
--  | The `Eq` instance allows `Maybe` values to be checked for equality with
--  | `==` and inequality with `/=` whenever there is an `Eq` instance for the
--  | type the `Maybe` contains.
--  | The `Ord` instance allows `Maybe` values to be compared with
--  | `compare`, `>`, `>=`, `<` and `<=` whenever there is an `Ord` instance for
--  | the type the `Maybe` contains.
--  |
--  | `Nothing` is considered to be less than any `Just` value.
--  | The `Show` instance allows `Maybe` values to be rendered as a string with
--  | `show` whenever there is an `Show` instance for the type the `Maybe`
--  | contains.
--  | The `Show` instance allows `Maybe` values to be rendered as a string with
--  | `show` whenever there is an `Show` instance for the type the `Maybe`
--  | contains.
--  | The `Semigroup` instance enables use of the operator `<>` on `Maybe` values
--  | whenever there is a `Semigroup` instance for the type the `Maybe` contains.
--  | The exact behaviour of `<>` depends on the "inner" `Semigroup` instance,
--  | but generally captures the notion of appending or combining things.
--  |
--  | ``` purescript
--  | Just x <> Just y = Just (x <> y)
--  | Just x <> Nothing = Just x
--  | Nothing <> Just y = Just y
--  | Nothing <> Nothing = Nothing
--  | ```
--  | Similar to `maybe` but for use in cases where the default value may be
--  | expensive to compute. As PureScript is not lazy, the standard `maybe` has
--  | to evaluate the default value before returning the result, whereas here
--  | the value is only computed when the `Maybe` is known to be `Nothing`.
--  |
--  | ``` purescript
--  | maybe' (\_ -> x) f Nothing == x
--  | maybe' (\_ -> x) f (Just y) == f y
--  | ```
--  | Takes a default value, a function, and a `Maybe` value. If the `Maybe`
--  | value is `Nothing` the default value is returned, otherwise the function
--  | is applied to the value inside the `Just` and the result is returned.
--  |
--  | ``` purescript
--  | maybe x f Nothing == x
--  | maybe x f (Just y) == f y
--  | ```
--  | Returns `true` when the `Maybe` value is `Nothing`.
--  | Returns `true` when the `Maybe` value was constructed with `Just`.
--  | The `Functor` instance allows functions to transform the contents of a
--  | `Just` with the `<$>` operator:
--  |
--  | ``` purescript
--  | f <$> Just x == Just (f x)
--  | ```
--  |
--  | `Nothing` values are left untouched:
--  |
--  | ``` purescript
--  | f <$> Nothing == Nothing
--  | ```
--  | Similar to `fromMaybe` but for use in cases where the default value may be
--  | expensive to compute. As PureScript is not lazy, the standard `fromMaybe`
--  | has to evaluate the default value before returning the result, whereas here
--  | the value is only computed when the `Maybe` is known to be `Nothing`.
--  |
--  | ``` purescript
--  | fromMaybe' (\_ -> x) Nothing == x
--  | fromMaybe' (\_ -> x) (Just y) == y
--  | ```
--  | Takes a default value, and a `Maybe` value. If the `Maybe` value is
--  | `Nothing` the default value is returned, otherwise the value inside the
--  | `Just` is returned.
--  |
--  | ``` purescript
--  | fromMaybe x Nothing == x
--  | fromMaybe x (Just y) == y
--  | ```
--  | The `Extend` instance allows sequencing of `Maybe` values and functions
--  | that accept a `Maybe a` and return a non-`Maybe` result using the
--  | `<<=` operator.
--  |
--  | ``` purescript
--  | f <<= Nothing = Nothing
--  | f <<= Just x = Just (f x)
--  | ```
--  | The `Eq` instance allows `Maybe` values to be checked for equality with
--  | `==` and inequality with `/=` whenever there is an `Eq` instance for the
--  | type the `Maybe` contains.
--  | The `Ord` instance allows `Maybe` values to be compared with
--  | `compare`, `>`, `>=`, `<` and `<=` whenever there is an `Ord` instance for
--  | the type the `Maybe` contains.
--  |
--  | `Nothing` is considered to be less than any `Just` value.
--  | The `Apply` instance allows functions contained within a `Just` to
--  | transform a value contained within a `Just` using the `apply` operator:
--  |
--  | ``` purescript
--  | Just f <*> Just x == Just (f x)
--  | ```
--  |
--  | `Nothing` values are left untouched:
--  |
--  | ``` purescript
--  | Just f <*> Nothing == Nothing
--  | Nothing <*> Just x == Nothing
--  | ```
--  |
--  | Combining `Functor`'s `<$>` with `Apply`'s `<*>` can be used transform a
--  | pure function to take `Maybe`-typed arguments so `f :: a -> b -> c`
--  | becomes `f :: Maybe a -> Maybe b -> Maybe c`:
--  |
--  | ``` purescript
--  | f <$> Just x <*> Just y == Just (f x y)
--  | ```
--  |
--  | The `Nothing`-preserving behaviour of both operators means the result of
--  | an expression like the above but where any one of the values is `Nothing`
--  | means the whole result becomes `Nothing` also:
--  |
--  | ``` purescript
--  | f <$> Nothing <*> Just y == Nothing
--  | f <$> Just x <*> Nothing == Nothing
--  | f <$> Nothing <*> Nothing == Nothing
--  | ```
--  | The `Bind` instance allows sequencing of `Maybe` values and functions that
--  | return a `Maybe` by using the `>>=` operator:
--  |
--  | ``` purescript
--  | Just x >>= f = f x
--  | Nothing >>= f = Nothing
--  | ```
--  | The `Applicative` instance enables lifting of values into `Maybe` with the
--  | `pure` or `return` function (`return` is an alias for `pure`):
--  |
--  | ``` purescript
--  | pure x :: Maybe _ == Just x
--  | return x :: Maybe _ == Just x
--  | ```
--  |
--  | Combining `Functor`'s `<$>` with `Apply`'s `<*>` and `Applicative`'s
--  | `pure` can be used to pass a mixture of `Maybe` and non-`Maybe` typed
--  | values to a function that does not usually expect them, by using `pure`
--  | for any value that is not already `Maybe` typed:
--  |
--  | ``` purescript
--  | f <$> Just x <*> pure y == Just (f x y)
--  | ```
--  |
--  | Even though `pure = Just` it is recommended to use `pure` in situations
--  | like this as it allows the choice of `Applicative` to be changed later
--  | without having to go through and replace `Just` with a new constructor.
--  | The `Monad` instance guarantees that there are both `Applicative` and
--  | `Bind` instances for `Maybe`. This also enables the `do` syntactic sugar:
--  |
--  | ``` purescript
--  | do
--  |   x' <- x
--  |   y' <- y
--  |   pure (f x' y')
--  | ```
--  |
--  | Which is equivalent to:
--  |
--  | ``` purescript
--  | x >>= (\x' -> y >>= (\y' -> pure (f x' y')))
--  | ```
--  | The `Alt` instance allows for a choice to be made between two `Maybe`
--  | values with the `<|>` operator, where the first `Just` encountered
--  | is taken.
--  |
--  | ``` purescript
--  | Just x <|> Just y == Just x
--  | Nothing <|> Just y == Just y
--  | Nothing <|> Nothing == Nothing
--  | ```
--  | The `Plus` instance provides a default `Maybe` value:
--  |
--  | ``` purescript
--  | empty :: Maybe _ == Nothing
--  | ```
--  | The `Alternative` instance guarantees that there are both `Applicative` and
--  | `Plus` instances for `Maybe`.
--  | The `MonadPlus` instance guarantees that there are both `Monad` and
--  | `Alternative` instances for `Maybe`.
data Maybe (a :: *) = Nothing  | Just a
foreign import isNothing :: forall a. Data.Maybe.Maybe a -> Prim.Boolean
foreign import isJust :: forall a. Data.Maybe.Maybe a -> Prim.Boolean
foreign import fromMaybe' :: forall a. (Prelude.Unit -> a) -> Data.Maybe.Maybe a -> a
foreign import fromMaybe :: forall a. a -> Data.Maybe.Maybe a -> a
foreign import maybe' :: forall a b. (Prelude.Unit -> b) -> (a -> b) -> Data.Maybe.Maybe a -> b
foreign import maybe :: forall a b. b -> (a -> b) -> Data.Maybe.Maybe a -> b
foreign import instance functorMaybe :: Prelude.Functor Data.Maybe.Maybe
foreign import instance applyMaybe :: Prelude.Apply Data.Maybe.Maybe
foreign import instance applicativeMaybe :: Prelude.Applicative Data.Maybe.Maybe
foreign import instance altMaybe :: Control.Alt.Alt Data.Maybe.Maybe
foreign import instance plusMaybe :: Control.Plus.Plus Data.Maybe.Maybe
foreign import instance alternativeMaybe :: Control.Alternative.Alternative Data.Maybe.Maybe
foreign import instance bindMaybe :: Prelude.Bind Data.Maybe.Maybe
foreign import instance monadMaybe :: Prelude.Monad Data.Maybe.Maybe
foreign import instance monadPlusMaybe :: Control.MonadPlus.MonadPlus Data.Maybe.Maybe
foreign import instance extendMaybe :: Control.Extend.Extend Data.Maybe.Maybe
foreign import instance invariantMaybe :: Data.Functor.Invariant.Invariant Data.Maybe.Maybe
foreign import instance semigroupMaybe :: (Prelude.Semigroup a) => Prelude.Semigroup (Data.Maybe.Maybe a)
foreign import instance monoidMaybe :: (Prelude.Semigroup a) => Data.Monoid.Monoid (Data.Maybe.Maybe a)
foreign import instance semiringMaybe :: (Prelude.Semiring a) => Prelude.Semiring (Data.Maybe.Maybe a)
foreign import instance moduloSemiringMaybe :: (Prelude.ModuloSemiring a) => Prelude.ModuloSemiring (Data.Maybe.Maybe a)
foreign import instance ringMaybe :: (Prelude.Ring a) => Prelude.Ring (Data.Maybe.Maybe a)
foreign import instance divisionRingMaybe :: (Prelude.DivisionRing a) => Prelude.DivisionRing (Data.Maybe.Maybe a)
foreign import instance numMaybe :: (Prelude.Num a) => Prelude.Num (Data.Maybe.Maybe a)
foreign import instance eqMaybe :: (Prelude.Eq a) => Prelude.Eq (Data.Maybe.Maybe a)
foreign import instance ordMaybe :: (Prelude.Ord a) => Prelude.Ord (Data.Maybe.Maybe a)
foreign import instance boundedMaybe :: (Prelude.Bounded a) => Prelude.Bounded (Data.Maybe.Maybe a)
foreign import instance boundedOrdMaybe :: (Prelude.BoundedOrd a) => Prelude.BoundedOrd (Data.Maybe.Maybe a)
foreign import instance booleanAlgebraMaybe :: (Prelude.BooleanAlgebra a) => Prelude.BooleanAlgebra (Data.Maybe.Maybe a)
foreign import instance showMaybe :: (Prelude.Show a) => Prelude.Show (Data.Maybe.Maybe a)