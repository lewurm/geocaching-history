module DOM.Event.Event (stopPropagation, stopImmediatePropagation, preventDefault, type_, timeStamp, target, eventPhaseIndex, eventPhase, defaultPrevented, currentTarget, cancelable, bubbles) where
import Prelude ()
import Data.Maybe.Unsafe ()
import Data.Enum ()
import DOM.Event.Event ()
import Prim ()
import Prelude ()
import Control.Monad.Eff ()
import Data.Enum ()
import Data.Maybe.Unsafe ()
import DOM ()
import DOM.Event.EventPhase ()
import DOM.Event.Types ()
import DOM.Node.Types ()
--  | The event type.
--  | The element that was the source of the event.
--  | The element that the event listener was added to.
--  | The integer value for the current event phase.
--  | Prevents the event from bubbling up to futher event listeners. Other event
--  | listeners on the current target will still fire.
--  | Prevents all other listeners for the event from being called. This includes
--  | event listeners added to the current target after the current listener.
--  | Indicates whether the event will bubble up through the DOM or not.
--  | Indicates whether the event can be cancelled.
--  | Cancels the event if it can be cancelled.
--  | Indicates whether `preventDefault` was called on the event.
--  | The time in milliseconds between 01/01/1970 and when the event was
--  | dispatched.
--  | Indicates which phase of the event flow that is currently being processed
--  | for the event.
foreign import stopPropagation :: DOM.Event.Types.Event -> Control.Monad.Eff.Eff (dom :: DOM.DOM) Prelude.Unit
foreign import stopImmediatePropagation :: DOM.Event.Types.Event -> Control.Monad.Eff.Eff (dom :: DOM.DOM) Prelude.Unit
foreign import preventDefault :: DOM.Event.Types.Event -> Control.Monad.Eff.Eff (dom :: DOM.DOM) Prelude.Unit
foreign import type_ :: DOM.Event.Types.Event -> DOM.Event.Types.EventType
foreign import timeStamp :: DOM.Event.Types.Event -> Prim.Number
foreign import target :: DOM.Event.Types.Event -> DOM.Node.Types.Node
foreign import eventPhaseIndex :: DOM.Event.Types.Event -> Prim.Int
foreign import eventPhase :: DOM.Event.Types.Event -> DOM.Event.EventPhase.EventPhase
foreign import defaultPrevented :: DOM.Event.Types.Event -> Prim.Boolean
foreign import currentTarget :: DOM.Event.Types.Event -> DOM.Node.Types.Node
foreign import cancelable :: DOM.Event.Types.Event -> Prim.Boolean
foreign import bubbles :: DOM.Event.Types.Event -> Prim.Boolean