module DOM.Node.DocumentType (systemId, publicId, name) where
import Prim ()
import DOM ()
import DOM.Node.Types ()
foreign import systemId :: DOM.Node.Types.DocumentType -> Prim.String
foreign import publicId :: DOM.Node.Types.DocumentType -> Prim.String
foreign import name :: DOM.Node.Types.DocumentType -> Prim.String