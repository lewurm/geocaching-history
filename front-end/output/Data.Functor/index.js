// Generated by psc version 0.7.0.0
"use strict";
var Prelude = require("Prelude");
var $less$dollar = function (__dict_Functor_0) {
    return function (x) {
        return function (f) {
            return Prelude["<$>"](__dict_Functor_0)(Prelude["const"](x))(f);
        };
    };
};
var $dollar$greater = function (__dict_Functor_1) {
    return function (f) {
        return function (x) {
            return Prelude["<$>"](__dict_Functor_1)(Prelude["const"](x))(f);
        };
    };
};
module.exports = {
    "$>": $dollar$greater, 
    "<$": $less$dollar
};
