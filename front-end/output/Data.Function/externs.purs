module Data.Function (Fn10(), Fn9(), Fn8(), Fn7(), Fn6(), Fn5(), Fn4(), Fn3(), Fn2(), Fn1(), Fn0(), runFn10, runFn9, runFn8, runFn7, runFn6, runFn5, runFn4, runFn3, runFn2, runFn1, runFn0, mkFn10, mkFn9, mkFn8, mkFn7, mkFn6, mkFn5, mkFn4, mkFn3, mkFn2, mkFn1, mkFn0, on) where
import Prim ()
import Prelude ()
--  | A function of zero arguments
--  | A function of one argument
--  | A function of two arguments
--  | A function of three arguments
--  | A function of four arguments
--  | A function of five arguments
--  | A function of six arguments
--  | A function of seven arguments
--  | A function of eight arguments
--  | A function of nine arguments
--  | A function of ten arguments
--  | Create a function of no arguments
--  | Create a function of one argument
--  | Create a function of two arguments from a curried function
--  | Create a function of three arguments from a curried function
--  | Create a function of four arguments from a curried function
--  | Create a function of five arguments from a curried function
--  | Create a function of six arguments from a curried function
--  | Create a function of seven arguments from a curried function
--  | Create a function of eight arguments from a curried function
--  | Create a function of nine arguments from a curried function
--  | Create a function of ten arguments from a curried function
--  | Apply a function of no arguments
--  | Apply a function of one argument
--  | Apply a function of two arguments
--  | Apply a function of three arguments
--  | Apply a function of four arguments
--  | Apply a function of five arguments
--  | Apply a function of six arguments
--  | Apply a function of seven arguments
--  | Apply a function of eight arguments
--  | Apply a function of nine arguments
--  | Apply a function of ten arguments
--  | The `on` function is used to change the domain of a binary operator.
--  |
--  | For example, we can create a function which compares two records based on the values of their `x` properties:
--  |
--  | ```purescript
--  | compareX :: forall r. { x :: Number | r } -> { x :: Number | r } -> Ordering
--  | compareX = compare `on` _.x
--  | ```
foreign import data Fn10 :: * -> * -> * -> * -> * -> * -> * -> * -> * -> * -> * -> *
foreign import data Fn9 :: * -> * -> * -> * -> * -> * -> * -> * -> * -> * -> *
foreign import data Fn8 :: * -> * -> * -> * -> * -> * -> * -> * -> * -> *
foreign import data Fn7 :: * -> * -> * -> * -> * -> * -> * -> * -> *
foreign import data Fn6 :: * -> * -> * -> * -> * -> * -> * -> *
foreign import data Fn5 :: * -> * -> * -> * -> * -> * -> *
foreign import data Fn4 :: * -> * -> * -> * -> * -> *
foreign import data Fn3 :: * -> * -> * -> * -> *
foreign import data Fn2 :: * -> * -> * -> *
foreign import data Fn1 :: * -> * -> *
foreign import data Fn0 :: * -> *
foreign import runFn10 :: forall a b c d e f g h i j k. Data.Function.Fn10 a b c d e f g h i j k -> a -> b -> c -> d -> e -> f -> g -> h -> i -> j -> k
foreign import runFn9 :: forall a b c d e f g h i j. Data.Function.Fn9 a b c d e f g h i j -> a -> b -> c -> d -> e -> f -> g -> h -> i -> j
foreign import runFn8 :: forall a b c d e f g h i. Data.Function.Fn8 a b c d e f g h i -> a -> b -> c -> d -> e -> f -> g -> h -> i
foreign import runFn7 :: forall a b c d e f g h. Data.Function.Fn7 a b c d e f g h -> a -> b -> c -> d -> e -> f -> g -> h
foreign import runFn6 :: forall a b c d e f g. Data.Function.Fn6 a b c d e f g -> a -> b -> c -> d -> e -> f -> g
foreign import runFn5 :: forall a b c d e f. Data.Function.Fn5 a b c d e f -> a -> b -> c -> d -> e -> f
foreign import runFn4 :: forall a b c d e. Data.Function.Fn4 a b c d e -> a -> b -> c -> d -> e
foreign import runFn3 :: forall a b c d. Data.Function.Fn3 a b c d -> a -> b -> c -> d
foreign import runFn2 :: forall a b c. Data.Function.Fn2 a b c -> a -> b -> c
foreign import runFn1 :: forall a b. Data.Function.Fn1 a b -> a -> b
foreign import runFn0 :: forall a. Data.Function.Fn0 a -> a
foreign import mkFn10 :: forall a b c d e f g h i j k. (a -> b -> c -> d -> e -> f -> g -> h -> i -> j -> k) -> Data.Function.Fn10 a b c d e f g h i j k
foreign import mkFn9 :: forall a b c d e f g h i j. (a -> b -> c -> d -> e -> f -> g -> h -> i -> j) -> Data.Function.Fn9 a b c d e f g h i j
foreign import mkFn8 :: forall a b c d e f g h i. (a -> b -> c -> d -> e -> f -> g -> h -> i) -> Data.Function.Fn8 a b c d e f g h i
foreign import mkFn7 :: forall a b c d e f g h. (a -> b -> c -> d -> e -> f -> g -> h) -> Data.Function.Fn7 a b c d e f g h
foreign import mkFn6 :: forall a b c d e f g. (a -> b -> c -> d -> e -> f -> g) -> Data.Function.Fn6 a b c d e f g
foreign import mkFn5 :: forall a b c d e f. (a -> b -> c -> d -> e -> f) -> Data.Function.Fn5 a b c d e f
foreign import mkFn4 :: forall a b c d e. (a -> b -> c -> d -> e) -> Data.Function.Fn4 a b c d e
foreign import mkFn3 :: forall a b c d. (a -> b -> c -> d) -> Data.Function.Fn3 a b c d
foreign import mkFn2 :: forall a b c. (a -> b -> c) -> Data.Function.Fn2 a b c
foreign import mkFn1 :: forall a b. (a -> b) -> Data.Function.Fn1 a b
foreign import mkFn0 :: forall a. (Prelude.Unit -> a) -> Data.Function.Fn0 a
foreign import on :: forall a b c. (b -> b -> c) -> (a -> b) -> a -> a -> c