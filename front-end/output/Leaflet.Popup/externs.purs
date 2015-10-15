module Leaflet.Popup (addPopupToMap, popupToILayer) where
import Leaflet.Popup ()
import Prim ()
import Control.Monad.Eff ()
import Leaflet.Types ()
foreign import addPopupToMap :: forall e. Leaflet.Types.Popup -> Leaflet.Types.Map -> Control.Monad.Eff.Eff e Leaflet.Types.Popup
foreign import popupToILayer :: Leaflet.Types.Popup -> Leaflet.Types.ILayer
foreign import instance popupLayer :: Leaflet.Types.Layer Leaflet.Types.Popup