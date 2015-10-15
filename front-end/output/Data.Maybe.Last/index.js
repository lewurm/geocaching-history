// Generated by psc version 0.7.0.0
"use strict";
var Prelude = require("Prelude");
var Control_Extend = require("Control.Extend");
var Data_Functor_Invariant = require("Data.Functor.Invariant");
var Control_Comonad = require("Control.Comonad");
var Data_Maybe = require("Data.Maybe");
var Data_Monoid = require("Data.Monoid");
var Last = function (x) {
    return x;
};
var showLast = function (__dict_Show_0) {
    return new Prelude.Show(function (_199) {
        return "Last (" + (Prelude.show(Data_Maybe.showMaybe(__dict_Show_0))(_199) + ")");
    });
};
var semigroupLast = new Prelude.Semigroup(function (last) {
    return function (_200) {
        if (_200 instanceof Data_Maybe.Just) {
            return _200;
        };
        if (_200 instanceof Data_Maybe.Nothing) {
            return last;
        };
        throw new Error("Failed pattern match at /home/travis/build/lewurm/geocaching-history/front-end/bower_components/purescript-maybe/src/Data/Maybe/Last.purs line 57, column 1 - line 61, column 1: " + [ last.constructor.name, _200.constructor.name ]);
    };
});
var runLast = function (_189) {
    return _189;
};
var monoidLast = new Data_Monoid.Monoid(function () {
    return semigroupLast;
}, Data_Maybe.Nothing.value);
var functorLast = new Prelude.Functor(function (f) {
    return function (_194) {
        return Prelude["<$>"](Data_Maybe.functorMaybe)(f)(_194);
    };
});
var invariantLast = new Data_Functor_Invariant.Invariant(Data_Functor_Invariant.imapF(functorLast));
var extendLast = new Control_Extend.Extend(function () {
    return functorLast;
}, function (f) {
    return function (_198) {
        return Control_Extend.extend(Data_Maybe.extendMaybe)(Prelude["<<<"](Prelude.semigroupoidFn)(f)(Last))(_198);
    };
});
var eqLast = function (__dict_Eq_2) {
    return new Prelude.Eq(function (_190) {
        return function (_191) {
            return Prelude["=="](Data_Maybe.eqMaybe(__dict_Eq_2))(_190)(_191);
        };
    });
};
var ordLast = function (__dict_Ord_1) {
    return new Prelude.Ord(function () {
        return eqLast(__dict_Ord_1["__superclass_Prelude.Eq_0"]());
    }, function (_192) {
        return function (_193) {
            return Prelude.compare(Data_Maybe.ordMaybe(__dict_Ord_1))(_192)(_193);
        };
    });
};
var boundedLast = function (__dict_Bounded_3) {
    return new Prelude.Bounded(Prelude.bottom(Data_Maybe.boundedMaybe(__dict_Bounded_3)), Prelude.top(Data_Maybe.boundedMaybe(__dict_Bounded_3)));
};
var applyLast = new Prelude.Apply(function () {
    return functorLast;
}, function (_195) {
    return function (_196) {
        return Prelude["<*>"](Data_Maybe.applyMaybe)(_195)(_196);
    };
});
var bindLast = new Prelude.Bind(function () {
    return applyLast;
}, function (_197) {
    return function (f) {
        return Prelude.bind(Data_Maybe.bindMaybe)(_197)(Prelude["<<<"](Prelude.semigroupoidFn)(runLast)(f));
    };
});
var applicativeLast = new Prelude.Applicative(function () {
    return applyLast;
}, Prelude["<<<"](Prelude.semigroupoidFn)(Last)(Prelude.pure(Data_Maybe.applicativeMaybe)));
var monadLast = new Prelude.Monad(function () {
    return applicativeLast;
}, function () {
    return bindLast;
});
module.exports = {
    Last: Last, 
    runLast: runLast, 
    eqLast: eqLast, 
    ordLast: ordLast, 
    boundedLast: boundedLast, 
    functorLast: functorLast, 
    applyLast: applyLast, 
    applicativeLast: applicativeLast, 
    bindLast: bindLast, 
    monadLast: monadLast, 
    extendLast: extendLast, 
    invariantLast: invariantLast, 
    showLast: showLast, 
    semigroupLast: semigroupLast, 
    monoidLast: monoidLast
};