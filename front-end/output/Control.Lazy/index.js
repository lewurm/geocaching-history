// Generated by psc version 0.7.0.0
"use strict";
var Prelude = require("Prelude");
var Lazy = function (defer) {
    this.defer = defer;
};
var defer = function (dict) {
    return dict.defer;
};
var fix = function (__dict_Lazy_0) {
    return function (f) {
        return defer(__dict_Lazy_0)(function (_64) {
            return f(fix(__dict_Lazy_0)(f));
        });
    };
};
module.exports = {
    Lazy: Lazy, 
    fix: fix, 
    defer: defer
};
