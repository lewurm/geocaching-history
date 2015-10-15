module DOM.Event.EventTarget (EventListener(), dispatchEvent, removeEventListener, addEventListener, eventListener) where
import Prim ()
import Prelude ()
import Control.Monad.Eff ()
import Control.Monad.Eff.Exception ()
import DOM ()
import DOM.Event.Types ()
--  | A boxed function that can be used as an event listener. This is necessary
--  | due to the underling implementation of Eff functions.
--  | Creates an EventListener from a normal PureScript Eff function.
--  | Adds a listener to an event target. The boolean argument indicates whether
--  | the listener should be added for the "capture" phase.
--  | Removes a listener to an event target. The boolean argument indicates
--  | whether the listener should be removed for the "capture" phase.
--  | Dispatches an event from an event target.
foreign import data EventListener :: # ! -> *
foreign import dispatchEvent :: forall eff. DOM.Event.Types.Event -> DOM.Event.Types.EventTarget -> Control.Monad.Eff.Eff (err :: Control.Monad.Eff.Exception.EXCEPTION, dom :: DOM.DOM | eff) Prim.Boolean
foreign import removeEventListener :: forall eff. DOM.Event.Types.EventType -> DOM.Event.EventTarget.EventListener (dom :: DOM.DOM | eff) -> Prim.Boolean -> DOM.Event.Types.EventTarget -> Control.Monad.Eff.Eff (dom :: DOM.DOM | eff) Prelude.Unit
foreign import addEventListener :: forall eff. DOM.Event.Types.EventType -> DOM.Event.EventTarget.EventListener (dom :: DOM.DOM | eff) -> Prim.Boolean -> DOM.Event.Types.EventTarget -> Control.Monad.Eff.Eff (dom :: DOM.DOM | eff) Prelude.Unit
foreign import eventListener :: forall eff a. (DOM.Event.Types.Event -> Control.Monad.Eff.Eff eff a) -> DOM.Event.EventTarget.EventListener eff