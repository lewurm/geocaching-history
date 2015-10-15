module DOM.Node.NonElementParentNode (getElementById) where
import Prim ()
import Control.Monad.Eff ()
import Data.Nullable ()
import DOM ()
import DOM.Node.Types ()
--  | The first element within node's descendants with a matching ID, or null if
--  | no such element exists.
foreign import getElementById :: forall eff. DOM.Node.Types.ElementId -> DOM.Node.Types.NonElementParentNode -> Control.Monad.Eff.Eff (dom :: DOM.DOM | eff) (Data.Nullable.Nullable DOM.Node.Types.Element)