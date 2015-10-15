module Control.Monad.Eff.Console.Unsafe (errorAny, logAny) where
import Prim ()
import Prelude ()
import Control.Monad.Eff ()
import Control.Monad.Eff.Console ()
--  | Write an arbitrary value to the console.
--  | Write an error with an arbitrary value to the console.
foreign import errorAny :: forall a eff. a -> Control.Monad.Eff.Eff (console :: Control.Monad.Eff.Console.CONSOLE | eff) Prelude.Unit
foreign import logAny :: forall a eff. a -> Control.Monad.Eff.Eff (console :: Control.Monad.Eff.Console.CONSOLE | eff) Prelude.Unit