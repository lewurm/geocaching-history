module DOM.Node.Types (DocumentType(), DocumentFragment(), ProcessingInstruction(), Comment(), Text(), CharacterData(), ElementId(ElementId), Element(), Document(), HTMLCollection(), NodeList(), ChildNode(), NonDocumentTypeChildNode(), ParentNode(), NonElementParentNode(), Node(), documentTypeToNode, documentFragmentToNode, documentFragmentToParentNode, documentFragmentToNonElementParentNode, processingInstructionToNode, commentToNode, textToNode, characterDataToNonDocumentTypeChildNode, elementToEventTarget, elementToNode, elementToNonDocumentTypeChildNode, elementToParentNode, documentToEventTarget, documentToNode, documentToParentNode, documentToNonElementParentNode) where
import Unsafe.Coerce ()
import Prim ()
import Prelude ()
import DOM.Event.Types ()
import Unsafe.Coerce ()
foreign import data DocumentType :: *
foreign import data DocumentFragment :: *
foreign import data ProcessingInstruction :: *
foreign import data Comment :: *
foreign import data Text :: *
foreign import data CharacterData :: *
newtype ElementId = ElementId Prim.String
foreign import data Element :: *
foreign import data Document :: *
foreign import data HTMLCollection :: *
foreign import data NodeList :: *
foreign import data ChildNode :: *
foreign import data NonDocumentTypeChildNode :: *
foreign import data ParentNode :: *
foreign import data NonElementParentNode :: *
foreign import data Node :: *
foreign import documentTypeToNode :: DOM.Node.Types.DocumentType -> DOM.Node.Types.Node
foreign import documentFragmentToNode :: DOM.Node.Types.DocumentFragment -> DOM.Node.Types.Node
foreign import documentFragmentToParentNode :: DOM.Node.Types.DocumentFragment -> DOM.Node.Types.ParentNode
foreign import documentFragmentToNonElementParentNode :: DOM.Node.Types.DocumentFragment -> DOM.Node.Types.NonElementParentNode
foreign import processingInstructionToNode :: DOM.Node.Types.ProcessingInstruction -> DOM.Node.Types.Node
foreign import commentToNode :: DOM.Node.Types.Comment -> DOM.Node.Types.Node
foreign import textToNode :: DOM.Node.Types.Text -> DOM.Node.Types.Node
foreign import characterDataToNonDocumentTypeChildNode :: DOM.Node.Types.CharacterData -> DOM.Node.Types.NonDocumentTypeChildNode
foreign import elementToEventTarget :: DOM.Node.Types.Element -> DOM.Event.Types.EventTarget
foreign import elementToNode :: DOM.Node.Types.Element -> DOM.Node.Types.Node
foreign import elementToNonDocumentTypeChildNode :: DOM.Node.Types.Element -> DOM.Node.Types.NonDocumentTypeChildNode
foreign import elementToParentNode :: DOM.Node.Types.Element -> DOM.Node.Types.ParentNode
foreign import documentToEventTarget :: DOM.Node.Types.Document -> DOM.Event.Types.EventTarget
foreign import documentToNode :: DOM.Node.Types.Document -> DOM.Node.Types.Node
foreign import documentToParentNode :: DOM.Node.Types.Document -> DOM.Node.Types.ParentNode
foreign import documentToNonElementParentNode :: DOM.Node.Types.Document -> DOM.Node.Types.NonElementParentNode