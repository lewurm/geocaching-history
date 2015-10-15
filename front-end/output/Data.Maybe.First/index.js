// Generated by psc version 0.7.0.0
"use strict";
var Prelude = require("Prelude");
var Control_Extend = require("Control.Extend");
var Data_Functor_Invariant = require("Data.Functor.Invariant");
var Control_Comonad = require("Control.Comonad");
var Data_Maybe = require("Data.Maybe");
var Data_Monoid = require("Data.Monoid");
var First = function (x) {
    return x;
};
var showFirst = function (__dict_Show_0) {
    return new Prelude.Show(function (_187) {
        return "First (" + (Prelude.show(Data_Maybe.showMaybe(__dict_Show_0))(_187) + ")");
    });
};
var semigroupFirst = new Prelude.Semigroup(function (_188) {
    return function (second) {
        if (_188 instanceof Data_Maybe.Just) {
            return _188;
        };
        return second;
    };
});
var runFirst = function (_177) {
    return _177;
};
var monoidFirst = new Data_Monoid.Monoid(function () {
    return semigroupFirst;
}, Data_Maybe.Nothing.value);
var functorFirst = new Prelude.Functor(function (f) {
    return function (_182) {
        return Prelude["<$>"](Data_Maybe.functorMaybe)(f)(_182);
    };
});
var invariantFirst = new Data_Functor_Invariant.Invariant(Data_Functor_Invariant.imapF(functorFirst));
var extendFirst = new Control_Extend.Extend(function () {
    return functorFirst;
}, function (f) {
    return function (_186) {
        return Control_Extend.extend(Data_Maybe.extendMaybe)(Prelude["<<<"](Prelude.semigroupoidFn)(f)(First))(_186);
    };
});
var eqFirst = function (__dict_Eq_2) {
    return new Prelude.Eq(function (_178) {
        return function (_179) {
            return Prelude["=="](Data_Maybe.eqMaybe(__dict_Eq_2))(_178)(_179);
        };
    });
};
var ordFirst = function (__dict_Ord_1) {
    return new Prelude.Ord(function () {
        return eqFirst(__dict_Ord_1["__superclass_Prelude.Eq_0"]());
    }, function (_180) {
        return function (_181) {
            return Prelude.compare(Data_Maybe.ordMaybe(__dict_Ord_1))(_180)(_181);
        };
    });
};
var boundedFirst = function (__dict_Bounded_3) {
    return new Prelude.Bounded(Prelude.bottom(Data_Maybe.boundedMaybe(__dict_Bounded_3)), Prelude.top(Data_Maybe.boundedMaybe(__dict_Bounded_3)));
};
var applyFirst = new Prelude.Apply(function () {
    return functorFirst;
}, function (_183) {
    return function (_184) {
        return Prelude["<*>"](Data_Maybe.applyMaybe)(_183)(_184);
    };
});
var bindFirst = new Prelude.Bind(function () {
    return applyFirst;
}, function (_185) {
    return function (f) {
        return Prelude.bind(Data_Maybe.bindMaybe)(_185)(Prelude["<<<"](Prelude.semigroupoidFn)(runFirst)(f));
    };
});
var applicativeFirst = new Prelude.Applicative(function () {
    return applyFirst;
}, Prelude["<<<"](Prelude.semigroupoidFn)(First)(Prelude.pure(Data_Maybe.applicativeMaybe)));
var monadFirst = new Prelude.Monad(function () {
    return applicativeFirst;
}, function () {
    return bindFirst;
});
module.exports = {
    First: First, 
    runFirst: runFirst, 
    eqFirst: eqFirst, 
    ordFirst: ordFirst, 
    boundedFirst: boundedFirst, 
    functorFirst: functorFirst, 
    applyFirst: applyFirst, 
    applicativeFirst: applicativeFirst, 
    bindFirst: bindFirst, 
    monadFirst: monadFirst, 
    extendFirst: extendFirst, 
    invariantFirst: invariantFirst, 
    showFirst: showFirst, 
    semigroupFirst: semigroupFirst, 
    monoidFirst: monoidFirst
};
