module Leaflet.Icon where

import Control.Monad.Eff
import Leaflet.Types

foreign import icon :: forall e. IconOptions -> Eff e Icon

