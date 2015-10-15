module DOM.Node.Element (getAttribute, setAttribute, getElementsByClassName, getElementsByTagNameNS, getElementsByTagName, setClassName, className, setId, id, tagName, localName, prefix, namespaceURI) where
import Prim ()
import Prelude ()
import Control.Monad.Eff ()
import Data.Nullable ()
import DOM ()
import DOM.Node.Types ()
foreign import getAttribute :: forall eff. Prim.String -> DOM.Node.Types.Element -> Control.Monad.Eff.Eff (dom :: DOM.DOM | eff) (Data.Nullable.Nullable Prim.String)
foreign import setAttribute :: forall eff. Prim.String -> Prim.String -> DOM.Node.Types.Element -> Control.Monad.Eff.Eff (dom :: DOM.DOM | eff) Prelude.Unit
foreign import getElementsByClassName :: forall eff. Prim.String -> DOM.Node.Types.Element -> Control.Monad.Eff.Eff (dom :: DOM.DOM | eff) DOM.Node.Types.HTMLCollection
foreign import getElementsByTagNameNS :: forall eff. Data.Nullable.Nullable Prim.String -> Prim.String -> DOM.Node.Types.Element -> Control.Monad.Eff.Eff (dom :: DOM.DOM | eff) DOM.Node.Types.HTMLCollection
foreign import getElementsByTagName :: forall eff. Prim.String -> DOM.Node.Types.Element -> Control.Monad.Eff.Eff (dom :: DOM.DOM | eff) DOM.Node.Types.HTMLCollection
foreign import setClassName :: forall eff. Prim.String -> DOM.Node.Types.Element -> Control.Monad.Eff.Eff (dom :: DOM.DOM | eff) Prelude.Unit
foreign import className :: forall eff. DOM.Node.Types.Element -> Control.Monad.Eff.Eff (dom :: DOM.DOM | eff) Prim.String
foreign import setId :: forall eff. DOM.Node.Types.ElementId -> DOM.Node.Types.Element -> Control.Monad.Eff.Eff (dom :: DOM.DOM | eff) Prelude.Unit
foreign import id :: forall eff. DOM.Node.Types.Element -> Control.Monad.Eff.Eff (dom :: DOM.DOM | eff) DOM.Node.Types.ElementId
foreign import tagName :: DOM.Node.Types.Element -> Prim.String
foreign import localName :: DOM.Node.Types.Element -> Prim.String
foreign import prefix :: DOM.Node.Types.Element -> Data.Nullable.Nullable Prim.String
foreign import namespaceURI :: DOM.Node.Types.Element -> Data.Nullable.Nullable Prim.String