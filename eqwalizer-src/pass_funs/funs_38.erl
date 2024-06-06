-module(funs_38).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec named_2() -> [number()].
named_2() ->
    Res = lists:map(fun _Map(X) -> X + 1 end, [1, 2, 3]),
    Res.
