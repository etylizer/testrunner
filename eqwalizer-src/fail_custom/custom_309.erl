-module(custom_309).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-type a_n_map() :: #{atom() => number()}.
-spec sum_numbers2_neg(a_n_map()) -> number().
sum_numbers2_neg(M) ->
    maps:fold(fun (Atom, _Num, Sum) -> Atom + Sum end,
              0,
              M).
