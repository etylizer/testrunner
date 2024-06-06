-module(custom_67).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec maps_fold_4_3_neg(#{atom() =>
                              {b, binary()} |
                              {i, integer()} |
                              {a, atom()}}) -> [binary()] |
                                               [integer()] |
                                               [atom()].
maps_fold_4_3_neg(M) ->
    maps:fold(fun (_K, {i, I}, Acc) -> [I | Acc];
                  (_K, {b, B}, Acc) -> [B | Acc];
                  (_K, {a, A}, Acc) -> [A | Acc]
              end,
              [],
              M).
