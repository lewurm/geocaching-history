module React.DOM.Props (Props(), onWheel, onScroll, onTouchStart, onTouchMove, onTouchEnd, onTouchCancel, onMouseUp, onMouseOver, onMouseOut, onMouseMove, onMouseLeave, onMouseEnter, onMouseDown, onDrop, onDragStart, onDragOver, onDragLeave, onDragExit, onDragEnter, onDragEnd, onDrag, onDoubleClick, onClick, onSubmit, onInput, onChange, onBlur, onFocus, onKeyUp, onKeyPress, onKeyDown, onPaste, onCut, onCopy, wmode, width, value, useMap, _type, title, target, tabIndex, step, start, srcSet, srcDoc, src, spellCheck, span, sizes, size, shape, selected, seamless, scrolling, scope, sandbox, rowSpan, rows, role, required, rel, readOnly, radioGroup, preload, poster, placeholder, pattern, open, noValidate, name, muted, multiple, min, method, mediaGroup, media, maxLength, max, marginWidth, marginHeight, manifest, loop, list, lang, label, key, _id, icon, httpEquiv, htmlFor, hrefLang, href, hidden, height, frameBorder, formTarget, formNoValidate, formMethod, formEncType, formAction, form, encType, draggable, download, disabled, dir, defer, dateTime, crossOrigin, coords, controls, contextMenu, contentEditable, content, colSpan, cols, className, classID, checked, charSet, cellSpacing, cellPadding, autoPlay, autoFocus, autoComplete, async, alt, allowTransparency, allowFullScreen, action, accessKey, acceptCharset, accept, dangerouslySetInnerHTML, style, _data, aria, unsafeUnfoldProps, unsafeMkProps) where
import React.DOM.Props ()
import React ()
import Prim ()
import Prelude ()
import React ()
foreign import data Props :: *
foreign import onWheel :: forall eff props state result. (React.Event -> React.EventHandlerContext eff props state result) -> React.DOM.Props.Props
foreign import onScroll :: forall eff props state result. (React.Event -> React.EventHandlerContext eff props state result) -> React.DOM.Props.Props
foreign import onTouchStart :: forall eff props state result. (React.Event -> React.EventHandlerContext eff props state result) -> React.DOM.Props.Props
foreign import onTouchMove :: forall eff props state result. (React.Event -> React.EventHandlerContext eff props state result) -> React.DOM.Props.Props
foreign import onTouchEnd :: forall eff props state result. (React.Event -> React.EventHandlerContext eff props state result) -> React.DOM.Props.Props
foreign import onTouchCancel :: forall eff props state result. (React.Event -> React.EventHandlerContext eff props state result) -> React.DOM.Props.Props
foreign import onMouseUp :: forall eff props state result. (React.MouseEvent -> React.EventHandlerContext eff props state result) -> React.DOM.Props.Props
foreign import onMouseOver :: forall eff props state result. (React.MouseEvent -> React.EventHandlerContext eff props state result) -> React.DOM.Props.Props
foreign import onMouseOut :: forall eff props state result. (React.MouseEvent -> React.EventHandlerContext eff props state result) -> React.DOM.Props.Props
foreign import onMouseMove :: forall eff props state result. (React.MouseEvent -> React.EventHandlerContext eff props state result) -> React.DOM.Props.Props
foreign import onMouseLeave :: forall eff props state result. (React.MouseEvent -> React.EventHandlerContext eff props state result) -> React.DOM.Props.Props
foreign import onMouseEnter :: forall eff props state result. (React.MouseEvent -> React.EventHandlerContext eff props state result) -> React.DOM.Props.Props
foreign import onMouseDown :: forall eff props state result. (React.MouseEvent -> React.EventHandlerContext eff props state result) -> React.DOM.Props.Props
foreign import onDrop :: forall eff props state result. (React.Event -> React.EventHandlerContext eff props state result) -> React.DOM.Props.Props
foreign import onDragStart :: forall eff props state result. (React.Event -> React.EventHandlerContext eff props state result) -> React.DOM.Props.Props
foreign import onDragOver :: forall eff props state result. (React.Event -> React.EventHandlerContext eff props state result) -> React.DOM.Props.Props
foreign import onDragLeave :: forall eff props state result. (React.Event -> React.EventHandlerContext eff props state result) -> React.DOM.Props.Props
foreign import onDragExit :: forall eff props state result. (React.Event -> React.EventHandlerContext eff props state result) -> React.DOM.Props.Props
foreign import onDragEnter :: forall eff props state result. (React.Event -> React.EventHandlerContext eff props state result) -> React.DOM.Props.Props
foreign import onDragEnd :: forall eff props state result. (React.Event -> React.EventHandlerContext eff props state result) -> React.DOM.Props.Props
foreign import onDrag :: forall eff props state result. (React.Event -> React.EventHandlerContext eff props state result) -> React.DOM.Props.Props
foreign import onDoubleClick :: forall eff props state result. (React.Event -> React.EventHandlerContext eff props state result) -> React.DOM.Props.Props
foreign import onClick :: forall eff props state result. (React.Event -> React.EventHandlerContext eff props state result) -> React.DOM.Props.Props
foreign import onSubmit :: forall eff props state result. (React.Event -> React.EventHandlerContext eff props state result) -> React.DOM.Props.Props
foreign import onInput :: forall eff props state result. (React.Event -> React.EventHandlerContext eff props state result) -> React.DOM.Props.Props
foreign import onChange :: forall eff props state result. (React.Event -> React.EventHandlerContext eff props state result) -> React.DOM.Props.Props
foreign import onBlur :: forall eff props state result. (React.Event -> React.EventHandlerContext eff props state result) -> React.DOM.Props.Props
foreign import onFocus :: forall eff props state result. (React.Event -> React.EventHandlerContext eff props state result) -> React.DOM.Props.Props
foreign import onKeyUp :: forall eff props state result. (React.KeyboardEvent -> React.EventHandlerContext eff props state result) -> React.DOM.Props.Props
foreign import onKeyPress :: forall eff props state result. (React.KeyboardEvent -> React.EventHandlerContext eff props state result) -> React.DOM.Props.Props
foreign import onKeyDown :: forall eff props state result. (React.KeyboardEvent -> React.EventHandlerContext eff props state result) -> React.DOM.Props.Props
foreign import onPaste :: forall eff props state result. (React.Event -> React.EventHandlerContext eff props state result) -> React.DOM.Props.Props
foreign import onCut :: forall eff props state result. (React.Event -> React.EventHandlerContext eff props state result) -> React.DOM.Props.Props
foreign import onCopy :: forall eff props state result. (React.Event -> React.EventHandlerContext eff props state result) -> React.DOM.Props.Props
foreign import wmode :: Prim.String -> React.DOM.Props.Props
foreign import width :: Prim.String -> React.DOM.Props.Props
foreign import value :: Prim.String -> React.DOM.Props.Props
foreign import useMap :: Prim.String -> React.DOM.Props.Props
foreign import _type :: Prim.String -> React.DOM.Props.Props
foreign import title :: Prim.String -> React.DOM.Props.Props
foreign import target :: Prim.String -> React.DOM.Props.Props
foreign import tabIndex :: Prim.String -> React.DOM.Props.Props
foreign import step :: Prim.String -> React.DOM.Props.Props
foreign import start :: Prim.String -> React.DOM.Props.Props
foreign import srcSet :: Prim.String -> React.DOM.Props.Props
foreign import srcDoc :: Prim.String -> React.DOM.Props.Props
foreign import src :: Prim.String -> React.DOM.Props.Props
foreign import spellCheck :: Prim.String -> React.DOM.Props.Props
foreign import span :: Prim.String -> React.DOM.Props.Props
foreign import sizes :: Prim.String -> React.DOM.Props.Props
foreign import size :: Prim.String -> React.DOM.Props.Props
foreign import shape :: Prim.String -> React.DOM.Props.Props
foreign import selected :: Prim.String -> React.DOM.Props.Props
foreign import seamless :: Prim.String -> React.DOM.Props.Props
foreign import scrolling :: Prim.String -> React.DOM.Props.Props
foreign import scope :: Prim.String -> React.DOM.Props.Props
foreign import sandbox :: Prim.String -> React.DOM.Props.Props
foreign import rowSpan :: Prim.String -> React.DOM.Props.Props
foreign import rows :: Prim.String -> React.DOM.Props.Props
foreign import role :: Prim.String -> React.DOM.Props.Props
foreign import required :: Prim.String -> React.DOM.Props.Props
foreign import rel :: Prim.String -> React.DOM.Props.Props
foreign import readOnly :: Prim.String -> React.DOM.Props.Props
foreign import radioGroup :: Prim.String -> React.DOM.Props.Props
foreign import preload :: Prim.String -> React.DOM.Props.Props
foreign import poster :: Prim.String -> React.DOM.Props.Props
foreign import placeholder :: Prim.String -> React.DOM.Props.Props
foreign import pattern :: Prim.String -> React.DOM.Props.Props
foreign import open :: Prim.String -> React.DOM.Props.Props
foreign import noValidate :: Prim.String -> React.DOM.Props.Props
foreign import name :: Prim.String -> React.DOM.Props.Props
foreign import muted :: Prim.String -> React.DOM.Props.Props
foreign import multiple :: Prim.String -> React.DOM.Props.Props
foreign import min :: Prim.String -> React.DOM.Props.Props
foreign import method :: Prim.String -> React.DOM.Props.Props
foreign import mediaGroup :: Prim.String -> React.DOM.Props.Props
foreign import media :: Prim.String -> React.DOM.Props.Props
foreign import maxLength :: Prim.String -> React.DOM.Props.Props
foreign import max :: Prim.String -> React.DOM.Props.Props
foreign import marginWidth :: Prim.String -> React.DOM.Props.Props
foreign import marginHeight :: Prim.String -> React.DOM.Props.Props
foreign import manifest :: Prim.String -> React.DOM.Props.Props
foreign import loop :: Prim.String -> React.DOM.Props.Props
foreign import list :: Prim.String -> React.DOM.Props.Props
foreign import lang :: Prim.String -> React.DOM.Props.Props
foreign import label :: Prim.String -> React.DOM.Props.Props
foreign import key :: Prim.String -> React.DOM.Props.Props
foreign import _id :: Prim.String -> React.DOM.Props.Props
foreign import icon :: Prim.String -> React.DOM.Props.Props
foreign import httpEquiv :: Prim.String -> React.DOM.Props.Props
foreign import htmlFor :: Prim.String -> React.DOM.Props.Props
foreign import hrefLang :: Prim.String -> React.DOM.Props.Props
foreign import href :: Prim.String -> React.DOM.Props.Props
foreign import hidden :: Prim.String -> React.DOM.Props.Props
foreign import height :: Prim.String -> React.DOM.Props.Props
foreign import frameBorder :: Prim.String -> React.DOM.Props.Props
foreign import formTarget :: Prim.String -> React.DOM.Props.Props
foreign import formNoValidate :: Prim.String -> React.DOM.Props.Props
foreign import formMethod :: Prim.String -> React.DOM.Props.Props
foreign import formEncType :: Prim.String -> React.DOM.Props.Props
foreign import formAction :: Prim.String -> React.DOM.Props.Props
foreign import form :: Prim.String -> React.DOM.Props.Props
foreign import encType :: Prim.String -> React.DOM.Props.Props
foreign import draggable :: Prim.String -> React.DOM.Props.Props
foreign import download :: Prim.String -> React.DOM.Props.Props
foreign import disabled :: Prim.Boolean -> React.DOM.Props.Props
foreign import dir :: Prim.String -> React.DOM.Props.Props
foreign import defer :: Prim.String -> React.DOM.Props.Props
foreign import dateTime :: Prim.String -> React.DOM.Props.Props
foreign import crossOrigin :: Prim.String -> React.DOM.Props.Props
foreign import coords :: Prim.String -> React.DOM.Props.Props
foreign import controls :: Prim.String -> React.DOM.Props.Props
foreign import contextMenu :: Prim.String -> React.DOM.Props.Props
foreign import contentEditable :: Prim.String -> React.DOM.Props.Props
foreign import content :: Prim.String -> React.DOM.Props.Props
foreign import colSpan :: Prim.String -> React.DOM.Props.Props
foreign import cols :: Prim.String -> React.DOM.Props.Props
foreign import className :: Prim.String -> React.DOM.Props.Props
foreign import classID :: Prim.String -> React.DOM.Props.Props
foreign import checked :: Prim.String -> React.DOM.Props.Props
foreign import charSet :: Prim.String -> React.DOM.Props.Props
foreign import cellSpacing :: Prim.String -> React.DOM.Props.Props
foreign import cellPadding :: Prim.String -> React.DOM.Props.Props
foreign import autoPlay :: Prim.String -> React.DOM.Props.Props
foreign import autoFocus :: Prim.Boolean -> React.DOM.Props.Props
foreign import autoComplete :: Prim.String -> React.DOM.Props.Props
foreign import async :: Prim.String -> React.DOM.Props.Props
foreign import alt :: Prim.String -> React.DOM.Props.Props
foreign import allowTransparency :: Prim.String -> React.DOM.Props.Props
foreign import allowFullScreen :: Prim.String -> React.DOM.Props.Props
foreign import action :: Prim.String -> React.DOM.Props.Props
foreign import accessKey :: Prim.String -> React.DOM.Props.Props
foreign import acceptCharset :: Prim.String -> React.DOM.Props.Props
foreign import accept :: Prim.String -> React.DOM.Props.Props
foreign import dangerouslySetInnerHTML :: { __html :: Prim.String } -> React.DOM.Props.Props
foreign import style :: forall style. {  | style } -> React.DOM.Props.Props
foreign import _data :: forall dataAttrs. {  | dataAttrs } -> React.DOM.Props.Props
foreign import aria :: forall ariaAttrs. {  | ariaAttrs } -> React.DOM.Props.Props
foreign import unsafeUnfoldProps :: forall vals. Prim.String -> {  | vals } -> React.DOM.Props.Props
foreign import unsafeMkProps :: forall val. Prim.String -> val -> React.DOM.Props.Props