// Generated by psc version 0.7.0.0
"use strict";
var $foreign = require("./foreign");
var Prelude = require("Prelude");
var $$Math = require("Math");
var Data_Maybe_Unsafe = require("Data.Maybe.Unsafe");
var Data_Int_Bits = require("Data.Int.Bits");
var Data_Maybe = require("Data.Maybe");
var odd = function (x) {
    return Prelude["/="](Prelude.eqInt)(x & 1)(0);
};
var fromString = $foreign.fromStringImpl(Data_Maybe.Just.create)(Data_Maybe.Nothing.value);
var fromNumber = $foreign.fromNumberImpl(Data_Maybe.Just.create)(Data_Maybe.Nothing.value);
var unsafeClamp = function (x) {
    if (x >= $foreign.toNumber(Prelude.top(Prelude.boundedInt))) {
        return Prelude.top(Prelude.boundedInt);
    };
    if (x <= $foreign.toNumber(Prelude.bottom(Prelude.boundedInt))) {
        return Prelude.bottom(Prelude.boundedInt);
    };
    if (Prelude.otherwise) {
        return Data_Maybe_Unsafe.fromJust(fromNumber(x));
    };
    throw new Error("Failed pattern match at /home/travis/build/lewurm/geocaching-history/front-end/bower_components/purescript-integers/src/Data/Int.purs line 48, column 1 - line 49, column 1: " + [ x.constructor.name ]);
};
var round = Prelude["<<<"](Prelude.semigroupoidFn)(unsafeClamp)($$Math.round);
var floor = Prelude["<<<"](Prelude.semigroupoidFn)(unsafeClamp)($$Math.floor);
var even = function (x) {
    return Prelude["=="](Prelude.eqInt)(x & 1)(0);
};
var ceil = Prelude["<<<"](Prelude.semigroupoidFn)(unsafeClamp)($$Math.ceil);
module.exports = {
    odd: odd, 
    even: even, 
    fromString: fromString, 
    round: round, 
    floor: floor, 
    ceil: ceil, 
    fromNumber: fromNumber, 
    toNumber: $foreign.toNumber
};
