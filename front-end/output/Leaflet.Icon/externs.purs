module Leaflet.Icon (icon) where
import Prim ()
import Control.Monad.Eff ()
import Leaflet.Types ()
foreign import icon :: forall e. Leaflet.Types.IconOptions -> Control.Monad.Eff.Eff e Leaflet.Types.Icon