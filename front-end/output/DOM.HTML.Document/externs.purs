module DOM.HTML.Document (body) where
import Prim ()
import Control.Monad.Eff ()
import Data.Nullable ()
import DOM ()
import DOM.HTML.Types ()
foreign import body :: forall eff. DOM.HTML.Types.HTMLDocument -> Control.Monad.Eff.Eff (dom :: DOM.DOM | eff) (Data.Nullable.Nullable DOM.HTML.Types.HTMLElement)