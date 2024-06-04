-module(unlimited_refinement_2).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-type map1() :: #{k11 := term(), k12 := term(),
                  k13 := term()}.
-type map2() :: #{k21 := term(), k22 := term(),
                  k23 := term()}.
-type map3() :: #{k31 := term(), k32 := term(),
                  k33 := term()}.
-type map4() :: #{k41 := term(), k42 := term(),
                  k43 := term()}.
-type map5() :: #{k51 := term(), k52 := term(),
                  k53 := term()}.
-type map6() :: #{k61 := term(), k62 := term(),
                  k63 := term()}.
-type map7() :: #{k71 := term(), k72 := term(),
                  k73 := term()}.
-type map8() :: #{k81 := term(), k82 := term(),
                  k83 := term()}.
-type map9() :: #{k91 := term(), k92 := term(),
                  k93 := term()}.
-type or_map() :: #{ty := ok1, data := map1()} |
                  #{ty := ok2, data := map2()} |
                  #{ty := ok3, data := map3()} |
                  #{ty := ok4, data := map4()} |
                  #{ty := ok5, data := map5()} |
                  #{ty := ok6, data := map6()} |
                  #{ty := ok7, data := map7()} |
                  #{ty := ok8, data := map8()} |
                  #{ty := ok9, data := map9()}.
-spec is_special(integer()) -> boolean().
is_special(_N) -> false.
