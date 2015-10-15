module DOM.Node.ChildNode (remove) where
import Prim ()
import Prelude ()
import Control.Monad.Eff ()
import DOM ()
import DOM.Node.Types ()
--  | Removes the node from its parent.
foreign import remove :: forall eff. DOM.Node.Types.ChildNode -> Control.Monad.Eff.Eff (dom :: DOM.DOM | eff) Prelude.Unit