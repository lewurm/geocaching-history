module Main where

import Prelude
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

  map <- createMap "map" opts
  tile <- tileLayer mapBoxUrl {id: "mapbox.streets", subdomains: []}
  addTo tile map

  i <- icon {iconUrl: "http://www.geocaching.com/images/wpttypes/sm/2.gif", iconSize: {x: 14, y: 14}}
  addTo (marker {icon: i} ll) map
  -- var type_traditional_cache = L.icon({iconUrl: 'http://www.geocaching.com/images/wpttypes/sm/2.gif', iconSize: [14, 14]});
  -- var cache = L.marker([gc_north, gc_west], {icon: type_traditional_cache});
  -- cache.addTo(map); // .bindPopup("<b>Hello world!</b><br />I am a popup.").openPopup();


convert_degrees_to_decimal :: Prim.Number -> Prim.Number -> Prim.Number
convert_degrees_to_decimal degrees minutes =
    case degrees >= 0.0 of
        true ->  degrees + (minutes / 60.0)
        false -> degrees - (minutes / 60.0)
