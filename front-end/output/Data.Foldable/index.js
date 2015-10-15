// Generated by psc version 0.7.0.0
"use strict";
var $foreign = require("./foreign");
var Prelude = require("Prelude");
var Data_Monoid = require("Data.Monoid");
var Control_Apply = require("Control.Apply");
var Data_Monoid_Disj = require("Data.Monoid.Disj");
var Data_Monoid_Conj = require("Data.Monoid.Conj");
var Data_Maybe = require("Data.Maybe");
var Data_Maybe_First = require("Data.Maybe.First");
var Data_Maybe_Last = require("Data.Maybe.Last");
var Data_Monoid_Additive = require("Data.Monoid.Additive");
var Data_Monoid_Dual = require("Data.Monoid.Dual");
var Data_Monoid_Multiplicative = require("Data.Monoid.Multiplicative");
var Foldable = function (foldMap, foldl, foldr) {
    this.foldMap = foldMap;
    this.foldl = foldl;
    this.foldr = foldr;
};
var foldr = function (dict) {
    return dict.foldr;
};
var traverse_ = function (__dict_Applicative_0) {
    return function (__dict_Foldable_1) {
        return function (f) {
            return foldr(__dict_Foldable_1)(Prelude["<<<"](Prelude.semigroupoidFn)(Control_Apply["*>"](__dict_Applicative_0["__superclass_Prelude.Apply_0"]()))(f))(Prelude.pure(__dict_Applicative_0)(Prelude.unit));
        };
    };
};
var for_ = function (__dict_Applicative_2) {
    return function (__dict_Foldable_3) {
        return Prelude.flip(traverse_(__dict_Applicative_2)(__dict_Foldable_3));
    };
};
var sequence_ = function (__dict_Applicative_4) {
    return function (__dict_Foldable_5) {
        return traverse_(__dict_Applicative_4)(__dict_Foldable_5)(Prelude.id(Prelude.categoryFn));
    };
};
var foldl = function (dict) {
    return dict.foldl;
};
var intercalate = function (__dict_Foldable_6) {
    return function (__dict_Monoid_7) {
        return function (sep) {
            return function (xs) {
                var go = function (_225) {
                    return function (x) {
                        if (_225.init) {
                            return {
                                init: false, 
                                acc: x
                            };
                        };
                        return {
                            init: false, 
                            acc: Prelude["<>"](__dict_Monoid_7["__superclass_Prelude.Semigroup_0"]())(_225.acc)(Prelude["<>"](__dict_Monoid_7["__superclass_Prelude.Semigroup_0"]())(sep)(x))
                        };
                    };
                };
                return (foldl(__dict_Foldable_6)(go)({
                    init: true, 
                    acc: Data_Monoid.mempty(__dict_Monoid_7)
                })(xs)).acc;
            };
        };
    };
};
var mconcat = function (__dict_Foldable_8) {
    return function (__dict_Monoid_9) {
        return foldl(__dict_Foldable_8)(Prelude["<>"](__dict_Monoid_9["__superclass_Prelude.Semigroup_0"]()))(Data_Monoid.mempty(__dict_Monoid_9));
    };
};
var product = function (__dict_Foldable_10) {
    return function (__dict_Semiring_11) {
        return foldl(__dict_Foldable_10)(Prelude["*"](__dict_Semiring_11))(Prelude.one(__dict_Semiring_11));
    };
};
var sum = function (__dict_Foldable_12) {
    return function (__dict_Semiring_13) {
        return foldl(__dict_Foldable_12)(Prelude["+"](__dict_Semiring_13))(Prelude.zero(__dict_Semiring_13));
    };
};
var foldableMultiplicative = new Foldable(function (__dict_Monoid_14) {
    return function (f) {
        return function (_224) {
            return f(_224);
        };
    };
}, function (f) {
    return function (z) {
        return function (_223) {
            return f(z)(_223);
        };
    };
}, function (f) {
    return function (z) {
        return function (_222) {
            return f(_222)(z);
        };
    };
});
var foldableMaybe = new Foldable(function (__dict_Monoid_15) {
    return function (f) {
        return function (_203) {
            if (_203 instanceof Data_Maybe.Nothing) {
                return Data_Monoid.mempty(__dict_Monoid_15);
            };
            if (_203 instanceof Data_Maybe.Just) {
                return f(_203.value0);
            };
            throw new Error("Failed pattern match at /home/travis/build/lewurm/geocaching-history/front-end/bower_components/purescript-foldable-traversable/src/Data/Foldable.purs line 51, column 1 - line 59, column 1: " + [ f.constructor.name, _203.constructor.name ]);
        };
    };
}, function (f) {
    return function (z) {
        return function (_202) {
            if (_202 instanceof Data_Maybe.Nothing) {
                return z;
            };
            if (_202 instanceof Data_Maybe.Just) {
                return f(z)(_202.value0);
            };
            throw new Error("Failed pattern match at /home/travis/build/lewurm/geocaching-history/front-end/bower_components/purescript-foldable-traversable/src/Data/Foldable.purs line 51, column 1 - line 59, column 1: " + [ f.constructor.name, z.constructor.name, _202.constructor.name ]);
        };
    };
}, function (f) {
    return function (z) {
        return function (_201) {
            if (_201 instanceof Data_Maybe.Nothing) {
                return z;
            };
            if (_201 instanceof Data_Maybe.Just) {
                return f(_201.value0)(z);
            };
            throw new Error("Failed pattern match at /home/travis/build/lewurm/geocaching-history/front-end/bower_components/purescript-foldable-traversable/src/Data/Foldable.purs line 51, column 1 - line 59, column 1: " + [ f.constructor.name, z.constructor.name, _201.constructor.name ]);
        };
    };
});
var foldableDual = new Foldable(function (__dict_Monoid_16) {
    return function (f) {
        return function (_215) {
            return f(_215);
        };
    };
}, function (f) {
    return function (z) {
        return function (_214) {
            return f(z)(_214);
        };
    };
}, function (f) {
    return function (z) {
        return function (_213) {
            return f(_213)(z);
        };
    };
});
var foldableDisj = new Foldable(function (__dict_Monoid_17) {
    return function (f) {
        return function (_218) {
            return f(_218);
        };
    };
}, function (f) {
    return function (z) {
        return function (_217) {
            return f(z)(_217);
        };
    };
}, function (f) {
    return function (z) {
        return function (_216) {
            return f(_216)(z);
        };
    };
});
var foldableConj = new Foldable(function (__dict_Monoid_18) {
    return function (f) {
        return function (_221) {
            return f(_221);
        };
    };
}, function (f) {
    return function (z) {
        return function (_220) {
            return f(z)(_220);
        };
    };
}, function (f) {
    return function (z) {
        return function (_219) {
            return f(_219)(z);
        };
    };
});
var foldableArray = new Foldable(function (__dict_Monoid_19) {
    return function (f) {
        return function (xs) {
            return foldr(foldableArray)(function (x) {
                return function (acc) {
                    return Prelude["<>"](__dict_Monoid_19["__superclass_Prelude.Semigroup_0"]())(f(x))(acc);
                };
            })(Data_Monoid.mempty(__dict_Monoid_19))(xs);
        };
    };
}, $foreign.foldlArray, $foreign.foldrArray);
var foldableAdditive = new Foldable(function (__dict_Monoid_20) {
    return function (f) {
        return function (_212) {
            return f(_212);
        };
    };
}, function (f) {
    return function (z) {
        return function (_211) {
            return f(z)(_211);
        };
    };
}, function (f) {
    return function (z) {
        return function (_210) {
            return f(_210)(z);
        };
    };
});
var foldMap = function (dict) {
    return dict.foldMap;
};
var foldableFirst = new Foldable(function (__dict_Monoid_21) {
    return function (f) {
        return function (_206) {
            return foldMap(foldableMaybe)(__dict_Monoid_21)(f)(_206);
        };
    };
}, function (f) {
    return function (z) {
        return function (_205) {
            return foldl(foldableMaybe)(f)(z)(_205);
        };
    };
}, function (f) {
    return function (z) {
        return function (_204) {
            return foldr(foldableMaybe)(f)(z)(_204);
        };
    };
});
var foldableLast = new Foldable(function (__dict_Monoid_22) {
    return function (f) {
        return function (_209) {
            return foldMap(foldableMaybe)(__dict_Monoid_22)(f)(_209);
        };
    };
}, function (f) {
    return function (z) {
        return function (_208) {
            return foldl(foldableMaybe)(f)(z)(_208);
        };
    };
}, function (f) {
    return function (z) {
        return function (_207) {
            return foldr(foldableMaybe)(f)(z)(_207);
        };
    };
});
var fold = function (__dict_Foldable_23) {
    return function (__dict_Monoid_24) {
        return foldMap(__dict_Foldable_23)(__dict_Monoid_24)(Prelude.id(Prelude.categoryFn));
    };
};
var find = function (__dict_Foldable_25) {
    return function (p) {
        return foldl(__dict_Foldable_25)(function (r) {
            return function (x) {
                var _515 = p(x);
                if (_515) {
                    return new Data_Maybe.Just(x);
                };
                if (!_515) {
                    return r;
                };
                throw new Error("Failed pattern match at /home/travis/build/lewurm/geocaching-history/front-end/bower_components/purescript-foldable-traversable/src/Data/Foldable.purs line 181, column 1 - line 182, column 1: " + [ _515.constructor.name ]);
            };
        })(Data_Maybe.Nothing.value);
    };
};
var any = function (__dict_Foldable_26) {
    return function (__dict_BooleanAlgebra_27) {
        return function (p) {
            return Prelude["<<<"](Prelude.semigroupoidFn)(Data_Monoid_Disj.runDisj)(foldMap(__dict_Foldable_26)(Data_Monoid_Disj.monoidDisj(__dict_BooleanAlgebra_27))(Prelude["<<<"](Prelude.semigroupoidFn)(Data_Monoid_Disj.Disj)(p)));
        };
    };
};
var elem = function (__dict_Foldable_28) {
    return function (__dict_Eq_29) {
        return Prelude["<<<"](Prelude.semigroupoidFn)(any(__dict_Foldable_28)(Prelude.booleanAlgebraBoolean))(Prelude["=="](__dict_Eq_29));
    };
};
var notElem = function (__dict_Foldable_30) {
    return function (__dict_Eq_31) {
        return function (x) {
            return Prelude["<<<"](Prelude.semigroupoidFn)(Prelude.not(Prelude.booleanAlgebraBoolean))(elem(__dict_Foldable_30)(__dict_Eq_31)(x));
        };
    };
};
var or = function (__dict_Foldable_32) {
    return function (__dict_BooleanAlgebra_33) {
        return any(__dict_Foldable_32)(__dict_BooleanAlgebra_33)(Prelude.id(Prelude.categoryFn));
    };
};
var all = function (__dict_Foldable_34) {
    return function (__dict_BooleanAlgebra_35) {
        return function (p) {
            return Prelude["<<<"](Prelude.semigroupoidFn)(Data_Monoid_Conj.runConj)(foldMap(__dict_Foldable_34)(Data_Monoid_Conj.monoidConj(__dict_BooleanAlgebra_35))(Prelude["<<<"](Prelude.semigroupoidFn)(Data_Monoid_Conj.Conj)(p)));
        };
    };
};
var and = function (__dict_Foldable_36) {
    return function (__dict_BooleanAlgebra_37) {
        return all(__dict_Foldable_36)(__dict_BooleanAlgebra_37)(Prelude.id(Prelude.categoryFn));
    };
};
module.exports = {
    Foldable: Foldable, 
    find: find, 
    notElem: notElem, 
    elem: elem, 
    product: product, 
    sum: sum, 
    all: all, 
    any: any, 
    or: or, 
    and: and, 
    intercalate: intercalate, 
    mconcat: mconcat, 
    sequence_: sequence_, 
    for_: for_, 
    traverse_: traverse_, 
    fold: fold, 
    foldMap: foldMap, 
    foldl: foldl, 
    foldr: foldr, 
    foldableArray: foldableArray, 
    foldableMaybe: foldableMaybe, 
    foldableFirst: foldableFirst, 
    foldableLast: foldableLast, 
    foldableAdditive: foldableAdditive, 
    foldableDual: foldableDual, 
    foldableDisj: foldableDisj, 
    foldableConj: foldableConj, 
    foldableMultiplicative: foldableMultiplicative
};
