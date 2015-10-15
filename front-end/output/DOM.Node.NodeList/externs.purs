module DOM.Node.NodeList (item, length) where
import Prim ()
import Prelude ()
import Control.Monad.Eff ()
import Data.Nullable ()
import DOM ()
import DOM.Node.Types ()
--  | The number of items in a NodeList.
--  | The item in a NodeList at the specified index, or null if no such node
--  | exists.
foreign import item :: forall eff. Prim.Int -> DOM.Node.Types.NodeList -> Control.Monad.Eff.Eff (dom :: DOM.DOM | eff) (Data.Nullable.Nullable DOM.Node.Types.Node)
foreign import length :: forall eff. DOM.Node.Types.NodeList -> Control.Monad.Eff.Eff (dom :: DOM.DOM | eff) Prim.Int