module DOM.Node.HTMLCollection (namedItem, item, length) where
import Prim ()
import Prelude ()
import Control.Monad.Eff ()
import Data.Nullable ()
import DOM ()
import DOM.Node.Types ()
--  | The number of elements in a HTMLCollection.
--  | The element in a HTMLCollection at the specified index, or null if no such
--  | element exists.
--  | The first element with the specified name or ID in a HTMLCollection, or
--  | null if no such element exists.
foreign import namedItem :: forall eff. DOM.Node.Types.ElementId -> DOM.Node.Types.HTMLCollection -> Control.Monad.Eff.Eff (dom :: DOM.DOM | eff) (Data.Nullable.Nullable DOM.Node.Types.Element)
foreign import item :: forall eff. Prim.Int -> DOM.Node.Types.HTMLCollection -> Control.Monad.Eff.Eff (dom :: DOM.DOM | eff) (Data.Nullable.Nullable DOM.Node.Types.Element)
foreign import length :: forall eff. DOM.Node.Types.HTMLCollection -> Control.Monad.Eff.Eff (dom :: DOM.DOM | eff) Prim.Int