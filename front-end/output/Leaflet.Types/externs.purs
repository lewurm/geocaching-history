module Leaflet.Types (PolylineOptions(), PopupOptions(), MarkerOptions(), TileLayerOptions(), MapOptions(), IconOptions(), Point(), Polyline(), TileLayer(), Popup(), Marker(), Map(), LayerGroup(), LatLngBounds(), LatLng(), Icon(), ILayer(), URL(), Layer, addTo, toILayer) where
import Prim ()
import Control.Monad.Eff ()
--  All PathOptions plus a few more options.
type PolylineOptions = { noClip :: Prim.Boolean, smoothFactor :: Prim.Number, className :: Prim.String, pointerEvents :: Prim.String, clickable :: Prim.Boolean, lineJoin :: Prim.String, lineCap :: Prim.String, dashArray :: Prim.String, fillOpacity :: Prim.Number, fillColor :: Prim.String, fill :: Prim.Boolean, opacity :: Prim.Number, weight :: Prim.Number, color :: Prim.String, stroke :: Prim.Boolean }
type PopupOptions (r :: # *) = {  | r }
type MarkerOptions (r :: # *) = { icon :: Leaflet.Types.Icon | r }
type TileLayerOptions (r :: # *) = { subdomains :: Prim.Array Prim.String, id :: Prim.String | r }
type MapOptions = { zoom :: Prim.Number, maxBounds :: Leaflet.Types.LatLngBounds, layers :: Prim.Array Leaflet.Types.ILayer, center :: Leaflet.Types.LatLng, attributionControl :: Prim.Boolean }
type IconOptions = { iconSize :: Leaflet.Types.Point, iconUrl :: Leaflet.Types.URL }
type Point = { y :: Prim.Int, x :: Prim.Int }
foreign import data Polyline :: *
foreign import data TileLayer :: *
foreign import data Popup :: *
foreign import data Marker :: *
foreign import data Map :: *
foreign import data LayerGroup :: *
foreign import data LatLngBounds :: *
foreign import data LatLng :: *
foreign import data Icon :: *
foreign import data ILayer :: *
type URL = Prim.String
class Layer a where
  toILayer :: a -> Leaflet.Types.ILayer
  addTo :: forall e. a -> Leaflet.Types.Map -> Control.Monad.Eff.Eff e a