{-
  Author    : Ricky Elrod
  Copyright : 2014
  License   : MIT
-}

module Leaflet.Polyline where

import Control.Monad.Eff
import Leaflet.Types

foreign import polylineToILayer :: Polyline -> ILayer

foreign import addPolylineToMap :: forall e. Polyline -> Map -> Eff e Polyline

instance polylineLayer :: Layer Polyline where
  toILayer = polylineToILayer
  addTo = addPolylineToMap

foreign import polyline :: Array LatLng -> PolylineOptions -> Polyline

foreign import addLatLng :: forall e. LatLng -> Polyline -> Eff e Polyline

foreign import setLatLngs :: forall e. Array LatLng -> Polyline -> Eff e Polyline
