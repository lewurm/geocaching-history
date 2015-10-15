module DOM.Event.Types (WheelEvent(), UserProximityEvent(), UIEvent(), TransitionEvent(), TouchEvent(), TimeEvent(), SVGZoomEvent(), SVGEvent(), StorageEvent(), SensorEvent(), RTCPeerConnectionIceEvent(), RTCIdentityEvent(), RTCIdentityErrorEvent(), RTCDataChannelEvent(), RelatedEvent(), ProgressEvent(), PopStateEvent(), PointerEvent(), PageTransitionEvent(), OfflineAudioCompletionEvent(), MutationEvent(), MouseEvent(), MessageEvent(), MediaStreamEvent(), KeyboardEvent(), InputEvent(), IDBVersionChangeEvent(), HashChangeEvent(), GamepadEvent(), FocusEvent(), FetchEvent(), ErrorEvent(), EditingBeforeInputEvent(), DragEvent(), DOMTransactionEvent(), DeviceProximityEvent(), DeviceOrientationEvent(), DeviceMotionEvent(), DeviceLightEvent(), CustomEvent(), CSSFontFaceLoadEvent(), CompositionEvent(), CloseEvent(), ClipboardEvent(), BlobEvent(), BeforeUnloadEvent(), BeforeInputEvent(), AudioProcessingEvent(), AnimationEvent(), EventTarget(), EventType(EventType), Event(), readWheelEvent, wheelEventToEvent, readUserProximityEvent, userProximityEventToEvent, readUIEvent, uiEventToEvent, readTransitionEvent, transitionEventToEvent, readTouchEvent, touchEventToEvent, readTimeEvent, timeEventToEvent, readSVGZoomEvent, svgZoomEventToEvent, readSVGEvent, svgEventToEvent, readStorageEvent, storageEventToEvent, readSensorEvent, sensorEventToEvent, readRTCPeerConnectionIceEvent, rtcPeerConnectionIceEventToEvent, readRTCIdentityEvent, rtcIdentityEventToEvent, readRTCIdentityErrorEvent, rtcIdentityErrorEventToEvent, readRTCDataChannelEvent, rtcDataChannelEventToEvent, readRelatedEvent, relatedEventToEvent, readProgressEvent, progressEventToEvent, readPopStateEvent, popStateEventToEvent, readPointerEvent, pointerEventToEvent, readPageTransitionEvent, pageTransitionEventToEvent, readOfflineAudioCompletionEvent, offlineAudioCompletionEventToEvent, readMutationEvent, mutationEventToEvent, readMouseEvent, mouseEventToEvent, readMessageEvent, messageEventToEvent, readMediaStreamEvent, mediaStreamEventToEvent, readKeyboardEvent, keyboardEventToEvent, readInputEvent, inputEventToEvent, readIDBVersionChangeEvent, idbVersionChangeEventToEvent, readHashChangeEvent, hashChangeEventToEvent, readGamepadEvent, gamepadEventToEvent, readFocusEvent, focusEventToEvent, readFetchEvent, fetchEventToEvent, readErrorEvent, errorEventToEvent, readEditingBeforeInputEvent, editingBeforeInputEventToEvent, readDragEvent, dragEventToEvent, readDOMTransactionEvent, domTransactionEventToEvent, readDeviceProximityEvent, deviceProximityEventToEvent, readDeviceOrientationEvent, deviceOrientationEventToEvent, readDeviceMotionEvent, deviceMotionEventToEvent, readDeviceLightEvent, deviceLightEventToEvent, readCustomEvent, customEventToEvent, readCSSFontFaceLoadEvent, cssFontFaceLoadEventToEvent, readCompositionEvent, compositionEventToEvent, readCloseEvent, closeEventToEvent, readClipboardEvent, clipboardEventToEvent, readBlobEvent, blobEventToEvent, readBeforeUnloadEvent, beforeUnloadEventToEvent, readBeforeInputEvent, beforeInputEventToEvent, readAudioProcessingEvent, audioProcessingEventToEvent, readAnimationEvent, animationEventToEvent, readEventTarget) where
import Prelude ()
import DOM.Event.Types ()
import Unsafe.Coerce ()
import Data.Foreign ()
import Prim ()
import Prelude ()
import Control.Monad.Eff ()
import Data.Either ()
import Data.Foreign ()
import Data.Foreign.Class ()
import Data.Maybe.Unsafe ()
import Unsafe.Coerce ()
import DOM ()
import DOM.Event.EventPhase ()
--  | Basic type for all DOM events.
--  | A DOM item that can emit events.
--  | The type of strings used for event types.
foreign import data WheelEvent :: *
foreign import data UserProximityEvent :: *
foreign import data UIEvent :: *
foreign import data TransitionEvent :: *
foreign import data TouchEvent :: *
foreign import data TimeEvent :: *
foreign import data SVGZoomEvent :: *
foreign import data SVGEvent :: *
foreign import data StorageEvent :: *
foreign import data SensorEvent :: *
foreign import data RTCPeerConnectionIceEvent :: *
foreign import data RTCIdentityEvent :: *
foreign import data RTCIdentityErrorEvent :: *
foreign import data RTCDataChannelEvent :: *
foreign import data RelatedEvent :: *
foreign import data ProgressEvent :: *
foreign import data PopStateEvent :: *
foreign import data PointerEvent :: *
foreign import data PageTransitionEvent :: *
foreign import data OfflineAudioCompletionEvent :: *
foreign import data MutationEvent :: *
foreign import data MouseEvent :: *
foreign import data MessageEvent :: *
foreign import data MediaStreamEvent :: *
foreign import data KeyboardEvent :: *
foreign import data InputEvent :: *
foreign import data IDBVersionChangeEvent :: *
foreign import data HashChangeEvent :: *
foreign import data GamepadEvent :: *
foreign import data FocusEvent :: *
foreign import data FetchEvent :: *
foreign import data ErrorEvent :: *
foreign import data EditingBeforeInputEvent :: *
foreign import data DragEvent :: *
foreign import data DOMTransactionEvent :: *
foreign import data DeviceProximityEvent :: *
foreign import data DeviceOrientationEvent :: *
foreign import data DeviceMotionEvent :: *
foreign import data DeviceLightEvent :: *
foreign import data CustomEvent :: *
foreign import data CSSFontFaceLoadEvent :: *
foreign import data CompositionEvent :: *
foreign import data CloseEvent :: *
foreign import data ClipboardEvent :: *
foreign import data BlobEvent :: *
foreign import data BeforeUnloadEvent :: *
foreign import data BeforeInputEvent :: *
foreign import data AudioProcessingEvent :: *
foreign import data AnimationEvent :: *
foreign import data EventTarget :: *
newtype EventType = EventType Prim.String
foreign import data Event :: *
foreign import readWheelEvent :: Data.Foreign.Foreign -> Data.Foreign.F DOM.Event.Types.WheelEvent
foreign import wheelEventToEvent :: DOM.Event.Types.WheelEvent -> DOM.Event.Types.Event
foreign import readUserProximityEvent :: Data.Foreign.Foreign -> Data.Foreign.F DOM.Event.Types.UserProximityEvent
foreign import userProximityEventToEvent :: DOM.Event.Types.UserProximityEvent -> DOM.Event.Types.Event
foreign import readUIEvent :: Data.Foreign.Foreign -> Data.Foreign.F DOM.Event.Types.UIEvent
foreign import uiEventToEvent :: DOM.Event.Types.UIEvent -> DOM.Event.Types.Event
foreign import readTransitionEvent :: Data.Foreign.Foreign -> Data.Foreign.F DOM.Event.Types.TransitionEvent
foreign import transitionEventToEvent :: DOM.Event.Types.TransitionEvent -> DOM.Event.Types.Event
foreign import readTouchEvent :: Data.Foreign.Foreign -> Data.Foreign.F DOM.Event.Types.TouchEvent
foreign import touchEventToEvent :: DOM.Event.Types.TouchEvent -> DOM.Event.Types.Event
foreign import readTimeEvent :: Data.Foreign.Foreign -> Data.Foreign.F DOM.Event.Types.TimeEvent
foreign import timeEventToEvent :: DOM.Event.Types.TimeEvent -> DOM.Event.Types.Event
foreign import readSVGZoomEvent :: Data.Foreign.Foreign -> Data.Foreign.F DOM.Event.Types.SVGZoomEvent
foreign import svgZoomEventToEvent :: DOM.Event.Types.SVGZoomEvent -> DOM.Event.Types.Event
foreign import readSVGEvent :: Data.Foreign.Foreign -> Data.Foreign.F DOM.Event.Types.SVGEvent
foreign import svgEventToEvent :: DOM.Event.Types.SVGEvent -> DOM.Event.Types.Event
foreign import readStorageEvent :: Data.Foreign.Foreign -> Data.Foreign.F DOM.Event.Types.StorageEvent
foreign import storageEventToEvent :: DOM.Event.Types.StorageEvent -> DOM.Event.Types.Event
foreign import readSensorEvent :: Data.Foreign.Foreign -> Data.Foreign.F DOM.Event.Types.SensorEvent
foreign import sensorEventToEvent :: DOM.Event.Types.SensorEvent -> DOM.Event.Types.Event
foreign import readRTCPeerConnectionIceEvent :: Data.Foreign.Foreign -> Data.Foreign.F DOM.Event.Types.RTCPeerConnectionIceEvent
foreign import rtcPeerConnectionIceEventToEvent :: DOM.Event.Types.RTCPeerConnectionIceEvent -> DOM.Event.Types.Event
foreign import readRTCIdentityEvent :: Data.Foreign.Foreign -> Data.Foreign.F DOM.Event.Types.RTCIdentityEvent
foreign import rtcIdentityEventToEvent :: DOM.Event.Types.RTCIdentityEvent -> DOM.Event.Types.Event
foreign import readRTCIdentityErrorEvent :: Data.Foreign.Foreign -> Data.Foreign.F DOM.Event.Types.RTCIdentityErrorEvent
foreign import rtcIdentityErrorEventToEvent :: DOM.Event.Types.RTCIdentityErrorEvent -> DOM.Event.Types.Event
foreign import readRTCDataChannelEvent :: Data.Foreign.Foreign -> Data.Foreign.F DOM.Event.Types.RTCDataChannelEvent
foreign import rtcDataChannelEventToEvent :: DOM.Event.Types.RTCDataChannelEvent -> DOM.Event.Types.Event
foreign import readRelatedEvent :: Data.Foreign.Foreign -> Data.Foreign.F DOM.Event.Types.RelatedEvent
foreign import relatedEventToEvent :: DOM.Event.Types.RelatedEvent -> DOM.Event.Types.Event
foreign import readProgressEvent :: Data.Foreign.Foreign -> Data.Foreign.F DOM.Event.Types.ProgressEvent
foreign import progressEventToEvent :: DOM.Event.Types.ProgressEvent -> DOM.Event.Types.Event
foreign import readPopStateEvent :: Data.Foreign.Foreign -> Data.Foreign.F DOM.Event.Types.PopStateEvent
foreign import popStateEventToEvent :: DOM.Event.Types.PopStateEvent -> DOM.Event.Types.Event
foreign import readPointerEvent :: Data.Foreign.Foreign -> Data.Foreign.F DOM.Event.Types.PointerEvent
foreign import pointerEventToEvent :: DOM.Event.Types.PointerEvent -> DOM.Event.Types.Event
foreign import readPageTransitionEvent :: Data.Foreign.Foreign -> Data.Foreign.F DOM.Event.Types.PageTransitionEvent
foreign import pageTransitionEventToEvent :: DOM.Event.Types.PageTransitionEvent -> DOM.Event.Types.Event
foreign import readOfflineAudioCompletionEvent :: Data.Foreign.Foreign -> Data.Foreign.F DOM.Event.Types.OfflineAudioCompletionEvent
foreign import offlineAudioCompletionEventToEvent :: DOM.Event.Types.OfflineAudioCompletionEvent -> DOM.Event.Types.Event
foreign import readMutationEvent :: Data.Foreign.Foreign -> Data.Foreign.F DOM.Event.Types.MutationEvent
foreign import mutationEventToEvent :: DOM.Event.Types.MutationEvent -> DOM.Event.Types.Event
foreign import readMouseEvent :: Data.Foreign.Foreign -> Data.Foreign.F DOM.Event.Types.MouseEvent
foreign import mouseEventToEvent :: DOM.Event.Types.MouseEvent -> DOM.Event.Types.Event
foreign import readMessageEvent :: Data.Foreign.Foreign -> Data.Foreign.F DOM.Event.Types.MessageEvent
foreign import messageEventToEvent :: DOM.Event.Types.MessageEvent -> DOM.Event.Types.Event
foreign import readMediaStreamEvent :: Data.Foreign.Foreign -> Data.Foreign.F DOM.Event.Types.MediaStreamEvent
foreign import mediaStreamEventToEvent :: DOM.Event.Types.MediaStreamEvent -> DOM.Event.Types.Event
foreign import readKeyboardEvent :: Data.Foreign.Foreign -> Data.Foreign.F DOM.Event.Types.KeyboardEvent
foreign import keyboardEventToEvent :: DOM.Event.Types.KeyboardEvent -> DOM.Event.Types.Event
foreign import readInputEvent :: Data.Foreign.Foreign -> Data.Foreign.F DOM.Event.Types.InputEvent
foreign import inputEventToEvent :: DOM.Event.Types.InputEvent -> DOM.Event.Types.Event
foreign import readIDBVersionChangeEvent :: Data.Foreign.Foreign -> Data.Foreign.F DOM.Event.Types.IDBVersionChangeEvent
foreign import idbVersionChangeEventToEvent :: DOM.Event.Types.IDBVersionChangeEvent -> DOM.Event.Types.Event
foreign import readHashChangeEvent :: Data.Foreign.Foreign -> Data.Foreign.F DOM.Event.Types.HashChangeEvent
foreign import hashChangeEventToEvent :: DOM.Event.Types.HashChangeEvent -> DOM.Event.Types.Event
foreign import readGamepadEvent :: Data.Foreign.Foreign -> Data.Foreign.F DOM.Event.Types.GamepadEvent
foreign import gamepadEventToEvent :: DOM.Event.Types.GamepadEvent -> DOM.Event.Types.Event
foreign import readFocusEvent :: Data.Foreign.Foreign -> Data.Foreign.F DOM.Event.Types.FocusEvent
foreign import focusEventToEvent :: DOM.Event.Types.FocusEvent -> DOM.Event.Types.Event
foreign import readFetchEvent :: Data.Foreign.Foreign -> Data.Foreign.F DOM.Event.Types.FetchEvent
foreign import fetchEventToEvent :: DOM.Event.Types.FetchEvent -> DOM.Event.Types.Event
foreign import readErrorEvent :: Data.Foreign.Foreign -> Data.Foreign.F DOM.Event.Types.ErrorEvent
foreign import errorEventToEvent :: DOM.Event.Types.ErrorEvent -> DOM.Event.Types.Event
foreign import readEditingBeforeInputEvent :: Data.Foreign.Foreign -> Data.Foreign.F DOM.Event.Types.EditingBeforeInputEvent
foreign import editingBeforeInputEventToEvent :: DOM.Event.Types.EditingBeforeInputEvent -> DOM.Event.Types.Event
foreign import readDragEvent :: Data.Foreign.Foreign -> Data.Foreign.F DOM.Event.Types.DragEvent
foreign import dragEventToEvent :: DOM.Event.Types.DragEvent -> DOM.Event.Types.Event
foreign import readDOMTransactionEvent :: Data.Foreign.Foreign -> Data.Foreign.F DOM.Event.Types.DOMTransactionEvent
foreign import domTransactionEventToEvent :: DOM.Event.Types.DOMTransactionEvent -> DOM.Event.Types.Event
foreign import readDeviceProximityEvent :: Data.Foreign.Foreign -> Data.Foreign.F DOM.Event.Types.DeviceProximityEvent
foreign import deviceProximityEventToEvent :: DOM.Event.Types.DeviceProximityEvent -> DOM.Event.Types.Event
foreign import readDeviceOrientationEvent :: Data.Foreign.Foreign -> Data.Foreign.F DOM.Event.Types.DeviceOrientationEvent
foreign import deviceOrientationEventToEvent :: DOM.Event.Types.DeviceOrientationEvent -> DOM.Event.Types.Event
foreign import readDeviceMotionEvent :: Data.Foreign.Foreign -> Data.Foreign.F DOM.Event.Types.DeviceMotionEvent
foreign import deviceMotionEventToEvent :: DOM.Event.Types.DeviceMotionEvent -> DOM.Event.Types.Event
foreign import readDeviceLightEvent :: Data.Foreign.Foreign -> Data.Foreign.F DOM.Event.Types.DeviceLightEvent
foreign import deviceLightEventToEvent :: DOM.Event.Types.DeviceLightEvent -> DOM.Event.Types.Event
foreign import readCustomEvent :: Data.Foreign.Foreign -> Data.Foreign.F DOM.Event.Types.CustomEvent
foreign import customEventToEvent :: DOM.Event.Types.CustomEvent -> DOM.Event.Types.Event
foreign import readCSSFontFaceLoadEvent :: Data.Foreign.Foreign -> Data.Foreign.F DOM.Event.Types.CSSFontFaceLoadEvent
foreign import cssFontFaceLoadEventToEvent :: DOM.Event.Types.CSSFontFaceLoadEvent -> DOM.Event.Types.Event
foreign import readCompositionEvent :: Data.Foreign.Foreign -> Data.Foreign.F DOM.Event.Types.CompositionEvent
foreign import compositionEventToEvent :: DOM.Event.Types.CompositionEvent -> DOM.Event.Types.Event
foreign import readCloseEvent :: Data.Foreign.Foreign -> Data.Foreign.F DOM.Event.Types.CloseEvent
foreign import closeEventToEvent :: DOM.Event.Types.CloseEvent -> DOM.Event.Types.Event
foreign import readClipboardEvent :: Data.Foreign.Foreign -> Data.Foreign.F DOM.Event.Types.ClipboardEvent
foreign import clipboardEventToEvent :: DOM.Event.Types.ClipboardEvent -> DOM.Event.Types.Event
foreign import readBlobEvent :: Data.Foreign.Foreign -> Data.Foreign.F DOM.Event.Types.BlobEvent
foreign import blobEventToEvent :: DOM.Event.Types.BlobEvent -> DOM.Event.Types.Event
foreign import readBeforeUnloadEvent :: Data.Foreign.Foreign -> Data.Foreign.F DOM.Event.Types.BeforeUnloadEvent
foreign import beforeUnloadEventToEvent :: DOM.Event.Types.BeforeUnloadEvent -> DOM.Event.Types.Event
foreign import readBeforeInputEvent :: Data.Foreign.Foreign -> Data.Foreign.F DOM.Event.Types.BeforeInputEvent
foreign import beforeInputEventToEvent :: DOM.Event.Types.BeforeInputEvent -> DOM.Event.Types.Event
foreign import readAudioProcessingEvent :: Data.Foreign.Foreign -> Data.Foreign.F DOM.Event.Types.AudioProcessingEvent
foreign import audioProcessingEventToEvent :: DOM.Event.Types.AudioProcessingEvent -> DOM.Event.Types.Event
foreign import readAnimationEvent :: Data.Foreign.Foreign -> Data.Foreign.F DOM.Event.Types.AnimationEvent
foreign import animationEventToEvent :: DOM.Event.Types.AnimationEvent -> DOM.Event.Types.Event
foreign import readEventTarget :: Data.Foreign.Foreign -> Data.Foreign.F DOM.Event.Types.EventTarget
foreign import instance eqEventType :: Prelude.Eq DOM.Event.Types.EventType
foreign import instance ordEventType :: Prelude.Ord DOM.Event.Types.EventType
foreign import instance isForeignEventTarget :: Data.Foreign.Class.IsForeign DOM.Event.Types.EventTarget
foreign import instance isForeignAnimationEvent :: Data.Foreign.Class.IsForeign DOM.Event.Types.AnimationEvent
foreign import instance isForeignAudioProcessingEvent :: Data.Foreign.Class.IsForeign DOM.Event.Types.AudioProcessingEvent
foreign import instance isForeignBeforeInputEvent :: Data.Foreign.Class.IsForeign DOM.Event.Types.BeforeInputEvent
foreign import instance isForeignBeforeUnloadEvent :: Data.Foreign.Class.IsForeign DOM.Event.Types.BeforeUnloadEvent
foreign import instance isForeignBlobEvent :: Data.Foreign.Class.IsForeign DOM.Event.Types.BlobEvent
foreign import instance isForeignClipboardEvent :: Data.Foreign.Class.IsForeign DOM.Event.Types.ClipboardEvent
foreign import instance isForeignCloseEvent :: Data.Foreign.Class.IsForeign DOM.Event.Types.CloseEvent
foreign import instance isForeignCompositionEvent :: Data.Foreign.Class.IsForeign DOM.Event.Types.CompositionEvent
foreign import instance isForeignCSSFontFaceLoadEvent :: Data.Foreign.Class.IsForeign DOM.Event.Types.CSSFontFaceLoadEvent
foreign import instance isForeignCustomEvent :: Data.Foreign.Class.IsForeign DOM.Event.Types.CustomEvent
foreign import instance isForeignDeviceLightEvent :: Data.Foreign.Class.IsForeign DOM.Event.Types.DeviceLightEvent
foreign import instance isForeignDeviceMotionEvent :: Data.Foreign.Class.IsForeign DOM.Event.Types.DeviceMotionEvent
foreign import instance isForeignDeviceOrientationEvent :: Data.Foreign.Class.IsForeign DOM.Event.Types.DeviceOrientationEvent
foreign import instance isForeignDeviceProximityEvent :: Data.Foreign.Class.IsForeign DOM.Event.Types.DeviceProximityEvent
foreign import instance isForeignDOMTransactionEvent :: Data.Foreign.Class.IsForeign DOM.Event.Types.DOMTransactionEvent
foreign import instance isForeignDragEvent :: Data.Foreign.Class.IsForeign DOM.Event.Types.DragEvent
foreign import instance isForeignEditingBeforeInputEvent :: Data.Foreign.Class.IsForeign DOM.Event.Types.EditingBeforeInputEvent
foreign import instance isForeignErrorEvent :: Data.Foreign.Class.IsForeign DOM.Event.Types.ErrorEvent
foreign import instance isForeignFetchEvent :: Data.Foreign.Class.IsForeign DOM.Event.Types.FetchEvent
foreign import instance isForeignFocusEvent :: Data.Foreign.Class.IsForeign DOM.Event.Types.FocusEvent
foreign import instance isForeignGamepadEvent :: Data.Foreign.Class.IsForeign DOM.Event.Types.GamepadEvent
foreign import instance isForeignHashChangeEvent :: Data.Foreign.Class.IsForeign DOM.Event.Types.HashChangeEvent
foreign import instance isForeignIDBVersionChangeEvent :: Data.Foreign.Class.IsForeign DOM.Event.Types.IDBVersionChangeEvent
foreign import instance isForeignInputEvent :: Data.Foreign.Class.IsForeign DOM.Event.Types.InputEvent
foreign import instance isForeignKeyboardEvent :: Data.Foreign.Class.IsForeign DOM.Event.Types.KeyboardEvent
foreign import instance isForeignMediaStreamEvent :: Data.Foreign.Class.IsForeign DOM.Event.Types.MediaStreamEvent
foreign import instance isForeignMessageEvent :: Data.Foreign.Class.IsForeign DOM.Event.Types.MessageEvent
foreign import instance isForeignMouseEvent :: Data.Foreign.Class.IsForeign DOM.Event.Types.MouseEvent
foreign import instance isForeignMutationEvent :: Data.Foreign.Class.IsForeign DOM.Event.Types.MutationEvent
foreign import instance isForeignOfflineAudioCompletionEvent :: Data.Foreign.Class.IsForeign DOM.Event.Types.OfflineAudioCompletionEvent
foreign import instance isForeignPageTransitionEvent :: Data.Foreign.Class.IsForeign DOM.Event.Types.PageTransitionEvent
foreign import instance isForeignPointerEvent :: Data.Foreign.Class.IsForeign DOM.Event.Types.PointerEvent
foreign import instance isForeignPopStateEvent :: Data.Foreign.Class.IsForeign DOM.Event.Types.PopStateEvent
foreign import instance isForeignProgressEvent :: Data.Foreign.Class.IsForeign DOM.Event.Types.ProgressEvent
foreign import instance isForeignRelatedEvent :: Data.Foreign.Class.IsForeign DOM.Event.Types.RelatedEvent
foreign import instance isForeignRTCDataChannelEvent :: Data.Foreign.Class.IsForeign DOM.Event.Types.RTCDataChannelEvent
foreign import instance isForeignRTCIdentityErrorEvent :: Data.Foreign.Class.IsForeign DOM.Event.Types.RTCIdentityErrorEvent
foreign import instance isForeignRTCIdentityEvent :: Data.Foreign.Class.IsForeign DOM.Event.Types.RTCIdentityEvent
foreign import instance isForeignRTCPeerConnectionIceEvent :: Data.Foreign.Class.IsForeign DOM.Event.Types.RTCPeerConnectionIceEvent
foreign import instance isForeignSensorEvent :: Data.Foreign.Class.IsForeign DOM.Event.Types.SensorEvent
foreign import instance isForeignStorageEvent :: Data.Foreign.Class.IsForeign DOM.Event.Types.StorageEvent
foreign import instance isForeignSVGEvent :: Data.Foreign.Class.IsForeign DOM.Event.Types.SVGEvent
foreign import instance isForeignSVGZoomEvent :: Data.Foreign.Class.IsForeign DOM.Event.Types.SVGZoomEvent
foreign import instance isForeignTimeEvent :: Data.Foreign.Class.IsForeign DOM.Event.Types.TimeEvent
foreign import instance isForeignTouchEvent :: Data.Foreign.Class.IsForeign DOM.Event.Types.TouchEvent
foreign import instance isForeignTransitionEvent :: Data.Foreign.Class.IsForeign DOM.Event.Types.TransitionEvent
foreign import instance isForeignUIEvent :: Data.Foreign.Class.IsForeign DOM.Event.Types.UIEvent
foreign import instance isForeignUserProximityEvent :: Data.Foreign.Class.IsForeign DOM.Event.Types.UserProximityEvent
foreign import instance isForeignWheelEvent :: Data.Foreign.Class.IsForeign DOM.Event.Types.WheelEvent