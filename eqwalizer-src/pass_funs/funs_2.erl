-module(funs_2).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec map_const_pos2() -> [number()].
lmap(_F, _XS) -> [].
-spec lmap(fun((A) -> B), [A]) -> [B].
map_const_pos2() ->
    X = lmap(fun (_) -> 3 end, [a, a, a]),
    X.
