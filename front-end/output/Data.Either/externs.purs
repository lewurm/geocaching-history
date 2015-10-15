module Data.Either (Either(Left, Right), isRight, isLeft, either) where
import Data.Either ()
import Prelude ()
import Data.Monoid ()
import Prim ()
import Prelude ()
import Control.Alt ()
import Control.Extend ()
import Data.Bifoldable ()
import Data.Bifunctor ()
import Data.Bitraversable ()
import Data.Foldable ()
import Data.Monoid ()
import Data.Traversable ()
--  | The `Either` type is used to represent a choice between two types of value.
--  |
--  | A common use case for `Either` is error handling, where `Left` is used to
--  | carry an error value and `Right` is used to carry a success value.
--  | The `Functor` instance allows functions to transform the contents of a
--  | `Right` with the `<$>` operator:
--  |
--  | ``` purescript
--  | f <$> Right x == Right (f x)
--  | ```
--  |
--  | `Left` values are untouched:
--  |
--  | ``` purescript
--  | f <$> Left y == Left y
--  | ```
--  | The `Apply` instance allows functions contained within a `Right` to
--  | transform a value contained within a `Right` using the `(<*>)` operator:
--  |
--  | ``` purescript
--  | Right f <*> Right x == Right (f x)
--  | ```
--  |
--  | `Left` values are left untouched:
--  |
--  | ``` purescript
--  | Left f <*> Right x == Left x
--  | Right f <*> Left y == Left y
--  | ```
--  |
--  | Combining `Functor`'s `<$>` with `Apply`'s `<*>` can be used transform a
--  | pure function to take `Either`-typed arguments so `f :: a -> b -> c`
--  | becomes `f :: Either l a -> Either l b -> Either l c`:
--  |
--  | ``` purescript
--  | f <$> Right x <*> Right y == Right (f x y)
--  | ```
--  |
--  | The `Left`-preserving behaviour of both operators means the result of
--  | an expression like the above but where any one of the values is `Left`
--  | means the whole result becomes `Left` also, taking the first `Left` value
--  | found:
--  |
--  | ``` purescript
--  | f <$> Left x <*> Right y == Left x
--  | f <$> Right x <*> Left y == Left y
--  | f <$> Left x <*> Left y == Left x
--  | ```
--  | The `Applicative` instance enables lifting of values into `Either` with the
--  | `pure` or `return` function (`return` is an alias for `pure`):
--  |
--  | ``` purescript
--  | pure x :: Either _ _ == Right x
--  | return x :: Either _ _ == Right x
--  | ```
--  |
--  | Combining `Functor`'s `<$>` with `Apply`'s `<*>` and `Applicative`'s
--  | `pure` can be used to pass a mixture of `Either` and non-`Either` typed
--  | values to a function that does not usually expect them, by using `pure`
--  | for any value that is not already `Either` typed:
--  |
--  | ``` purescript
--  | f <$> Right x <*> pure y == Right (f x y)
--  | ```
--  |
--  | Even though `pure = Right` it is recommended to use `pure` in situations
--  | like this as it allows the choice of `Applicative` to be changed later
--  | without having to go through and replace `Right` with a new constructor.
--  | The `Alt` instance allows for a choice to be made between two `Either`
--  | values with the `<|>` operator, where the first `Right` encountered
--  | is taken.
--  |
--  | ``` purescript
--  | Right x <|> Right y == Right x
--  | Left x <|> Right y == Right y
--  | Left x <|> Left y == Left y
--  | ```
--  | The `Bind` instance allows sequencing of `Either` values and functions that
--  | return an `Either` by using the `>>=` operator:
--  |
--  | ``` purescript
--  | Left x >>= f = Left x
--  | Right x >>= f = f x
--  | ```
--  | The `Monad` instance guarantees that there are both `Applicative` and
--  | `Bind` instances for `Either`. This also enables the `do` syntactic sugar:
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
--  | The `Extend` instance allows sequencing of `Either` values and functions
--  | that accept an `Either` and return a non-`Either` result using the
--  | `<<=` operator.
--  |
--  | ``` purescript
--  | f <<= Left x = Left x
--  | f <<= Right x = Right (f x)
--  | ```
--  | The `Show` instance allows `Either` values to be rendered as a string with
--  | `show` whenever there is an `Show` instance for both type the `Either` can
--  | contain.
--  | The `Eq` instance allows `Either` values to be checked for equality with
--  | `==` and inequality with `/=` whenever there is an `Eq` instance for both
--  | types the `Either` can contain.
--  | The `Ord` instance allows `Either` values to be compared with
--  | `compare`, `>`, `>=`, `<` and `<=` whenever there is an `Ord` instance for
--  | both types the `Either` can contain.
--  |
--  | Any `Left` value is considered to be less than a `Right` value.
--  | The `Show` instance allows `Either` values to be rendered as a string with
--  | `show` whenever there is an `Show` instance for both type the `Either` can
--  | contain.
--  | The `Functor` instance allows functions to transform the contents of a
--  | `Right` with the `<$>` operator:
--  |
--  | ``` purescript
--  | f <$> Right x == Right (f x)
--  | ```
--  |
--  | `Left` values are untouched:
--  |
--  | ``` purescript
--  | f <$> Left y == Left y
--  | ```
--  | The `Extend` instance allows sequencing of `Either` values and functions
--  | that accept an `Either` and return a non-`Either` result using the
--  | `<<=` operator.
--  |
--  | ``` purescript
--  | f <<= Left x = Left x
--  | f <<= Right x = Right (f x)
--  | ```
--  | The `Eq` instance allows `Either` values to be checked for equality with
--  | `==` and inequality with `/=` whenever there is an `Eq` instance for both
--  | types the `Either` can contain.
--  | The `Ord` instance allows `Either` values to be compared with
--  | `compare`, `>`, `>=`, `<` and `<=` whenever there is an `Ord` instance for
--  | both types the `Either` can contain.
--  |
--  | Any `Left` value is considered to be less than a `Right` value.
--  | Takes two functions and an `Either` value, if the value is a `Left` the
--  | inner value is applied to the first function, if the value is a `Right`
--  | the inner value is applied to the second function.
--  |
--  | ``` purescript
--  | either f g (Left x) == f x
--  | either f g (Right y) == g y
--  | ```
--  | Returns `true` when the `Either` value was constructed with `Left`.
--  | Returns `true` when the `Either` value was constructed with `Right`.
--  | The `Apply` instance allows functions contained within a `Right` to
--  | transform a value contained within a `Right` using the `(<*>)` operator:
--  |
--  | ``` purescript
--  | Right f <*> Right x == Right (f x)
--  | ```
--  |
--  | `Left` values are left untouched:
--  |
--  | ``` purescript
--  | Left f <*> Right x == Left x
--  | Right f <*> Left y == Left y
--  | ```
--  |
--  | Combining `Functor`'s `<$>` with `Apply`'s `<*>` can be used transform a
--  | pure function to take `Either`-typed arguments so `f :: a -> b -> c`
--  | becomes `f :: Either l a -> Either l b -> Either l c`:
--  |
--  | ``` purescript
--  | f <$> Right x <*> Right y == Right (f x y)
--  | ```
--  |
--  | The `Left`-preserving behaviour of both operators means the result of
--  | an expression like the above but where any one of the values is `Left`
--  | means the whole result becomes `Left` also, taking the first `Left` value
--  | found:
--  |
--  | ``` purescript
--  | f <$> Left x <*> Right y == Left x
--  | f <$> Right x <*> Left y == Left y
--  | f <$> Left x <*> Left y == Left x
--  | ```
--  | The `Bind` instance allows sequencing of `Either` values and functions that
--  | return an `Either` by using the `>>=` operator:
--  |
--  | ``` purescript
--  | Left x >>= f = Left x
--  | Right x >>= f = f x
--  | ```
--  | The `Applicative` instance enables lifting of values into `Either` with the
--  | `pure` or `return` function (`return` is an alias for `pure`):
--  |
--  | ``` purescript
--  | pure x :: Either _ _ == Right x
--  | return x :: Either _ _ == Right x
--  | ```
--  |
--  | Combining `Functor`'s `<$>` with `Apply`'s `<*>` and `Applicative`'s
--  | `pure` can be used to pass a mixture of `Either` and non-`Either` typed
--  | values to a function that does not usually expect them, by using `pure`
--  | for any value that is not already `Either` typed:
--  |
--  | ``` purescript
--  | f <$> Right x <*> pure y == Right (f x y)
--  | ```
--  |
--  | Even though `pure = Right` it is recommended to use `pure` in situations
--  | like this as it allows the choice of `Applicative` to be changed later
--  | without having to go through and replace `Right` with a new constructor.
--  | The `Monad` instance guarantees that there are both `Applicative` and
--  | `Bind` instances for `Either`. This also enables the `do` syntactic sugar:
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
--  | The `Alt` instance allows for a choice to be made between two `Either`
--  | values with the `<|>` operator, where the first `Right` encountered
--  | is taken.
--  |
--  | ``` purescript
--  | Right x <|> Right y == Right x
--  | Left x <|> Right y == Right y
--  | Left x <|> Left y == Left y
--  | ```
data Either (a :: *) (b :: *) = Left a | Right b
foreign import isRight :: forall a b. Data.Either.Either a b -> Prim.Boolean
foreign import isLeft :: forall a b. Data.Either.Either a b -> Prim.Boolean
foreign import either :: forall a b c. (a -> c) -> (b -> c) -> Data.Either.Either a b -> c
foreign import instance functorEither :: Prelude.Functor (Data.Either.Either a)
foreign import instance bifunctorEither :: Data.Bifunctor.Bifunctor Data.Either.Either
foreign import instance applyEither :: Prelude.Apply (Data.Either.Either e)
foreign import instance applicativeEither :: Prelude.Applicative (Data.Either.Either e)
foreign import instance altEither :: Control.Alt.Alt (Data.Either.Either e)
foreign import instance bindEither :: Prelude.Bind (Data.Either.Either e)
foreign import instance monadEither :: Prelude.Monad (Data.Either.Either e)
foreign import instance extendEither :: Control.Extend.Extend (Data.Either.Either e)
foreign import instance showEither :: (Prelude.Show a, Prelude.Show b) => Prelude.Show (Data.Either.Either a b)
foreign import instance eqEither :: (Prelude.Eq a, Prelude.Eq b) => Prelude.Eq (Data.Either.Either a b)
foreign import instance ordEither :: (Prelude.Ord a, Prelude.Ord b) => Prelude.Ord (Data.Either.Either a b)
foreign import instance boundedEither :: (Prelude.Bounded a, Prelude.Bounded b) => Prelude.Bounded (Data.Either.Either a b)
foreign import instance foldableEither :: Data.Foldable.Foldable (Data.Either.Either a)
foreign import instance bifoldableEither :: Data.Bifoldable.Bifoldable Data.Either.Either
foreign import instance traversableEither :: Data.Traversable.Traversable (Data.Either.Either a)
foreign import instance bitraversableEither :: Data.Bitraversable.Bitraversable Data.Either.Either
foreign import instance semiringEither :: (Prelude.Semiring b) => Prelude.Semiring (Data.Either.Either a b)
foreign import instance semigroupEither :: (Prelude.Semigroup b) => Prelude.Semigroup (Data.Either.Either a b)