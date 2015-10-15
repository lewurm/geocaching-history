module Leaflet.TileLayer (tileLayer, addTileLayerToMap, tileLayerToILayer) where
import Leaflet.TileLayer ()
import Prim ()
import Control.Monad.Eff ()
import Leaflet.Types ()
foreign import tileLayer :: forall r e. Leaflet.Types.URL -> Leaflet.Types.TileLayerOptions r -> Control.Monad.Eff.Eff e Leaflet.Types.TileLayer
foreign import addTileLayerToMap :: forall e. Leaflet.Types.TileLayer -> Leaflet.Types.Map -> Control.Monad.Eff.Eff e Leaflet.Types.TileLayer
foreign import tileLayerToILayer :: Leaflet.Types.TileLayer -> Leaflet.Types.ILayer
foreign import instance tileLayerLayer :: Leaflet.Types.Layer Leaflet.Types.TileLayer