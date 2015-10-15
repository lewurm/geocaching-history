{-
  Author    : Tim Dysinger
  Copyright : 2014
  License   : MIT
-}

module Leaflet.Plugin.AwesomeMarkers where

import Control.Monad.Eff
import Leaflet.Types

type AwesomeIconOptions r = { prefix      :: String,
                       icon        :: String,
                       markerColor :: String | r }

foreign import icon :: forall r e. AwesomeIconOptions r -> Eff e Icon
