// Generated by psc-bundle 0.11.6
var PS = {};
(function(exports) {
    "use strict";

  exports.log = function (s) {
    return function () {
      console.log(s);
      return {};
    };
  };
})(PS["Control.Monad.Eff.Console"] = PS["Control.Monad.Eff.Console"] || {});
(function(exports) {
    "use strict";

  exports.showNumberImpl = function (n) {
    var str = n.toString();
    return isNaN(str + ".0") ? str : str + ".0";
  };
})(PS["Data.Show"] = PS["Data.Show"] || {});
(function(exports) {
  // Generated by purs version 0.11.6
  "use strict";
  var $foreign = PS["Data.Show"];     
  var Show = function (show) {
      this.show = show;
  };                                                 
  var showNumber = new Show($foreign.showNumberImpl);
  var show = function (dict) {
      return dict.show;
  };
  exports["Show"] = Show;
  exports["show"] = show;
  exports["showNumber"] = showNumber;
})(PS["Data.Show"] = PS["Data.Show"] || {});
(function(exports) {
  // Generated by purs version 0.11.6
  "use strict";
  var $foreign = PS["Control.Monad.Eff.Console"];
  var Control_Monad_Eff = PS["Control.Monad.Eff"];
  var Data_Show = PS["Data.Show"];
  var Data_Unit = PS["Data.Unit"];
  exports["log"] = $foreign.log;
})(PS["Control.Monad.Eff.Console"] = PS["Control.Monad.Eff.Console"] || {});
(function(exports) {
  // Generated by purs version 0.11.6
  "use strict";
  var Control_Applicative = PS["Control.Applicative"];
  var Control_Plus = PS["Control.Plus"];
  var Data_Array = PS["Data.Array"];
  var Data_Eq = PS["Data.Eq"];
  var Data_EuclideanRing = PS["Data.EuclideanRing"];
  var Data_Function = PS["Data.Function"];
  var Data_Functor = PS["Data.Functor"];
  var Data_HeytingAlgebra = PS["Data.HeytingAlgebra"];
  var Data_List = PS["Data.List"];
  var Data_List_Partial = PS["Data.List.Partial"];
  var Data_List_Types = PS["Data.List.Types"];
  var Data_Maybe = PS["Data.Maybe"];
  var Data_Semigroup = PS["Data.Semigroup"];
  var Data_Semiring = PS["Data.Semiring"];
  var Partial_Unsafe = PS["Partial.Unsafe"];
  var Prelude = PS["Prelude"];        
  var sum = function (x) {
      return function (y) {
          return x + y;
      };
  };                                                           
  var _add = function (x) {
      return function (y) {
          var output = x + y;
          return output;
      };
  };
  exports["_add"] = _add;
  exports["sum"] = sum;
})(PS["Data.AddressBook"] = PS["Data.AddressBook"] || {});
(function(exports) {
    "use strict";              

  exports.pi = Math.PI;
})(PS["Math"] = PS["Math"] || {});
(function(exports) {
  // Generated by purs version 0.11.6
  "use strict";
  var $foreign = PS["Math"];
  exports["pi"] = $foreign.pi;
})(PS["Math"] = PS["Math"] || {});
(function(exports) {
  // Generated by purs version 0.11.6
  "use strict";
  var Control_Bind = PS["Control.Bind"];
  var Control_Monad_Eff = PS["Control.Monad.Eff"];
  var Control_Monad_Eff_Console = PS["Control.Monad.Eff.Console"];
  var Data_AddressBook = PS["Data.AddressBook"];
  var Data_List = PS["Data.List"];
  var Data_Semigroup = PS["Data.Semigroup"];
  var Data_Semiring = PS["Data.Semiring"];
  var Data_Show = PS["Data.Show"];
  var $$Math = PS["Math"];
  var Prelude = PS["Prelude"];        
  var radius = 3.0;
  var circleArea = function (r) {
      return $$Math.pi * r * r;
  };
  var main = function __do() {
      Control_Monad_Eff_Console.log("Area of circle with radius " + (Data_Show.show(Data_Show.showNumber)(radius) + (" is : " + Data_Show.show(Data_Show.showNumber)(circleArea(radius)))))();
      Control_Monad_Eff_Console.log("Addition of " + (Data_Show.show(Data_Show.showNumber)(radius + 1.0) + (" and " + (Data_Show.show(Data_Show.showNumber)(radius) + (" is : " + Data_Show.show(Data_Show.showNumber)(Data_AddressBook._add(radius + 1.0)(radius)))))))();
      return Control_Monad_Eff_Console.log("Sum of " + (Data_Show.show(Data_Show.showNumber)(radius + 1.0) + (" and " + (Data_Show.show(Data_Show.showNumber)(radius) + (" is : " + Data_Show.show(Data_Show.showNumber)(Data_AddressBook.sum(radius + 1.0)(radius)))))))();
  };
  exports["circleArea"] = circleArea;
  exports["main"] = main;
  exports["radius"] = radius;
})(PS["Main"] = PS["Main"] || {});
PS["Main"].main();
