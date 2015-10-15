module Data.Enum (Cardinality(Cardinality), Enum, enumFromThenTo, enumFromTo, intStepFromTo, intFromTo, defaultFromEnum, defaultToEnum, defaultPred, defaultSucc, toEnum, succ, runCardinality, pred, fromEnum, cardinality) where
import Prelude ()
import Data.Enum ()
import Data.Maybe ()
import Data.Maybe.Unsafe ()
import Data.Unfoldable ()
import Data.Char ()
import Prim ()
import Prelude ()
import Data.Char ()
import Data.Either ()
import Data.Maybe ()
import Data.Maybe.Unsafe ()
import Data.Tuple ()
import Data.Unfoldable ()
--  | Type class for enumerations. This should not be considered a part of a
--  | numeric hierarchy, ala Haskell. Rather, this is a type class for small,
--  | ordered sum types with statically-determined cardinality and the ability
--  | to easily compute successor and predecessor elements. e.g. `DayOfWeek`, etc.
--  |
--  | Laws:
--  |
--  | - ```succ bottom >>= succ >>= succ ... succ [cardinality - 1 times] == top```
--  | - ```pred top    >>= pred >>= pred ... pred [cardinality - 1 times] == bottom```
--  | - ```e1 `compare` e2 == fromEnum e1 `compare` fromEnum e2```
--  | - ```forall a > bottom: pred a >>= succ == Just a```
--  | - ```forall a < top:  succ a >>= pred == Just a```
--  | - ```pred >=> succ >=> pred = pred```
--  | - ```succ >=> pred >=> succ = succ```
--  | - ```toEnum (fromEnum a) = Just a```
--  | - ```forall a > bottom: fromEnum <$> pred a = Just (fromEnum a - 1)```
--  | - ```forall a < top:  fromEnum <$> succ a = Just (fromEnum a + 1)```
--  | Type class for enumerations. This should not be considered a part of a
--  | numeric hierarchy, ala Haskell. Rather, this is a type class for small,
--  | ordered sum types with statically-determined cardinality and the ability
--  | to easily compute successor and predecessor elements. e.g. `DayOfWeek`, etc.
--  |
--  | Laws:
--  |
--  | - ```succ bottom >>= succ >>= succ ... succ [cardinality - 1 times] == top```
--  | - ```pred top    >>= pred >>= pred ... pred [cardinality - 1 times] == bottom```
--  | - ```e1 `compare` e2 == fromEnum e1 `compare` fromEnum e2```
--  | - ```forall a > bottom: pred a >>= succ == Just a```
--  | - ```forall a < top:  succ a >>= pred == Just a```
--  | - ```pred >=> succ >=> pred = pred```
--  | - ```succ >=> pred >=> succ = succ```
--  | - ```toEnum (fromEnum a) = Just a```
--  | - ```forall a > bottom: fromEnum <$> pred a = Just (fromEnum a - 1)```
--  | - ```forall a < top:  fromEnum <$> succ a = Just (fromEnum a + 1)```
--  | ## Instances
--  | Type class for enumerations. This should not be considered a part of a
--  | numeric hierarchy, ala Haskell. Rather, this is a type class for small,
--  | ordered sum types with statically-determined cardinality and the ability
--  | to easily compute successor and predecessor elements. e.g. `DayOfWeek`, etc.
--  |
--  | Laws:
--  |
--  | - ```succ bottom >>= succ >>= succ ... succ [cardinality - 1 times] == top```
--  | - ```pred top    >>= pred >>= pred ... pred [cardinality - 1 times] == bottom```
--  | - ```e1 `compare` e2 == fromEnum e1 `compare` fromEnum e2```
--  | - ```forall a > bottom: pred a >>= succ == Just a```
--  | - ```forall a < top:  succ a >>= pred == Just a```
--  | - ```pred >=> succ >=> pred = pred```
--  | - ```succ >=> pred >=> succ = succ```
--  | - ```toEnum (fromEnum a) = Just a```
--  | - ```forall a > bottom: fromEnum <$> pred a = Just (fromEnum a - 1)```
--  | - ```forall a < top:  fromEnum <$> succ a = Just (fromEnum a + 1)```
--  | Type class for enumerations. This should not be considered a part of a
--  | numeric hierarchy, ala Haskell. Rather, this is a type class for small,
--  | ordered sum types with statically-determined cardinality and the ability
--  | to easily compute successor and predecessor elements. e.g. `DayOfWeek`, etc.
--  |
--  | Laws:
--  |
--  | - ```succ bottom >>= succ >>= succ ... succ [cardinality - 1 times] == top```
--  | - ```pred top    >>= pred >>= pred ... pred [cardinality - 1 times] == bottom```
--  | - ```e1 `compare` e2 == fromEnum e1 `compare` fromEnum e2```
--  | - ```forall a > bottom: pred a >>= succ == Just a```
--  | - ```forall a < top:  succ a >>= pred == Just a```
--  | - ```pred >=> succ >=> pred = pred```
--  | - ```succ >=> pred >=> succ = succ```
--  | - ```toEnum (fromEnum a) = Just a```
--  | - ```forall a > bottom: fromEnum <$> pred a = Just (fromEnum a - 1)```
--  | - ```forall a < top:  fromEnum <$> succ a = Just (fromEnum a + 1)```
--  | All of these are as a workaround for `ScopedTypeVariables`. (not yet supported in Purescript)
--  | Type class for enumerations. This should not be considered a part of a
--  | numeric hierarchy, ala Haskell. Rather, this is a type class for small,
--  | ordered sum types with statically-determined cardinality and the ability
--  | to easily compute successor and predecessor elements. e.g. `DayOfWeek`, etc.
--  |
--  | Laws:
--  |
--  | - ```succ bottom >>= succ >>= succ ... succ [cardinality - 1 times] == top```
--  | - ```pred top    >>= pred >>= pred ... pred [cardinality - 1 times] == bottom```
--  | - ```e1 `compare` e2 == fromEnum e1 `compare` fromEnum e2```
--  | - ```forall a > bottom: pred a >>= succ == Just a```
--  | - ```forall a < top:  succ a >>= pred == Just a```
--  | - ```pred >=> succ >=> pred = pred```
--  | - ```succ >=> pred >=> succ = succ```
--  | - ```toEnum (fromEnum a) = Just a```
--  | - ```forall a > bottom: fromEnum <$> pred a = Just (fromEnum a - 1)```
--  | - ```forall a < top:  fromEnum <$> succ a = Just (fromEnum a + 1)```
--  | Property: ```forall e in intStepFromTo step a b: a <= e <= b```
--  | Property: ```forall e in intFromTo a b: a <= e <= b```
--  | Type class for enumerations. This should not be considered a part of a
--  | numeric hierarchy, ala Haskell. Rather, this is a type class for small,
--  | ordered sum types with statically-determined cardinality and the ability
--  | to easily compute successor and predecessor elements. e.g. `DayOfWeek`, etc.
--  |
--  | Laws:
--  |
--  | - ```succ bottom >>= succ >>= succ ... succ [cardinality - 1 times] == top```
--  | - ```pred top    >>= pred >>= pred ... pred [cardinality - 1 times] == bottom```
--  | - ```e1 `compare` e2 == fromEnum e1 `compare` fromEnum e2```
--  | - ```forall a > bottom: pred a >>= succ == Just a```
--  | - ```forall a < top:  succ a >>= pred == Just a```
--  | - ```pred >=> succ >=> pred = pred```
--  | - ```succ >=> pred >=> succ = succ```
--  | - ```toEnum (fromEnum a) = Just a```
--  | - ```forall a > bottom: fromEnum <$> pred a = Just (fromEnum a - 1)```
--  | - ```forall a < top:  fromEnum <$> succ a = Just (fromEnum a + 1)```
--  | Property: ```fromEnum a = a', fromEnum b = b' => forall e', a' <= e' <= b': Exists e: toEnum e' = Just e```
--  |
--  | Following from the propery of `intFromTo`, we are sure all elements in `intFromTo (fromEnum a) (fromEnum b)` are `Just`s.
--  | `[a,b..c]`
--  |
--  | Correctness for using `fromJust` is the same as for `enumFromTo`.
--  | ```defaultSucc toEnum fromEnum = succ```
--  | ```defaultPred toEnum fromEnum = pred```
--  | To avoid a compiler bug - can't pass self-class functions, workaround: need to make a concrete function.
--  | ## Instances
--  | Type class for enumerations. This should not be considered a part of a
--  | numeric hierarchy, ala Haskell. Rather, this is a type class for small,
--  | ordered sum types with statically-determined cardinality and the ability
--  | to easily compute successor and predecessor elements. e.g. `DayOfWeek`, etc.
--  |
--  | Laws:
--  |
--  | - ```succ bottom >>= succ >>= succ ... succ [cardinality - 1 times] == top```
--  | - ```pred top    >>= pred >>= pred ... pred [cardinality - 1 times] == bottom```
--  | - ```e1 `compare` e2 == fromEnum e1 `compare` fromEnum e2```
--  | - ```forall a > bottom: pred a >>= succ == Just a```
--  | - ```forall a < top:  succ a >>= pred == Just a```
--  | - ```pred >=> succ >=> pred = pred```
--  | - ```succ >=> pred >=> succ = succ```
--  | - ```toEnum (fromEnum a) = Just a```
--  | - ```forall a > bottom: fromEnum <$> pred a = Just (fromEnum a - 1)```
--  | - ```forall a < top:  fromEnum <$> succ a = Just (fromEnum a + 1)```
newtype Cardinality (a :: *) = Cardinality Prim.Int
class (Prelude.Bounded a) <= Enum a where
  cardinality :: Data.Enum.Cardinality a
  succ :: a -> Data.Maybe.Maybe a
  pred :: a -> Data.Maybe.Maybe a
  toEnum :: Prim.Int -> Data.Maybe.Maybe a
  fromEnum :: a -> Prim.Int
foreign import enumFromThenTo :: forall a. (Data.Enum.Enum a) => a -> a -> a -> Prim.Array a
foreign import enumFromTo :: forall a. (Data.Enum.Enum a) => a -> a -> Prim.Array a
foreign import intStepFromTo :: Prim.Int -> Prim.Int -> Prim.Int -> Prim.Array Prim.Int
foreign import intFromTo :: Prim.Int -> Prim.Int -> Prim.Array Prim.Int
foreign import defaultFromEnum :: forall a. (a -> Data.Maybe.Maybe a) -> a -> Prim.Int
foreign import defaultToEnum :: forall a. (a -> Data.Maybe.Maybe a) -> a -> Prim.Int -> Data.Maybe.Maybe a
foreign import defaultPred :: forall a. (Prim.Int -> Data.Maybe.Maybe a) -> (a -> Prim.Int) -> a -> Data.Maybe.Maybe a
foreign import defaultSucc :: forall a. (Prim.Int -> Data.Maybe.Maybe a) -> (a -> Prim.Int) -> a -> Data.Maybe.Maybe a
foreign import runCardinality :: forall a. Data.Enum.Cardinality a -> Prim.Int
foreign import instance enumChar :: Data.Enum.Enum Prim.Char
foreign import instance enumMaybe :: (Data.Enum.Enum a) => Data.Enum.Enum (Data.Maybe.Maybe a)
foreign import instance enumBoolean :: Data.Enum.Enum Prim.Boolean
foreign import instance enumTuple :: (Data.Enum.Enum a, Data.Enum.Enum b) => Data.Enum.Enum (Data.Tuple.Tuple a b)
foreign import instance enumEither :: (Data.Enum.Enum a, Data.Enum.Enum b) => Data.Enum.Enum (Data.Either.Either a b)