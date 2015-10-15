import Text.XML.Light.Types
import Text.XML.Light

import Control.Monad
import Data.Maybe
import Data.List

-- import Locale
import Data.Time
import Data.Time.Format


data Coord = Coord { cLat :: String, cLon :: String } deriving (Show, Eq)

data GCType = Traditional | Multi

data Find = Find {
  fGeocode :: String,
  fType :: GCType,
  fCoord :: Coord,
  fLid :: String
}

extractCoord :: Element -> Coord
extractCoord doc = Coord {cLat = finder "lat", cLon = finder "lon"}
  where
    finder attr = attrVal $ fromJust $ find (\x -> (attrKey x) == (unqual attr)) (elAttribs doc)

elemPrinter :: String -> Content -> IO String
elemPrinter prefix (Text y) = do
  putStrLn (prefix ++ ": " ++ cdData y)
  return (cdData y)
elemPrinter _ _ = return ""

main :: IO ()
main = do
  f <- readFile "10082930.gpx"
  case parseXMLDoc f of
    Nothing -> error "Failed to parse XML"
    Just doc -> do
      -- let lookFor = QName wpt 
      let baseQName = elName doc
      putStrLn $ "header: " ++ show baseQName
      forM_ ((\x -> [x]) $ head $ findElements (baseQName {qName = "wpt"}) doc) $ \x -> do
        let nameTag = fromJust $ findElement (baseQName {qName = "name"}) x
        let nameContents = elContent nameTag

        name <- forM nameContents (elemPrinter "name")

        let cachetypeTag = fromJust $
                           findElement (QName
                              {qName = "groundspeak:type",
                               qPrefix = Nothing,
                               qURI = Just "http://www.groundspeak.com/cache/1/0"
                              }) x
        forM_ (elContent cachetypeTag) (elemPrinter "type")

        putStrLn $ "coords: " ++ (show $ extractCoord x)

      -- <wpt> <groundspeak:cache> <groundspeak:logs> <groundspeak:log id=XXX>
      -- <groundspeak:date>2015-08-09T19:00:00Z</groundspeak:date>
      -- take (4 + 2 + 2 + 2) $ "%Y-%m-%d
