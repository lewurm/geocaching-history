module DOM.HTML.Window (document) where
import Prim ()
import Control.Monad.Eff ()
import DOM ()
import DOM.HTML.Types ()
foreign import document :: forall eff. DOM.HTML.Types.Window -> Control.Monad.Eff.Eff (dom :: DOM.DOM | eff) DOM.HTML.Types.HTMLDocument