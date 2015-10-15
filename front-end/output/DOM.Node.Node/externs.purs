module DOM.Node.Node (removeChild, replaceChild, appendChild, insertBefore, isDefaultNamespace, lookupNamespaceURI, lookupPrefix, contains, compareDocumentPositionBits, isEqualNode, deepClone, clone, normalize, setTextContent, textContent, setNodeValue, nodeValue, nextSibling, previousSibling, lastChild, firstChild, childNodes, hasChildNodes, parentElement, parentNode, ownerDocument, baseURI, nodeName, nodeTypeIndex, nodeType) where
import Prelude ()
import Data.Maybe.Unsafe ()
import Data.Enum ()
import DOM.Node.Node ()
import Prim ()
import Prelude ()
import Control.Monad.Eff ()
import Data.Enum ()
import Data.Nullable ()
import Data.Maybe.Unsafe ()
import DOM ()
import DOM.Node.NodeType ()
import DOM.Node.Types ()
--  | The numeric value for the type of a node.
--  | For elements this is the tag name, for document types this is the doctype
--  | name, for processing instructions this is the target, for all other nodes
--  | it is a string like `"#text"`, `"#comment", etc. depending on the node
--  | type.
--  | The node's base URL.
--  | The document the node belongs to, unless the node is a document in which
--  | case the value is null.
--  | The parent node of the node.
--  | The parent element of the node.
--  | Indicates whether the node has any child nodes.
--  | The children of the node.
--  | The first child of the node, or null if the node has no children.
--  | The last child of the node, or null if the node has no children.
--  | The previous sibling node, or null if there is no previous sibling.
--  | The next sibling node, or null if there is no next sibling.
--  | If the node type is text, comment, or processing instruction this is the
--  | node's data, or null in all other cases.
--  | If the node type is text, comment, or processing instruction this allows
--  | the node's data to be changed, or has no effect in all other cases.
--  | If the node type is document fragment, element, text, processing
--  | instruction, or comment this is the node's data, or null in all other
--  | cases.
--  | If the node type is document fragment, element, text, processing
--  | instruction, or comment this allows the node's data to be changed, or has
--  | no effect in all other cases.
--  | Removes empty text nodes and then combines any remaining text nodes that
--  | are contiguous.
--  | Clones the node without cloning the node's descendants.
--  | Clones the node and its descendants.
--  | Checks whether two nodes are equivalent.
--  TODO: compareDocumentPosition that returns a semigroup or something instead of the bitmask value
--  | Compares the position of two nodes in the document.
--  | Checks whether the second node is contained within the first
--  | Inserts the first node before the second as a child of the third node.
--  | Appends the first node to the child node list of the second node.
--  | Uses the first node as a replacement for the second node in the children
--  | of the third node.
--  | Removes the first node from the children of the second node.
--  | The type of a node.
foreign import removeChild :: forall eff. DOM.Node.Types.Node -> DOM.Node.Types.Node -> Control.Monad.Eff.Eff (dom :: DOM.DOM | eff) DOM.Node.Types.Node
foreign import replaceChild :: forall eff. DOM.Node.Types.Node -> DOM.Node.Types.Node -> DOM.Node.Types.Node -> Control.Monad.Eff.Eff (dom :: DOM.DOM | eff) DOM.Node.Types.Node
foreign import appendChild :: forall eff. DOM.Node.Types.Node -> DOM.Node.Types.Node -> Control.Monad.Eff.Eff (dom :: DOM.DOM | eff) DOM.Node.Types.Node
foreign import insertBefore :: forall eff. DOM.Node.Types.Node -> DOM.Node.Types.Node -> DOM.Node.Types.Node -> Control.Monad.Eff.Eff (dom :: DOM.DOM | eff) DOM.Node.Types.Node
foreign import isDefaultNamespace :: forall eff. Prim.String -> DOM.Node.Types.Node -> Control.Monad.Eff.Eff (dom :: DOM.DOM | eff) Prim.Boolean
foreign import lookupNamespaceURI :: forall eff. Prim.String -> DOM.Node.Types.Node -> Control.Monad.Eff.Eff (dom :: DOM.DOM | eff) (Data.Nullable.Nullable Prim.String)
foreign import lookupPrefix :: forall eff. Prim.String -> DOM.Node.Types.Node -> Control.Monad.Eff.Eff (dom :: DOM.DOM | eff) (Data.Nullable.Nullable Prim.String)
foreign import contains :: forall eff. DOM.Node.Types.Node -> DOM.Node.Types.Node -> Control.Monad.Eff.Eff (dom :: DOM.DOM | eff) Prim.Boolean
foreign import compareDocumentPositionBits :: forall eff. DOM.Node.Types.Node -> DOM.Node.Types.Node -> Control.Monad.Eff.Eff (dom :: DOM.DOM | eff) Prim.Int
foreign import isEqualNode :: forall eff. DOM.Node.Types.Node -> DOM.Node.Types.Node -> Control.Monad.Eff.Eff (dom :: DOM.DOM | eff) Prim.Boolean
foreign import deepClone :: forall eff. DOM.Node.Types.Node -> Control.Monad.Eff.Eff (dom :: DOM.DOM | eff) Prelude.Unit
foreign import clone :: forall eff. DOM.Node.Types.Node -> Control.Monad.Eff.Eff (dom :: DOM.DOM | eff) Prelude.Unit
foreign import normalize :: forall eff. DOM.Node.Types.Node -> Control.Monad.Eff.Eff (dom :: DOM.DOM | eff) Prelude.Unit
foreign import setTextContent :: forall eff. DOM.Node.Types.Node -> Control.Monad.Eff.Eff (dom :: DOM.DOM | eff) Prelude.Unit
foreign import textContent :: forall eff. DOM.Node.Types.Node -> Control.Monad.Eff.Eff (dom :: DOM.DOM | eff) Prim.String
foreign import setNodeValue :: forall eff. Prim.String -> DOM.Node.Types.Node -> Control.Monad.Eff.Eff (dom :: DOM.DOM | eff) Prelude.Unit
foreign import nodeValue :: forall eff. DOM.Node.Types.Node -> Control.Monad.Eff.Eff (dom :: DOM.DOM | eff) Prim.String
foreign import nextSibling :: forall eff. DOM.Node.Types.Node -> Control.Monad.Eff.Eff (dom :: DOM.DOM | eff) (Data.Nullable.Nullable DOM.Node.Types.Node)
foreign import previousSibling :: forall eff. DOM.Node.Types.Node -> Control.Monad.Eff.Eff (dom :: DOM.DOM | eff) (Data.Nullable.Nullable DOM.Node.Types.Node)
foreign import lastChild :: forall eff. DOM.Node.Types.Node -> Control.Monad.Eff.Eff (dom :: DOM.DOM | eff) (Data.Nullable.Nullable DOM.Node.Types.Node)
foreign import firstChild :: forall eff. DOM.Node.Types.Node -> Control.Monad.Eff.Eff (dom :: DOM.DOM | eff) (Data.Nullable.Nullable DOM.Node.Types.Node)
foreign import childNodes :: forall eff. DOM.Node.Types.Node -> Control.Monad.Eff.Eff (dom :: DOM.DOM | eff) DOM.Node.Types.NodeList
foreign import hasChildNodes :: forall eff. DOM.Node.Types.Node -> Control.Monad.Eff.Eff (dom :: DOM.DOM | eff) Prim.Boolean
foreign import parentElement :: forall eff. DOM.Node.Types.Node -> Control.Monad.Eff.Eff (dom :: DOM.DOM | eff) (Data.Nullable.Nullable DOM.Node.Types.Element)
foreign import parentNode :: forall eff. DOM.Node.Types.Node -> Control.Monad.Eff.Eff (dom :: DOM.DOM | eff) (Data.Nullable.Nullable DOM.Node.Types.Node)
foreign import ownerDocument :: forall eff. DOM.Node.Types.Node -> Control.Monad.Eff.Eff (dom :: DOM.DOM | eff) (Data.Nullable.Nullable DOM.Node.Types.Document)
foreign import baseURI :: forall eff. DOM.Node.Types.Node -> Control.Monad.Eff.Eff (dom :: DOM.DOM | eff) Prim.String
foreign import nodeName :: DOM.Node.Types.Node -> Prim.String
foreign import nodeTypeIndex :: DOM.Node.Types.Node -> Prim.Int
foreign import nodeType :: DOM.Node.Types.Node -> DOM.Node.NodeType.NodeType