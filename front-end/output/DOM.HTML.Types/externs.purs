module DOM.HTML.Types (HTMLElement(), HTMLDocument(), Window(), readHTMLElement, htmlElementToEventTarget, htmlElementToNode, htmlElementToNonDocumentTypeChildNode, htmlElementToParentNode, htmlElementToElement, readHTMLDocument, htmlDocumentToEventTarget, htmlDocumentToNode, htmlDocumentToParentNode, htmlDocumentToNonElementParentNode, htmlDocumentToDocument, windowToEventTarget) where
import Unsafe.Coerce ()
import Data.Foreign ()
import DOM.HTML.Types ()
import Prelude ()
import Prim ()
import Prelude ()
import Data.Either ()
import Data.Foreign ()
import Data.Foreign.Class ()
import DOM.Event.Types ()
import DOM.Node.Types ()
import Unsafe.Coerce ()
foreign import data HTMLElement :: *
foreign import data HTMLDocument :: *
foreign import data Window :: *
foreign import readHTMLElement :: Data.Foreign.Foreign -> Data.Foreign.F DOM.HTML.Types.HTMLElement
foreign import htmlElementToEventTarget :: DOM.HTML.Types.HTMLElement -> DOM.Event.Types.EventTarget
foreign import htmlElementToNode :: DOM.HTML.Types.HTMLElement -> DOM.Node.Types.Node
foreign import htmlElementToNonDocumentTypeChildNode :: DOM.HTML.Types.HTMLElement -> DOM.Node.Types.NonDocumentTypeChildNode
foreign import htmlElementToParentNode :: DOM.HTML.Types.HTMLElement -> DOM.Node.Types.ParentNode
foreign import htmlElementToElement :: DOM.HTML.Types.HTMLElement -> DOM.Node.Types.Element
foreign import readHTMLDocument :: Data.Foreign.Foreign -> Data.Foreign.F DOM.HTML.Types.HTMLDocument
foreign import htmlDocumentToEventTarget :: DOM.HTML.Types.HTMLDocument -> DOM.Event.Types.EventTarget
foreign import htmlDocumentToNode :: DOM.HTML.Types.HTMLDocument -> DOM.Node.Types.Node
foreign import htmlDocumentToParentNode :: DOM.HTML.Types.HTMLDocument -> DOM.Node.Types.ParentNode
foreign import htmlDocumentToNonElementParentNode :: DOM.HTML.Types.HTMLDocument -> DOM.Node.Types.NonElementParentNode
foreign import htmlDocumentToDocument :: DOM.HTML.Types.HTMLDocument -> DOM.Node.Types.Document
foreign import windowToEventTarget :: DOM.HTML.Types.Window -> DOM.Event.Types.EventTarget
foreign import instance isForeignHTMLDocument :: Data.Foreign.Class.IsForeign DOM.HTML.Types.HTMLDocument
foreign import instance isForeignHTMLElement :: Data.Foreign.Class.IsForeign DOM.HTML.Types.HTMLElement