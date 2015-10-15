module Main where

import Prelude

import Debug.Trace

import Data.Maybe.Unsafe (fromJust)
import Data.Nullable (toMaybe)
import Data.Tuple
import Data.String

import Control.Monad.Eff.Console
import Control.Monad.Eff

import Leaflet.Icon
import Leaflet.Types
import Leaflet.Map
import Leaflet.Marker
import Leaflet.LatLng
import Leaflet.LatLngBounds
import Leaflet.TileLayer

import DOM (DOM())
import DOM.HTML (window)
import DOM.HTML.Document (body)
import DOM.HTML.Types (htmlElementToElement)
import DOM.HTML.Window (document)

import DOM.Node.Types (Element())

import React

import qualified React.DOM as D
import qualified React.DOM.Props as P


mapBoxUrl = "https://api.tiles.mapbox.com/v4/{id}/{z}/{x}/{y}.png?access_token=pk.eyJ1IjoibWFwYm94IiwiYSI6IjZjNmRjNzk3ZmE2MTcwOTEwMGY0MzU3YjUzOWFmNWZhIn0.Y8bhBaUMqFiPrDRW9hieoQ"

main = do
  log "Hello sailor!"
  let north = convert_degrees_to_decimal 37.0 46.500
  log $ "sup1: " ++ show north
  let west = convert_degrees_to_decimal (-122.0) 25.500
  log $ "sup2: " ++ show west
  let ll = latLng north west
  -- TODO: make bounds optional
  let lower = latLng (convert_degrees_to_decimal 35.0 42.500) (convert_degrees_to_decimal (-115.0) (23.0))
  let upper = latLng (convert_degrees_to_decimal 39.0 49.500) (convert_degrees_to_decimal (-128.0) (28.0))
  let bounds = latLngBounds lower upper
  let opts = {attributionControl: true, center: ll, layers: [] :: Array ILayer, maxBounds: bounds, zoom: 12.0}

  let ui :: ReactElement
      ui = D.div []
           [ createFactory counter {}
           , D.div [P._id "map", P.style {width: "600px", height: "400px"} ] []
           ]
  let container :: forall eff. Eff (dom :: DOM | eff) Element
      container = do
        win <- window
        doc <- document win
        elm <- fromJust <$> toMaybe <$> body doc
        return $ htmlElementToElement elm

  container >>= render ui

  map <- createMap "map" opts
  tile <- tileLayer mapBoxUrl {id: "mapbox.streets", subdomains: []}
  addTo tile map

  i <- icon {iconUrl: "http://www.geocaching.com/images/wpttypes/sm/2.gif", iconSize: {x: 14, y: 14}}
  addTo (marker {icon: i} ll) map


convert_degrees_to_decimal :: Prim.Number -> Prim.Number -> Prim.Number
convert_degrees_to_decimal degrees minutes =
    case degrees >= 0.0 of
        true ->  degrees + (minutes / 60.0)
        false -> degrees - (minutes / 60.0)


incrementCounter :: forall a b c. ReactThis b Int -> c -> Eff (state :: ReactState (Read Write) Int | a) Int
incrementCounter ctx e = do
  val <- readState ctx
  writeState ctx (val + 1)

counter :: forall a. ReactClass a
counter = createClass $ spec 0 \ctx -> do
  val <- readState ctx
  return $ D.p [ P.className "Counter"
               , P.onClick (incrementCounter ctx)
               ]
               [ D.text (show val)
               , D.text " Click me to increment!"
               ]

