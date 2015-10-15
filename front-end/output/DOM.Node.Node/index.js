// Generated by psc version 0.7.0.0
"use strict";
var $foreign = require("./foreign");
var Prelude = require("Prelude");
var Data_Maybe_Unsafe = require("Data.Maybe.Unsafe");
var Data_Enum = require("Data.Enum");
var Control_Monad_Eff = require("Control.Monad.Eff");
var Data_Nullable = require("Data.Nullable");
var DOM = require("DOM");
var DOM_Node_NodeType = require("DOM.Node.NodeType");
var DOM_Node_Types = require("DOM.Node.Types");
var nodeType = Prelude["<<<"](Prelude.semigroupoidFn)(Data_Maybe_Unsafe.fromJust)(Prelude["<<<"](Prelude.semigroupoidFn)(Data_Enum.toEnum(DOM_Node_NodeType.enumNodeType))($foreign.nodeTypeIndex));
module.exports = {
    nodeType: nodeType, 
    removeChild: $foreign.removeChild, 
    replaceChild: $foreign.replaceChild, 
    appendChild: $foreign.appendChild, 
    insertBefore: $foreign.insertBefore, 
    isDefaultNamespace: $foreign.isDefaultNamespace, 
    lookupNamespaceURI: $foreign.lookupNamespaceURI, 
    lookupPrefix: $foreign.lookupPrefix, 
    contains: $foreign.contains, 
    compareDocumentPositionBits: $foreign.compareDocumentPositionBits, 
    isEqualNode: $foreign.isEqualNode, 
    deepClone: $foreign.deepClone, 
    clone: $foreign.clone, 
    normalize: $foreign.normalize, 
    setTextContent: $foreign.setTextContent, 
    textContent: $foreign.textContent, 
    setNodeValue: $foreign.setNodeValue, 
    nodeValue: $foreign.nodeValue, 
    nextSibling: $foreign.nextSibling, 
    previousSibling: $foreign.previousSibling, 
    lastChild: $foreign.lastChild, 
    firstChild: $foreign.firstChild, 
    childNodes: $foreign.childNodes, 
    hasChildNodes: $foreign.hasChildNodes, 
    parentElement: $foreign.parentElement, 
    parentNode: $foreign.parentNode, 
    ownerDocument: $foreign.ownerDocument, 
    baseURI: $foreign.baseURI, 
    nodeName: $foreign.nodeName, 
    nodeTypeIndex: $foreign.nodeTypeIndex
};
