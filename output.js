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

  exports.showIntImpl = function (n) {
    return n.toString();
  };
})(PS["Data.Show"] = PS["Data.Show"] || {});
(function(exports) {
  // Generated by purs version 0.11.6
  "use strict";
  var $foreign = PS["Data.Show"];     
  var Show = function (show) {
      this.show = show;
  };                                                 
  var showInt = new Show($foreign.showIntImpl);
  var show = function (dict) {
      return dict.show;
  };
  exports["Show"] = Show;
  exports["show"] = show;
  exports["showInt"] = showInt;
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
  var Control_Monad_Eff_Console = PS["Control.Monad.Eff.Console"];
  var Data_Ring = PS["Data.Ring"];
  var Data_Semigroup = PS["Data.Semigroup"];
  var Data_Show = PS["Data.Show"];
  var Prelude = PS["Prelude"];        
  var iterate = function ($copy_f) {
      return function ($copy_v) {
          return function ($copy_x) {
              var $tco_var_f = $copy_f;
              var $tco_var_v = $copy_v;
              var $tco_done = false;
              var $tco_result;
              function $tco_loop(f, v, x) {
                  if (v === 0) {
                      $tco_done = true;
                      return f(x);
                  };
                  $tco_var_f = f;
                  $tco_var_v = v - 1 | 0;
                  $copy_x = f(x);
                  return;
              };
              while (!$tco_done) {
                  $tco_result = $tco_loop($tco_var_f, $tco_var_v, $copy_x);
              };
              return $tco_result;
          };
      };
  };
  var hello = 10;
  var main = Control_Monad_Eff_Console.log("Hello xyz!..^_^ " + Data_Show.show(Data_Show.showInt)(hello));
  exports["hello"] = hello;
  exports["iterate"] = iterate;
  exports["main"] = main;
})(PS["Main"] = PS["Main"] || {});
PS["Main"].main();
