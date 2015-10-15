module DOM.Node.NodeType (NodeType(ElementNode, AttributeNode, TextNode, CDATASectionNode, EntityReferenceNode, EntityNode, ProcessingInstructionNode, CommentNode, DocumentNode, DocumentTypeNode, DocumentFragmentNode, NotationNode)) where
import Prelude ()
import DOM.Node.NodeType ()
import Data.Enum ()
import Prim ()
import Prelude ()
import Data.Maybe ()
import Data.Enum ()
data NodeType = ElementNode  | AttributeNode  | TextNode  | CDATASectionNode  | EntityReferenceNode  | EntityNode  | ProcessingInstructionNode  | CommentNode  | DocumentNode  | DocumentTypeNode  | DocumentFragmentNode  | NotationNode 
foreign import instance eqNodeType :: Prelude.Eq DOM.Node.NodeType.NodeType
foreign import instance ordNodeType :: Prelude.Ord DOM.Node.NodeType.NodeType
foreign import instance boundedNodeType :: Prelude.Bounded DOM.Node.NodeType.NodeType
foreign import instance boundedOrdNodeType :: Prelude.BoundedOrd DOM.Node.NodeType.NodeType
foreign import instance enumNodeType :: Data.Enum.Enum DOM.Node.NodeType.NodeType