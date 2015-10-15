module Leaflet.LatLngBounds (pad, latLngBounds) where
import Prim ()
import Control.Monad.Eff ()
import Leaflet.Types ()
foreign import pad :: forall e. Prim.Number -> Leaflet.Types.LatLngBounds -> Control.Monad.Eff.Eff e Leaflet.Types.LatLngBounds
foreign import latLngBounds :: Leaflet.Types.LatLng -> Leaflet.Types.LatLng -> Leaflet.Types.LatLngBounds