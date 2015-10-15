// Generated by psc version 0.7.0.0
"use strict";
var Prelude = require("Prelude");
var Data_Monoid = require("Data.Monoid");
var Control_Comonad = require("Control.Comonad");
var Control_Extend = require("Control.Extend");
var Data_Functor_Invariant = require("Data.Functor.Invariant");
var Dual = function (x) {
    return x;
};
var showDual = function (__dict_Show_0) {
    return new Prelude.Show(function (_122) {
        return "Dual (" + (Prelude.show(__dict_Show_0)(_122) + ")");
    });
};
var semigroupDual = function (__dict_Semigroup_1) {
    return new Prelude.Semigroup(function (_123) {
        return function (_124) {
            return Prelude["<>"](__dict_Semigroup_1)(_124)(_123);
        };
    });
};
var runDual = function (_111) {
    return _111;
};
var monoidDual = function (__dict_Monoid_3) {
    return new Data_Monoid.Monoid(function () {
        return semigroupDual(__dict_Monoid_3["__superclass_Prelude.Semigroup_0"]());
    }, Data_Monoid.mempty(__dict_Monoid_3));
};
var invariantDual = new Data_Functor_Invariant.Invariant(function (f) {
    return function (_120) {
        return function (_121) {
            return f(_121);
        };
    };
});
var functorDual = new Prelude.Functor(function (f) {
    return function (_116) {
        return f(_116);
    };
});
var extendDual = new Control_Extend.Extend(function () {
    return functorDual;
}, function (f) {
    return function (x) {
        return f(x);
    };
});
var eqDual = function (__dict_Eq_4) {
    return new Prelude.Eq(function (_112) {
        return function (_113) {
            return Prelude["=="](__dict_Eq_4)(_112)(_113);
        };
    });
};
var ordDual = function (__dict_Ord_2) {
    return new Prelude.Ord(function () {
        return eqDual(__dict_Ord_2["__superclass_Prelude.Eq_0"]());
    }, function (_114) {
        return function (_115) {
            return Prelude.compare(__dict_Ord_2)(_114)(_115);
        };
    });
};
var comonadDual = new Control_Comonad.Comonad(function () {
    return extendDual;
}, runDual);
var applyDual = new Prelude.Apply(function () {
    return functorDual;
}, function (_117) {
    return function (_118) {
        return _117(_118);
    };
});
var bindDual = new Prelude.Bind(function () {
    return applyDual;
}, function (_119) {
    return function (f) {
        return f(_119);
    };
});
var applicativeDual = new Prelude.Applicative(function () {
    return applyDual;
}, Dual);
var monadDual = new Prelude.Monad(function () {
    return applicativeDual;
}, function () {
    return bindDual;
});
module.exports = {
    Dual: Dual, 
    runDual: runDual, 
    eqDual: eqDual, 
    ordDual: ordDual, 
    functorDual: functorDual, 
    applyDual: applyDual, 
    applicativeDual: applicativeDual, 
    bindDual: bindDual, 
    monadDual: monadDual, 
    extendDual: extendDual, 
    comonadDual: comonadDual, 
    invariantDual: invariantDual, 
    showDual: showDual, 
    semigroupDual: semigroupDual, 
    monoidDual: monoidDual
};