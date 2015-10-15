module Leaflet.Polyline (setLatLngs, addLatLng, polyline, addPolylineToMap, polylineToILayer) where
import Leaflet.Polyline ()
import Prim ()
import Control.Monad.Eff ()
import Leaflet.Types ()
foreign import setLatLngs :: forall e. Prim.Array Leaflet.Types.LatLng -> Leaflet.Types.Polyline -> Control.Monad.Eff.Eff e Leaflet.Types.Polyline
foreign import addLatLng :: forall e. Leaflet.Types.LatLng -> Leaflet.Types.Polyline -> Control.Monad.Eff.Eff e Leaflet.Types.Polyline
foreign import polyline :: Prim.Array Leaflet.Types.LatLng -> Leaflet.Types.PolylineOptions -> Leaflet.Types.Polyline
foreign import addPolylineToMap :: forall e. Leaflet.Types.Polyline -> Leaflet.Types.Map -> Control.Monad.Eff.Eff e Leaflet.Types.Polyline
foreign import polylineToILayer :: Leaflet.Types.Polyline -> Leaflet.Types.ILayer
foreign import instance polylineLayer :: Leaflet.Types.Layer Leaflet.Types.Polyline