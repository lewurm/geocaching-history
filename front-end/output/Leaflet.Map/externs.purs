module Leaflet.Map (createMap) where
import Prim ()
import Control.Monad.Eff ()
import Leaflet.Types ()
foreign import createMap :: forall e. Prim.String -> Leaflet.Types.MapOptions -> Control.Monad.Eff.Eff e Leaflet.Types.Map