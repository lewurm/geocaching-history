module React (EventHandlerContext(), KeyboardEvent(), MouseEvent(), Event(), ReactClass(), ReactSpec(), ComponentWillUnmount(), ComponentDidUpdate(), ComponentWillUpdate(), ShouldComponentUpdate(), ComponentWillReceiveProps(), ComponentDidMount(), ComponentWillMount(), GetInitialState(), Render(), Refs(), ReactRefs(), ReactProps(), ReactState(), ReadOnly(), ReadWrite(), Only(), Write(), Read(), Disallowed(), EventHandler(), ReactThis(), ReactElement(), renderToString, render, createFactory, createElement, createClass, handle, transformState, writeState, readState, getChildren, getRefs, getProps, spec) where
import Prelude ()
import React ()
import Prim ()
import Prelude ()
import DOM ()
import DOM.Node.Types ()
import Control.Monad.Eff ()
--  | A virtual DOM node, or component.
--  | A reference to a component, essentially React's `this`.
--  | An event handler. The type argument represents the type of the event.
--  | This effect indicates that a computation may read or write the component state.
--  |
--  | The first type argument is either `ReadWrite`, `ReadOnly` or `Disallowed` dependeding on the context.
--  |
--  | The second type argument is the type of the state of the component.
--  | This effect indicates that a computation may read the component props.
--  | This effect indicates that a computation may read the component refs.
--  |
--  | The first type argument is either `ReadOnly` or `Disallowed` dependeding on the context.
--  | The type of refs objects.
--  | The type of DOM events.
--  | React class for components.
--  | This phantom type indicates that write access to a resource is allowed.
--  | This phantom type indicates that read access to a resource is allowed.
--  | An access synonym which indicates that both read and write access are allowed.
--  | This phantom type indicates that only read access to a resource is allowed.
--  | An access synonym which indicates that reads are allowed but writes are not.
--  | A should component update function.
--  | The type of mouse events.
--  | The type of keyboard events.
--  | A function which handles events.
--  | This phantom type indicates that both read and write access to a resource are disallowed.
--  | A get initial state function.
--  | A render function.
--  | A component will update function.
--  | A component will unmount function.
--  | A component will receive props function.
--  | A component will mount function.
--  | A component did update function.
--  | A component did mount function.
--  | A specification of a component.
--  | Read the component props.
--  | Read the component refs.
--  | Read the component children property.
--  | Write the component state.
--  | Read the component state.
--  | Create a React class from a specification.
--  | Create an event handler.
--  | Create an element from a React class.
--  | Create a factory from a React class.
--  | Render a React element in a document element.
--  | Render a React element as a string.
--  | Transform the component state by applying a function.
--  | Create a component specification.
type EventHandlerContext (eff :: # !) (props :: *) (state :: *) (result :: *) = Control.Monad.Eff.Eff (state :: React.ReactState React.ReadWrite state, refs :: React.ReactRefs React.ReadOnly, props :: React.ReactProps props | eff) result
type KeyboardEvent = { which :: Prim.Int, shiftKey :: Prim.Boolean, repeat :: Prim.Boolean, metaKey :: Prim.Boolean, location :: Prim.Int, locale :: Prim.String, keyCode :: Prim.Int, key :: Prim.String, charCode :: Prim.Int, ctrlKey :: Prim.Boolean, altKey :: Prim.Boolean }
type MouseEvent = { pageY :: Prim.Number, pageX :: Prim.Number }
foreign import data Event :: *
foreign import data ReactClass :: * -> *
type ReactSpec (props :: *) (state :: *) (eff :: # !) = { componentWillUnmount :: React.ComponentWillUnmount props state eff, componentDidUpdate :: React.ComponentDidUpdate props state eff, componentWillUpdate :: React.ComponentWillUpdate props state eff, shouldComponentUpdate :: React.ShouldComponentUpdate props state eff, componentWillReceiveProps :: React.ComponentWillReceiveProps props state eff, componentDidMount :: React.ComponentDidMount props state eff, componentWillMount :: React.ComponentWillMount props state eff, getInitialState :: React.GetInitialState props state eff, displayName :: Prim.String, render :: React.Render props state eff }
type ComponentWillUnmount (props :: *) (state :: *) (eff :: # !) = React.ReactThis props state -> Control.Monad.Eff.Eff (refs :: React.ReactRefs React.ReadOnly, state :: React.ReactState React.ReadOnly state, props :: React.ReactProps props | eff) Prelude.Unit
type ComponentDidUpdate (props :: *) (state :: *) (eff :: # !) = React.ReactThis props state -> props -> state -> Control.Monad.Eff.Eff (refs :: React.ReactRefs React.ReadOnly, state :: React.ReactState React.ReadOnly state, props :: React.ReactProps props | eff) Prelude.Unit
type ComponentWillUpdate (props :: *) (state :: *) (eff :: # !) = React.ReactThis props state -> props -> state -> Control.Monad.Eff.Eff (refs :: React.ReactRefs React.ReadOnly, state :: React.ReactState React.ReadWrite state, props :: React.ReactProps props | eff) Prelude.Unit
type ShouldComponentUpdate (props :: *) (state :: *) (eff :: # !) = React.ReactThis props state -> props -> state -> Control.Monad.Eff.Eff (refs :: React.ReactRefs React.ReadOnly, state :: React.ReactState React.ReadWrite state, props :: React.ReactProps props | eff) Prim.Boolean
type ComponentWillReceiveProps (props :: *) (state :: *) (eff :: # !) = React.ReactThis props state -> props -> Control.Monad.Eff.Eff (refs :: React.ReactRefs React.ReadOnly, state :: React.ReactState React.ReadWrite state, props :: React.ReactProps props | eff) Prelude.Unit
type ComponentDidMount (props :: *) (state :: *) (eff :: # !) = React.ReactThis props state -> Control.Monad.Eff.Eff (refs :: React.ReactRefs React.ReadOnly, state :: React.ReactState React.ReadWrite state, props :: React.ReactProps props | eff) Prelude.Unit
type ComponentWillMount (props :: *) (state :: *) (eff :: # !) = React.ReactThis props state -> Control.Monad.Eff.Eff (refs :: React.ReactRefs React.Disallowed, state :: React.ReactState React.ReadWrite state, props :: React.ReactProps props | eff) Prelude.Unit
type GetInitialState (props :: *) (state :: *) (eff :: # !) = React.ReactThis props state -> Control.Monad.Eff.Eff (refs :: React.ReactRefs React.Disallowed, state :: React.ReactState React.Disallowed state, props :: React.ReactProps props | eff) state
type Render (props :: *) (state :: *) (eff :: # !) = React.ReactThis props state -> Control.Monad.Eff.Eff (state :: React.ReactState React.ReadOnly state, refs :: React.ReactRefs React.Disallowed, props :: React.ReactProps props | eff) React.ReactElement
foreign import data Refs :: *
foreign import data ReactRefs :: * -> !
foreign import data ReactProps :: * -> !
foreign import data ReactState :: * -> * -> !
type ReadOnly = React.Read React.Only
type ReadWrite = React.Read React.Write
data Only
data Write
data Read (write :: *)
data Disallowed
foreign import data EventHandler :: * -> *
foreign import data ReactThis :: * -> * -> *
foreign import data ReactElement :: *
foreign import renderToString :: React.ReactElement -> Prim.String
foreign import render :: forall eff. React.ReactElement -> DOM.Node.Types.Element -> Control.Monad.Eff.Eff (dom :: DOM.DOM | eff) React.ReactElement
foreign import createFactory :: forall props. React.ReactClass props -> props -> React.ReactElement
foreign import createElement :: forall props. React.ReactClass props -> props -> Prim.Array React.ReactElement -> React.ReactElement
foreign import createClass :: forall props state eff. React.ReactSpec props state eff -> React.ReactClass props
foreign import handle :: forall eff ev props state result. (ev -> React.EventHandlerContext eff props state result) -> React.EventHandler ev
foreign import transformState :: forall props state eff. React.ReactThis props state -> (state -> state) -> Control.Monad.Eff.Eff (state :: React.ReactState React.ReadWrite state | eff) state
foreign import writeState :: forall props state eff. React.ReactThis props state -> state -> Control.Monad.Eff.Eff (state :: React.ReactState React.ReadWrite state | eff) state
foreign import readState :: forall props state write eff. React.ReactThis props state -> Control.Monad.Eff.Eff (state :: React.ReactState (React.Read write) state | eff) state
foreign import getChildren :: forall props state eff. React.ReactThis props state -> Control.Monad.Eff.Eff (props :: React.ReactProps props | eff) (Prim.Array React.ReactElement)
foreign import getRefs :: forall props state write eff. React.ReactThis props state -> Control.Monad.Eff.Eff (refs :: React.ReactRefs (React.Read write) | eff) React.Refs
foreign import getProps :: forall props state eff. React.ReactThis props state -> Control.Monad.Eff.Eff (props :: React.ReactProps props | eff) props
foreign import spec :: forall props state eff. state -> React.Render props state eff -> React.ReactSpec props state eff