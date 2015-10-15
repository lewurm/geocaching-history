module Leaflet.LayerGroup (layerGroup, addLayerGroupToMap, layerGroupToILayer) where
import Leaflet.LayerGroup ()
import Prim ()
import Control.Monad.Eff ()
import Leaflet.Types ()
foreign import layerGroup :: Prim.Array Leaflet.Types.ILayer -> Leaflet.Types.LayerGroup
foreign import addLayerGroupToMap :: forall e. Leaflet.Types.LayerGroup -> Leaflet.Types.Map -> Control.Monad.Eff.Eff e Leaflet.Types.LayerGroup
foreign import layerGroupToILayer :: Leaflet.Types.LayerGroup -> Leaflet.Types.ILayer
foreign import instance layerGroupLayer :: Leaflet.Types.Layer Leaflet.Types.LayerGroup