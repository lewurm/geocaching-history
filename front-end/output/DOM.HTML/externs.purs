module DOM.HTML (window) where
import Prim ()
import Control.Monad.Eff ()
import DOM ()
import DOM.HTML.Types ()
foreign import window :: forall eff. Control.Monad.Eff.Eff (dom :: DOM.DOM | eff) DOM.HTML.Types.Window