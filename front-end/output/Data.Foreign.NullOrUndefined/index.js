// Generated by psc version 0.7.0.0
"use strict";
var Prelude = require("Prelude");
var Data_Foreign = require("Data.Foreign");
var Data_Maybe = require("Data.Maybe");
var Data_Either = require("Data.Either");
var NullOrUndefined = function (x) {
    return x;
};
var runNullOrUndefined = function (_274) {
    return _274;
};
var readNullOrUndefined = function (f) {
    return function (value) {
        if (Prelude["||"](Prelude.booleanAlgebraBoolean)(Data_Foreign.isNull(value))(Data_Foreign.isUndefined(value))) {
            return Prelude.pure(Data_Either.applicativeEither)(Data_Maybe.Nothing.value);
        };
        return Prelude["<$>"](Data_Either.functorEither)(Prelude["<<<"](Prelude.semigroupoidFn)(NullOrUndefined)(Data_Maybe.Just.create))(f(value));
    };
};
module.exports = {
    NullOrUndefined: NullOrUndefined, 
    readNullOrUndefined: readNullOrUndefined, 
    runNullOrUndefined: runNullOrUndefined
};