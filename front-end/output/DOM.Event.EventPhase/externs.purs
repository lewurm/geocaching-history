module DOM.Event.EventPhase (EventPhase(None, Capturing, AtTarget, Bubbling)) where
import Prelude ()
import DOM.Event.EventPhase ()
import Data.Enum ()
import Prim ()
import Prelude ()
import Data.Enum ()
import Data.Maybe ()
data EventPhase = None  | Capturing  | AtTarget  | Bubbling 
foreign import instance eqEventPhase :: Prelude.Eq DOM.Event.EventPhase.EventPhase
foreign import instance ordEventPhase :: Prelude.Ord DOM.Event.EventPhase.EventPhase
foreign import instance boundedEventPhase :: Prelude.Bounded DOM.Event.EventPhase.EventPhase
foreign import instance boundedOrdEventPhase :: Prelude.BoundedOrd DOM.Event.EventPhase.EventPhase
foreign import instance enumEventPhase :: Data.Enum.Enum DOM.Event.EventPhase.EventPhase