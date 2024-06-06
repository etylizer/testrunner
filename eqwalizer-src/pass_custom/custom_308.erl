-module(custom_308).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-type a_n_map() :: #{atom() => number()}.
-spec sum_numbers1(a_n_map()) -> number().
sum_numbers1(M) ->
    maps:fold(fun (_Atom, Num, Sum) -> Num + Sum end, 0, M).
