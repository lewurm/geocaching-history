module DOM.Node.NonDocumentTypeChildNode (nextElementSibling, previousElementSibling) where
import Prim ()
import Control.Monad.Eff ()
import Data.Nullable ()
import DOM ()
import DOM.Node.Types ()
--  | The previous sibling that is an element, or null if no such element exists.
--  | The next sibling that is an element, or null if no such element exists.
foreign import nextElementSibling :: forall eff. DOM.Node.Types.NonDocumentTypeChildNode -> Control.Monad.Eff.Eff (dom :: DOM.DOM | eff) (Data.Nullable.Nullable DOM.Node.Types.Element)
foreign import previousElementSibling :: forall eff. DOM.Node.Types.NonDocumentTypeChildNode -> Control.Monad.Eff.Eff (dom :: DOM.DOM | eff) (Data.Nullable.Nullable DOM.Node.Types.Element)