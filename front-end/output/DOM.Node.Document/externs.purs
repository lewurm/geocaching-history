module DOM.Node.Document (adoptNode, importNode, createProcessingInstruction, createComment, createTextNode, createDocumentFragment, createElementNS, createElement, getElementsByClassName, getElementsByTagNameNS, getElementsByTagName, documentElement, doctype, contentType, characterSet, compatMode, origin, documentURI, url) where
import Prim ()
import Control.Monad.Eff ()
import Data.Nullable ()
import DOM ()
import DOM.Node.Types ()
foreign import adoptNode :: forall eff. DOM.Node.Types.Node -> DOM.Node.Types.Document -> Control.Monad.Eff.Eff (dom :: DOM.DOM | eff) DOM.Node.Types.Node
foreign import importNode :: forall eff. DOM.Node.Types.Node -> Prim.Boolean -> DOM.Node.Types.Document -> Control.Monad.Eff.Eff (dom :: DOM.DOM | eff) DOM.Node.Types.Node
foreign import createProcessingInstruction :: forall eff. Prim.String -> Prim.String -> Control.Monad.Eff.Eff (dom :: DOM.DOM | eff) DOM.Node.Types.ProcessingInstruction
foreign import createComment :: forall eff. Prim.String -> Control.Monad.Eff.Eff (dom :: DOM.DOM | eff) DOM.Node.Types.Comment
foreign import createTextNode :: forall eff. Prim.String -> Control.Monad.Eff.Eff (dom :: DOM.DOM | eff) DOM.Node.Types.Text
foreign import createDocumentFragment :: forall eff. DOM.Node.Types.Document -> Control.Monad.Eff.Eff (dom :: DOM.DOM | eff) DOM.Node.Types.DocumentFragment
foreign import createElementNS :: forall eff. Data.Nullable.Nullable Prim.String -> Prim.String -> DOM.Node.Types.Document -> Control.Monad.Eff.Eff (dom :: DOM.DOM | eff) DOM.Node.Types.Element
foreign import createElement :: forall eff. Prim.String -> DOM.Node.Types.Document -> Control.Monad.Eff.Eff (dom :: DOM.DOM | eff) DOM.Node.Types.Element
foreign import getElementsByClassName :: forall eff. Prim.String -> DOM.Node.Types.Document -> Control.Monad.Eff.Eff (dom :: DOM.DOM | eff) DOM.Node.Types.HTMLCollection
foreign import getElementsByTagNameNS :: forall eff. Data.Nullable.Nullable Prim.String -> Prim.String -> DOM.Node.Types.Document -> Control.Monad.Eff.Eff (dom :: DOM.DOM | eff) DOM.Node.Types.HTMLCollection
foreign import getElementsByTagName :: forall eff. Prim.String -> DOM.Node.Types.Document -> Control.Monad.Eff.Eff (dom :: DOM.DOM | eff) DOM.Node.Types.HTMLCollection
foreign import documentElement :: forall eff. DOM.Node.Types.Document -> Control.Monad.Eff.Eff (dom :: DOM.DOM | eff) (Data.Nullable.Nullable DOM.Node.Types.Element)
foreign import doctype :: forall eff. DOM.Node.Types.Document -> Control.Monad.Eff.Eff (dom :: DOM.DOM | eff) (Data.Nullable.Nullable DOM.Node.Types.DocumentType)
foreign import contentType :: forall eff. DOM.Node.Types.Document -> Control.Monad.Eff.Eff (dom :: DOM.DOM | eff) Prim.String
foreign import characterSet :: forall eff. DOM.Node.Types.Document -> Control.Monad.Eff.Eff (dom :: DOM.DOM | eff) Prim.String
foreign import compatMode :: forall eff. DOM.Node.Types.Document -> Control.Monad.Eff.Eff (dom :: DOM.DOM | eff) Prim.String
foreign import origin :: forall eff. DOM.Node.Types.Document -> Control.Monad.Eff.Eff (dom :: DOM.DOM | eff) Prim.String
foreign import documentURI :: forall eff. DOM.Node.Types.Document -> Control.Monad.Eff.Eff (dom :: DOM.DOM | eff) Prim.String
foreign import url :: forall eff. DOM.Node.Types.Document -> Control.Monad.Eff.Eff (dom :: DOM.DOM | eff) Prim.String