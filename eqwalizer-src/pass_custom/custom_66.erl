-module(custom_66).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec maps_fold_4_2(#{atom() =>
                          {b, binary()} |
                          {i, integer()} |
                          {a, atom()}}) -> #{atom() =>
                                                 binary() | integer() | atom()}.
maps_fold_4_2(M) ->
    maps:fold(fun (K, {i, I}, Acc) -> maps:put(K, I, Acc);
                  (K, {b, B}, Acc) -> maps:put(K, B, Acc);
                  (K, {a, A}, Acc) -> maps:put(K, A, Acc)
              end,
              #{},
              M).
