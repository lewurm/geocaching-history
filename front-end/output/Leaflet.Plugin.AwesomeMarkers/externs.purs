module Leaflet.Plugin.AwesomeMarkers (AwesomeIconOptions(), icon) where
import Prim ()
import Control.Monad.Eff ()
import Leaflet.Types ()
type AwesomeIconOptions (r :: # *) = { markerColor :: Prim.String, icon :: Prim.String, prefix :: Prim.String | r }
foreign import icon :: forall r e. Leaflet.Plugin.AwesomeMarkers.AwesomeIconOptions r -> Control.Monad.Eff.Eff e Leaflet.Types.Icon