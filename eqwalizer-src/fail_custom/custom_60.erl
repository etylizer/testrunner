-module(custom_60).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec maps_fold_4_neg(#{atom => atom()}) -> atom().
maps_fold_4_neg(M) ->
    maps:fold(fun (_K, A, _Acc) -> A end, [], M).
