module DOM.Node.ParentNode (querySelectorAll, querySelector, childElementCount, lastElementChild, firstElementChild, children) where
import Prim ()
import Control.Monad.Eff ()
import Data.Nullable ()
import DOM ()
import DOM.Node.Types ()
--  | The child elements for the node.
--  | The first child that is an element, or null if no such element exists.
--  | The last child that is an element, or null if no such element exists.
--  | The number of child elements.
--  | Finds the first child that is an element that matches the selector(s), or
--  | null if no such element exists.
--  | Finds all the child elements that matches the selector(s).
foreign import querySelectorAll :: forall eff. Prim.String -> DOM.Node.Types.ParentNode -> Control.Monad.Eff.Eff (dom :: DOM.DOM | eff) DOM.Node.Types.NodeList
foreign import querySelector :: forall eff. Prim.String -> DOM.Node.Types.ParentNode -> Control.Monad.Eff.Eff (dom :: DOM.DOM | eff) (Data.Nullable.Nullable DOM.Node.Types.Element)
foreign import childElementCount :: forall eff. DOM.Node.Types.ParentNode -> Control.Monad.Eff.Eff (dom :: DOM.DOM | eff) Prim.Int
foreign import lastElementChild :: forall eff. DOM.Node.Types.ParentNode -> Control.Monad.Eff.Eff (dom :: DOM.DOM | eff) (Data.Nullable.Nullable DOM.Node.Types.Element)
foreign import firstElementChild :: forall eff. DOM.Node.Types.ParentNode -> Control.Monad.Eff.Eff (dom :: DOM.DOM | eff) (Data.Nullable.Nullable DOM.Node.Types.Element)
foreign import children :: forall eff. DOM.Node.Types.ParentNode -> Control.Monad.Eff.Eff (dom :: DOM.DOM | eff) DOM.Node.Types.HTMLCollection