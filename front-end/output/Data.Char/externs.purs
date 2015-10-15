module Data.Char (toUpper, toLower, toCharCode, fromCharCode, toString) where
import Prim ()
import Prelude ()
--  | Returns the string of length `1` containing only the given character.
--  | Returns the numeric Unicode value of the character.
--  | Constructs a character from the given Unicode numeric value.
--  | Converts a character to lowercase.
--  | Converts a character to uppercase.
foreign import toUpper :: Prim.Char -> Prim.Char
foreign import toLower :: Prim.Char -> Prim.Char
foreign import toCharCode :: Prim.Char -> Prim.Int
foreign import fromCharCode :: Prim.Int -> Prim.Char
foreign import toString :: Prim.Char -> Prim.String