module Leaflet.Marker (bindPopup, marker, addMarkerToMap, markerToILayer) where
import Leaflet.Marker ()
import Prim ()
import Control.Monad.Eff ()
import Leaflet.Types ()
foreign import bindPopup :: forall r e. Prim.String -> Leaflet.Types.PopupOptions r -> Leaflet.Types.Marker -> Control.Monad.Eff.Eff e Leaflet.Types.Marker
foreign import marker :: forall r. Leaflet.Types.MarkerOptions r -> Leaflet.Types.LatLng -> Leaflet.Types.Marker
foreign import addMarkerToMap :: forall e. Leaflet.Types.Marker -> Leaflet.Types.Map -> Control.Monad.Eff.Eff e Leaflet.Types.Marker
foreign import markerToILayer :: Leaflet.Types.Marker -> Leaflet.Types.ILayer
foreign import instance markerLayer :: Leaflet.Types.Layer Leaflet.Types.Marker